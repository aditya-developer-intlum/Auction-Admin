<?php

namespace App\Http\Controllers;

use App\Membership;
use App\Transaction;
use App\User;
use Illuminate\Http\Request;
Use Carbon\Carbon;
use Illuminate\Auth\Middleware\Authorize;

class DeductCoinController extends Controller
{
    private $users;
    private $perPage=10;
    public function index(Request $request)
    {
       $this->authorize('coinDeductView',Transaction::class);
        $this->updatePagination($request)
              ->getUsers($request)
             ->dateFilter($request)
             ->SearchTransaction($request);      
        $data=[ 
           'membership'          => $this->membership,
           'users'               => $this->users,
           'allTimeTotalUsers'   => $this->allTimeTotalUsers,
           'allTimeTotalCoins'   => $this->allTimeTotalCoins,
           'thisMonthTotalUsers' => $this->thisMonthTotalUsers,
           'thisMonthTotalCoins' => $this->thisMonthTotalCoins,
           'transactions'        => $this->transactions,

       ];
        return view('coinDeduct.deductMember',$data);
    }
    private function getUsers(Request $request)
    {
      if($request->membership!=null && $request->username!=null){
      $this->authorize('coinDeductSerachUser',Transaction::class);  
          $this->users=User::where([['membership_id',$request->membership],
                                    ['user_name',$request->username],
                                    ['is_active',1],
                                    ['role_id',3]
                                    ])
                             ->get();   
          

      }elseif($request->membership!=null){
      $this->authorize('coinDeductSerachUser',Transaction::class);  
          $this->users=User::where([
                                   ['membership_id',$request->membership],
                                   ['is_active',1],
                                   ['role_id',3]
                                    ])
                             ->get();

      }elseif($request->username!=null){
      $this->authorize('coinDeductSerachUser',Transaction::class);  
          $this->users=User::where([
                                   ['user_name',$request->username],
                                   ['is_active',1],
                                   ['role_id',3]
                                   ])
                             ->get();
 
      }else{
      }
      return $this;
      
    }

