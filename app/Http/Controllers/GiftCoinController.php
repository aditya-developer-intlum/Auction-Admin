<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
Use App\Membership;
use App\Transaction;
Use App\User;
Use App\UserPermission;
use Carbon\Carbon;
use Illuminate\Auth\Middleware\Authorize;

class GiftCoinController extends Controller
{
    private $users;
    private $perPage=10;
    public function index(Request $request,Transaction $transaction)
    {    

        $this->authorize('view', Transaction::class);
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
            'transactions'        => $this->transactions
              ];
      return view('coinGift.giftMember',$data);       
    }
    private function getUsers(Request $request)
    {  
        if($request->membership!=null &&$request->username!=null){
            $this->users=User::with('membership','wallet')
                              ->Where('membership_id',$request->membership)
                              ->where('user_name','LIKE',"%".$request->username."%")
                              ->whereRoleId(3)
                              ->whereIsActive(true)
                              ->get();
        }elseif($request->membership!=null){
            $this->users=User::with('membership','wallet')
                              ->Where('membership_id',$request->membership)
                              ->whereRoleId(3)
                              ->whereIsActive(true)
                              ->get();
        }elseif($request->username!=null){
             $this->users=user::with('membership','wallet')
                              ->where('user_name','LIKE',"%".$request->username."%")
                              ->whereRoleId(3)
                              ->whereIsActive(true)
                              ->get();
        }else{
            // $this->users=User::with('membership','wallet')
            //                   ->whereRoleId(3)
            //                   ->whereIsActive(true)
            //                   ->get();
        }
        return $this;
    }
    public function __get($prop)
    {
        $data = Transaction::where([['description','Coin Gift'],['trans','CR']]);
        switch($prop){
            case "membership":
                return Membership::all();
                break;
            case "allTimeTotalCoins": 
                return $data->sum('coins');
                break;
            case "allTimeTotalUsers":
                return $data->count();  
                break;                   
            case "thisMonthTotalUsers":
                return $data->whereBetween('created_at',[Carbon::now()->startOfMonth(),Carbon::now()->endOfMonth()])
                                   ->count();
                break;
            case "thisMonthTotalCoins":
                return $data->whereBetween('created_at',[Carbon::now()->startOfMonth(),Carbon::now()->endOfMonth()])
                                   ->sum('coins');
                break;    
            case "transactions": 
                return Transaction::with('user')
                                   ->where([['description','Coin Gift'],['trans','CR']])
                                   ->paginate($this->perPage);
                break;                         
            default:
            break;    

        }
    }
    public function giftCoinSend(Request $request)
    { 
        $this->authorize('sendCoin',Transaction::class);
        if($request->send_coin!=null && count($request->all())>2 ){
            $a=0;   
             
            foreach($request->all() as $key=>$value){
                if(gettype($key)=="integer"){           
                    $this->users= User::with('wallet','transactions')->find($value);
                    $lastStatus = $this->users->wallet->coins;
                    $this->users->wallet->increment('coins',$request->send_coin);
                    $this->users->transactions()->create([
                            'transaction_id' => transactionId('admin_coin_gift'),
                            'type' => 16,
                            'user_id' => $this->users->id,
                            'name'    => $this->users->user_name,
                            'description' =>'Coin Gift',
                            'coins'   => $request->send_coin,
                            'last_amount_status' => $lastStatus,
                            'trans'   => "CR",  
                    ]);
                    $a++;  
                }
            } 
            $data=[];                    
            return back()->withInput()->with(['success'=>'You are Succesfully Provide Gift-Coins ','total_gift_user'=>$a]);
        }else{
            $data=[];
            if($request->send_coin==null){
                $data['error']="Please Enter Coins Amount";                              
            }elseif(count($request->all())<3){
                $data['coins']=$request->send_coin;
                $data['error']="Please Select atleast 1 User";
            }
            return back()->withInput()->with($data);
        }
    }
    public function csvConverter(Request $request)
    {
        $this->authorize('transactionExport',Transaction::class);
        $start=($request->startDate==null) ? null:Carbon::parse($request->startDate)->format('yy-m-d');
        $end=($request->endDate==null) ? null:Carbon::parse($request->endDate)->format('yy-m-d');
        if(($start==null)&&($end==null)){
            $this->transactions=Transaction::with('user','user.wallet')
                                            ->where([['description','Coin Gift'],['trans','CR']])
                                            ->orderBy('created_at',"DESC")
                                            ->get();
        }
        elseif($start==$end){
            $this->transactions=Transaction::with('user','user.wallet')
                                            ->whereDate('created_at',$start) 
                                            ->where([['description','Coin Gift'],['trans','CR']])
                                            ->orderBy('created_at',"DESC")
                                            ->get();
        }elseif($start!=$end){
            $this->transactions=Transaction::with('user','user.wallet')
                                            ->whereBetween('created_at',[$start,$end])
                                            ->where([['description','Coin Gift'],['trans','CR']])
                                            ->orderBy('created_at',"DESC")
                                            ->get();
        }            
       $list=[];
       $list[]=[ 'Sr No.','Date','Transaction ID','Signup Date','Member ID','Member Name','Email Address',
       'Mobile Number','Member Plan','Total Coin Spent','Before Coin Balance','Coin Gift','Aftert Coin Balance'];
       foreach($this->transactions as $key=>$trans){
           $list[]=[++$key,$trans->created_at->format("d-m-Y"),$trans->id,$trans->user->created_at->format("d-m-Y"),$trans->user->membership_id,
                    $trans->user->name??"",$trans->user->email??"",$trans->user->mobile_number,$trans->user->membership->name??"",
                    $trans->user->spent_coins,$trans->user->wallet->coins-$trans->coins,$trans->coins??"",$trans->user->wallet->coins??0
                   ];
       }
       header('Content-Type: text/csv');
       header('Content-Disposition: attachment; filename="report.csv"');
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
        $this->authorize('transactionFilter',Transaction::class);       
        $start = Carbon::parse($request->start)->format('yy-m-d');
        $end = Carbon::parse($request->end)->format('yy-m-d');
        if($request->start==$request->end){
           $this->transactions=Transaction::with('user','user.wallet')
                                           ->whereDate('created_at',$start)
                                           ->where([['description','Coin Gift'],['trans','CR']])
                                           ->orderBy('created_at','DESC')
                                           ->paginate($this->perPage);
        }else{
           $this->transactions=Transaction::with('user','user.wallet')
                                           ->whereBetween('created_at',[$start,$end])
                                            ->where([['description','Coin Gift'],['trans','CR']])
                                           ->orderBy('created_at','DESC')
                                           ->paginate($this->perPage);
        }

       } else{

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
            $this->authorize('transactionSearch',Transaction::class);
          $this->transactions=Transaction::with('user','user.wallet')
                                          ->where([['description','Coin Gift'],['trans','CR']])
                                          ->where(function($query) use($request)
                                           { 
                                               $query->where('id',$request->transactionSearch)->orWhere('user_id',$request->transactionSearch);                                  
                                           })
                                          ->orderBy('created_at','DESC')
                                          ->paginate($this->perPage);
        }
       
    }

}