    public function deduct(Request $request)
    {
      $this->authorize('coinDeductSendCoin',Transaction::class) ; 
      if($request->deduct_coins!=null && count($request->all())>2 ){
          $a=0;
        foreach($request->all() as $key=>$value){
            if(gettype($key)=="integer"){
                $this->users=User::with('wallet','transactions')->find($value);
                $lastStatus = $this->users->wallet->coins;
                $this->users->wallet->decrement('coins',$request->deduct_coins);
                $this->users->transactions()->create([
                    'user_id' => $this->users->id,
                    'transaction_id' => transactionId('admin_coin_deduction'),
                    'type' => 17,
                    'name' => $this->users->user_name,
                    'description' => 'Coin Deduct',
                    'coins'   => $request->deduct_coins,
                    'last_amount_status' => $lastStatus,
                    'trans'   => "DR",  
            ]);
           $a++;  
           }
        }
        return back()->with(['success'=>'You are Succesfully Deduct Coins','total_deduct_users'=>$a]);
      }else{
          if($request->deduct_coins==null){
              $data=[];
              $data['error']="Please Enter Coins Amount";                              
            }elseif(count($request->all())<3){
                $data['coins']=$request->deduct_coins;
                $data['error']="Please Select atleast 1 User";
            }
            return back()->withInput()->with($data);

      }
           
    }
    public function __get($props)
    {
        switch ($props) {
            case 'membership':
                return Membership::all();
                break;
            case 'allTimeTotalUsers':
                return $this->allTimeTotalUsers=Transaction::where([['description','Coin Deduct'],['trans','DR']])->count();
                break;
            case 'allTimeTotalCoins':
                return $this->allTimeTotalCoins=Transaction::where([['description','Coin Deduct'],['trans','DR']])->sum('coins');
                break;
            case 'thisMonthTotalUsers': 
                return $this->thisMonthTotalUsers=Transaction::where([['description','Coin Deduct'],['trans','DR']])
                                                       ->whereBetween('created_at',[Carbon::now()->startOfMonth(),Carbon::now()->endOfMonth()])
                                                       ->count();
                break;
            case 'thisMonthTotalCoins': 
                return  $this->thisMonthTotalCoins=Transaction::where([['description','Coin Deduct'],['trans','DR']])
                                                        ->whereBetween('created_at',[Carbon::now()->startOfMonth(),Carbon::now()->endOfMonth()])
                                                        ->sum('coins');
                                       
                break;
            case 'transactions':
                return $this->transactions=Transaction::with('user','user.wallet')
                                                         ->where([['description','Coin Deduct'],['trans','DR']])
                                                         ->paginate($this->perPage);
                                                        
                break;                    
            
            default:
                # code...
                break;
        }
    }
    public function csv_converter(Request $request)
    {
        $this->authorize('coinDeductTransactionExport',\App\Transaction::class);
        $start=($request->startDate==null) ? null :Carbon::parse($request->startDate)->format('yy-m-d');
        $end=($request->endDate==null) ? null :Carbon::parse($request->endDate)->format('yy-m-d');

        if(($start==null) && ($end==null) ){
            $this->transactions=Transaction::with('user','user.wallet')
                                            ->where([['description','Coin Deduct'],['trans','DR']])
                                            ->orderBy('created_at','DESC')
                                            ->get();       
         }elseif($start==$end){
            $this->transactions=Transaction::with('user','user.wallet')
                                            ->where([['description','Coin Deduct'],['trans','DR']])
                                            ->whereDate('created_at',$start)
                                            ->orderBy('created_at','DESC')
                                            ->get();  
        }elseif($start!=$end){
            $this->transactions=Transaction::with('user','user.wallet')
                                            ->where([['description','Coin Deduct'],['trans','DR']])
                                            ->whereBetween('created_at',[$start,$end])
                                            ->orderBy('created_at','DESC')
                                            ->get();  
        }
        $list=[];
        $list[]=['Sr No','Transaction ID','Date','Signup Date','Member Name','Email Address','Mobile Number','Member Plan',
                 'Total Coin Spent','Before Coin Balance','Coins Deduction','Aftert Coin Balance' ];
        foreach($this->transactions as $key=>$trans){
            $list[]=[++$key,$trans->id,$trans->created_at->format("d-m-Y"),$trans->user->created_at->format("d-m-Y"),$trans->user->name??"",
                     $trans->user->email??"",$trans->user->mobile_number??"",$trans->user->membership->name,$trans->user->spent_coins??0,
                     $trans->user->wallet->coins + $trans->coins,$trans->coins,$trans->user->wallet->coins

                    ];

        }  
        header('Content-Type: text/csv');
        header('Content-Disposition: attachment; filename="TransactionDeduct.csv"');
        header('Cache-Control: max-age=0');
        header('Cache-Control: max-age=1');
        echo $this->array2csv($list);
        exit();                                       
    }
    public function array2csv($data, $delimiter = ',', $enclosure = '"', $escape_char = "\\")
    {
        $f = fopen('php://memory', 'r+');
        foreach ($data as $item) {
            fputcsv($f, $item, $delimiter, $enclosure, $escape_char);
        }
        rewind($f);
        return stream_get_contents($f);
    }
    private function dateFilter(Request $request)
    {
        if($request->has('start')){
            $this->authorize('coinDeductTransactionFilter',Transaction::class);
           $start=Carbon::parse($request->start)->format('yy-m-d');
           $end=Carbon::parse($request->end)->format('yy-m-d');
           if($start==$end){
               $this->transactions=Transaction::with('user','user.wallet')
                                               ->whereDate('created_at',$start)
                                               ->orderBy('created_at','DESC')
                                               ->paginate($this->perPage);
           }else{
               $this->transactions=Transaction::with('user','user.wallet')
                                               ->where([['description','Coin Deduct'],['trans','DR']])
                                               ->whereBetween('created_at',[$start,$end])
                                               ->orderBy('created_at','DESC')
                                               ->paginate($this->perPage);
           }
        }
        return $this;
    }
    private function updatePagination(Request $request)
    {
        if($request->has('perPage')){
            $this->perPage=$request->perPage;
        }
        return $this;
    }
    private function SearchTransaction(Request $request)
    {
        if($request->has('transactionSearch')){
            $this->authorize('coinDeductTransactionSearch',Transaction::class);
          $this->transactions=Transaction::with('user','user.wallet')
                                          ->where([['description','Coin Deduct'],['trans','DR']])  
                                          ->where(function($query) use($request)
                                           { 
                                               $query->where('id',$request->transactionSearch)
                                                     ->orWhere('user_id',$request->transactionSearch);                                  
                                           })
                                          ->orderBy('created_at','DESC')
                                          ->paginate($this->perPage);
        }
       
    }
}
