<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use Carbon\Carbon;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Auth;

class MemberController extends Controller
{
	private $perPage = 10;
	private $users;
	/**
     * All memberes.
     *
     * @param  Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response 
     */
    public function index(Request $request)
    {
      $this->updatePagination($request)->getUsers($request);        
      $data = [ 
        'users' => $this->users,
        'total_member' => $this->totalMember,
        'uplink2' => $this->uplink2,
        'uplink1' => $this->uplink1,
        'new' => $this->new,
        'allNew' => $this->allNew,
        'today' => $this->today,
        'yesterday' => $this->yesterday,
        'week' => $this->week,
        'month' => $this->month
      ];
    	return view("members.all",$data);
    }
    public function create()
    {
      $this->authorize('createMember',User::class);
      return view('members.add');
    }
    public function store(Request $request)
    {
     $validator=Validator::make($request->all(),$this->rules());
      if ($validator->fails()) {
          return redirect()
                     ->back()
                      ->withErrors($validator)
                     ->withInput();
      }
      $this->users = new User;
      $this->props($request)
            ->uploadImage($request)
            ->save_data($request);
      return redirect()->route('member.all')->with('success','You are Succesfully created a New Memeber');     


    }
    public function show(User $member)
    { 
      $this->authorize('viewMemeber',User::class);
      return view('members.view',compact('member'));
    }
    public function edit(User $member)
    { 
      $this->authorize('editMemeber',User::class);

      return view('members.edit',compact('member'));
    }
    public function update(Request $request,User $user)
    {
      $this->users=$user;
      $validator=validator::make($request->all(),$this->updateRules($request));
        if ($validator->fails()) {
          return redirect()
                     ->back()
                      ->withErrors($validator)
                     ->withInput();
         }
         $this->updateProps($request)
         ->uploadImage($request)
         ->save_data($request);
         return redirect()->route('member.all')->with('update','You are Succesfully updated  Memeber');            
    }
    public function destroy($id)
    {
      $this->authorize('deleteMemeber',User::class);
      $this->users=User::find($id);
      $this->users->delete();
      return back()->with('delete',"You  are succsfully deleted");
    }
    
    private function rules()
    {
      return [
        'name'=>'required',
        'email'=>'required|unique:users,email',
        'mobile'=>'required|unique:users,mobile_number|min:10"max:13',
        'user_name'=>'required|unique:users,user_name',
        'password'=>'required|same:confirm_password|min:6',
        'confirm_password'=>'required',
      ];
    }
    private function updateRules(Request $request)
    {
      if(!empty($request->password)){
        return [
          'name'=>'required',
          'email'=>'required',
          'mobile'=>'required|min:10"max:13',
          'user_name'=>'required',
          'password'=>'required|same:confirm_password|min:6',
          'confirm_password'=>'required',
        ];
      }
      else{
        return [
          'name'=>'required',
          'email'=>'required|',
          'mobile'=>'required|min:10"max:13',
          'user_name'=>'required',
        ];
      }
    }
    private function props(Request $request)
    {
      $this->users->name=$request->name;
      $this->users->email=$request->email;
      $this->users->mobile_number=$request->mobile;
      $this->users->user_name=$request->user_name;
      $this->users->password=Hash::make($request->password);
      return $this;
    }
    private function updateProps(Request $request)
    {
      $this->users->name=$request->name;
      $this->users->email=$request->email;
      $this->users->mobile_number=$request->mobile;
      $this->users->user_name=$request->user_name;
      if(!empty($request->password)){
        $this->users->password=Hash::make($request->password);
      }
      return $this;
    }
    private function uploadImage(Request $request)
    { 

       if($request->has('image')&& $request->image){
        $this->users->avatar=$request->image->store("members","public");  
       }
       return $this;
    }
    private function save_data(Request $request)
    {
      $this->users->save();
    }

    /**
     * Update Pagination Per Page.
     *
     * @param  Illuminate\Http\Request  $request
     * @return $this 
     */
   	private function updatePagination(Request $request)
   	{
   		if ($request->has('perPage')) {
    		$this->perPage = $request->perPage;
    	}
   		return $this;
    }

     
   	/**
     * Get All Members.
     *
     * @return $this
     */
   	private function getUsers(Request $request)
   	{ 
      
      if ($request->has('search') && !empty($request->search)) {
         $this->search_user($request);
           
      }elseif($request->start && $request->end){
        $this->date_filter($request);
      }
      else{
        $this->authorize('viewMemeber',User::class);
        switch ($request->segment(3)) {
          case 'basic':         
            $this->users = User::with('wallet','playAuction','membership','transactions')
            ->where('role_id',3)->where('membership_id',2)->where('is_active',true)
            ->paginate($this->perPage);
            break;
          case 'advance':
            $this->users = User::with('wallet','playAuction','membership','transactions')
            ->where('role_id',3)->where('membership_id',3)->where('is_active',true)
            ->paginate($this->perPage);
              break; 
          case 'premium':
            $this->users = User::with('wallet','playAuction','membership','transactions')
            ->where('role_id',3)->where('membership_id',4)->where('is_active',true)
            ->paginate($this->perPage);
              break; 
          case 'premium_plus':
            $this->users = User::with('wallet','playAuction','membership','transactions')
            ->where('role_id',3)->where('membership_id',5)->where('is_active',true)
            ->paginate($this->perPage);
              break; 
          case "suspended":            
             $this->users=User::with('wallet','playAuction','membership','transactions')->where('is_active',false)->whereRoleId(3)->paginate($this->paginate);
              break;
          case "deleted":           
           $this->users=User::with('wallet','playAuction','membership','transactions')->onlyTrashed()->paginate($this->perPage);
            break;                            
          default:
          $this->users = User::with('wallet','playAuction','membership','transactions')
          ->where('role_id',3)
          ->paginate($this->perPage);
        }
  
      }
   		

    	return $this;
   	}
    public function __get($prop)
    {
      switch ($prop) {
        case 'totalMember':
          return  User::where("role_id",3)->count();
          break;
        case 'uplink2':
          return  User::where("role_id",3)
          ->whereNotNull('uplink2')
          ->groupBy('uplink2')
          ->pluck('uplink2');
          break;
        case 'uplink1':
          return  User::where("role_id",3)
            ->whereNotNull('uplink1')
            ->groupBy('uplink1')
            ->pluck('uplink1');
          break;
        case 'new':
          return  $this->totalMember - ($this->uplink2->count() + (collect($this->uplink1)->diff(collect($this->uplink2)))->count());
          break;
        case 'allNew':
           return User::where("role_id",3)->whereNotIn('id',$this->uplink1)->count();
          break;
        case 'today':
          return User::where("role_id",3)->whereNotIn('id',$this->uplink1)->whereDate('created_at',today())->count();
          break;
        case 'yesterday':
          return User::where("role_id",3)->whereNotIn('id',$this->uplink1)->whereDate('created_at',Carbon::yesterday())->count();
          break;
        case 'week':
          return User::where("role_id",3)->whereNotIn('id',$this->uplink1)->whereBetween('created_at', [Carbon::now()->startOfWeek(), Carbon::now()->endOfWeek()])->count();
          break;
        case 'month':
          return User::where("role_id",3)->whereNotIn('id',$this->uplink1)->whereBetween('created_at', [Carbon::now()->startOfMonth(), Carbon::now()->endOfMonth()])->count();
          break;
        
        default:
          // code...
          break;
      }
    }
    public function status(User $user,$status)
    {
      $user->is_active = $status;
      $user->save();
      return back();
    }
    // public function destroy(User $user)
    // {
    //   // dd('hii');
    //   $user->delete();
    //   return back()->withSuccess("Member is deleted successfully");
    // }
  //   public function array2csv($data, $delimiter = ',', $enclosure = '"', $escape_char = "\\")
	// {
	//     $f = fopen('php://memory', 'r+');
	//     foreach ($data as $item) {
	//         fputcsv($f, $item, $delimiter, $enclosure, $escape_char);
	//     }
	//     rewind($f);
	//     return stream_get_contents($f);
  // }
     private function search_user(Request $request)
     {
      //  dump('searchMember'.$request->segment(3).'Member');
      // $this->authorize('searchMember'.$request->segment(3).'Member',User::class);
       switch ($request->segment(3)) {
         case 'basic':
          $this->users = User::with('wallet','playAuction','membership','transactions')->whereLike([
            'user_name',
            'name',
            'mobile_number',
            'email',
            'city',
            'country',
          ], $request->search)
          ->where('role_id',3)->where('is_active',true)->whereMembershipId(2)
          ->paginate($this->perPage);
             break;
         case 'advance':
          $this->users = User::with('wallet','playAuction','membership','transactions')->whereLike([
            'user_name',
            'name',
            'mobile_number',
            'email',
            'city',
            'country',
          ], $request->search)
          ->where('role_id',3)->where('is_active',true)->whereMembershipId(3)
          ->paginate($this->perPage);
          break;
          case 'premium':
            $this->users = User::with('wallet','playAuction','membership','transactions')->whereLike([
              'user_name',
              'name',
              'mobile_number',
              'email',
              'city',
              'country',
            ], $request->search)
            ->where('role_id',3)->where('is_active',true)->whereMembershipId(4)
            ->paginate($this->perPage);
             break;
            case 'premium_plus':
          $this->users = User::with('wallet','playAuction','membership','transactions')->whereLike([
            'user_name',
            'name',
            'mobile_number',
            'email',
            'city',
            'country',
          ], $request->search)
          ->where('role_id',3)->where('is_active',true)->whereMembershipId(4)
          ->paginate($this->perPage);
            break;
               case "suspended":
                $this->users=user::with('wallet','playAuction','membership','transactions')->whereLike([
                  'user_name',
                  'name',
                  'mobile_number',
                  'email',
                  'city',
                  'country'
                ],$request->search)->whereIsActive(false)->where('role_id',3)->paginate($this->perPage); 
              break;
            case 'deleted':
              $this->users=User::with('wallet','playAuction','membership','transactions')->onlyTrashed()->whereLike([
                'user_name',
                'name',
                'mobile_number',
                'city',
                'country'
              ],$request->search)->where('role_id',3)->paginate($this->perPage);
               break;
           
            default:
            $this->users = User::with('wallet','playAuction','membership','transactions')->whereLike([
            'user_name',
            'name',
            'mobile_number',
            'email',
            'city',
            'country',
          ], $request->search)
          ->where('role_id',3)
          ->where('is_active',true)
          ->paginate($this->perPage);
           
       }
     
     }
     private function date_filter(Request $request)
     {
      //$this->authorize("dateFilterMember".$request->segment(3)."Member",User::class);
      $start = Carbon::parse($request->start)->format('yy-m-d');
      $end = Carbon::parse($request->end)->format('yy-m-d');
      if($start==$end){
        switch ($request->segment(3)) {
          case 'basic':
         $this->users=  User::WhereDate('created_at',$start)->where('role_id',3)->whereMembershipId(2)->where('is_active',true)->paginate($this->perPage);        
          break;
          case 'advance':
            $this->users=  User::WhereDate('created_at',$start)->where('role_id',3)->whereMembershipId(3)->where('is_active',true)->paginate($this->perPage);        
           break;
           case 'premium':
            $this->users=  User::WhereDate('created_at',$start)->where('role_id',3)->whereMembershipId(4)->where('is_active',true)->paginate($this->perPage);        
           break;
           case 'premium_plus':
            $this->users=  User::WhereDate('created_at',$start)->where('role_id',3)->whereMembershipId(5)->where('is_active',true)->paginate($this->perPage);        
           break; 
           case 'suspended':
            $this->users=User::WhereDate('created_at',$start)->whereRoleId(3)->whereIsActive(false)->paginate($this->perPage);
           break;
           case 'deleted': 
            $this->users=User::WhereDate('created_at',$start)->whereRoleId(3)->onlyTrashed()->paginate($this->perPage);   
           break;     
          default:
          $this->users=  User::WhereDate('created_at',$start)->where('role_id',3)->where('is_active',true)->paginate($this->perPage);        
        }              
      }else{
            switch ($request->segment(3)) {
            case 'basic':
           $this->users=  User::WhereBetween('created_at',[$start,$end])->whereMembershipId(2)->where('role_id',3)->where('is_active',true)->paginate($this->perPage);        
            break;
            case 'advance':
              $this->users=  User::WhereBetween('created_at',[$start,$end])->whereMembershipId(3)->where('role_id',3)->where('is_active',true)->paginate($this->perPage);        
             break;
             case 'premium':            
              $this->users=  User::WhereBetween('created_at',[$start,$end])->whereMembershipId(4)->where('role_id',3)->where('is_active',true)->paginate($this->perPage);        
             break;
             case 'premium_plus':
              $this->users=  User::WhereBetween('created_at',[$start,$end])->whereMembershipId(5)->where('role_id',3)->where('is_active',true)->paginate($this->perPage);        
             break;
             case 'suspended':
              $this->users=  User::WhereBetween('created_at',[$start,$end])->whereRoleId(3)->whereIsActive(false)->paginate($this->perPage);    
             break;     
            case 'deleted':
              $this->users=User::WhereBetween('created_at',[$start,$end])->whereRoleId(3)->onlyTrashed()->paginate($this->perPage);
            break;
              default:
            $this->users=  User::WhereBetween('created_at',[$start,$end])->where('role_id',3)->where('is_active',true)->paginate($this->perPage);  
          }
     
     }
    }

      public function csv_converter(Request $request)
          {
           // $this->authorize("exportMember".$request->member."Member",User::class);
            switch ($request->member) {

              case 'basic':
                $this->users = User::with('membership','package','uplinkOne','uplinkTwo')->where('role_id',3)->where('is_active',true)->whereMembershipId(2)->get();
                break;
              case 'advance':
                $this->users = User::with('membership','package','uplinkOne','uplinkTwo')->where('role_id',3)->where('is_active',true)->whereMembershipId(3)->get();
                break;
              case 'premium':
                $this->users = User::with('membership','package','uplinkOne','uplinkTwo')->where('role_id',3)->where('is_active',true)->whereMembershipId(4)->get();
                break;
              case 'premium_plus':
                $this->users = User::with('membership','package','uplinkOne','uplinkTwo')->where('role_id',3)->where('is_active',true)->whereMembershipId(5)->get();
                break; 
              case 'suspended':
                $this->users = User::with('membership','package','uplinkOne','uplinkTwo')->where('role_id',3)->whereIsActive(false)->get();
                break; 
              case 'deleted':
               $this->users = User::with('membership','package','uplinkOne','uplinkTwo')->where('role_id',3)->onlyTrashed()->get();  
              break;
              default:
               $this->users = User::with('membership','package','uplinkOne','uplinkTwo')->where('role_id',3)->where('is_active',true)->get();
           
            break;
            }
            // return $this->users;
            $list[] = array('Id', 'User Name', 'Name','Email','Contact No.','Membership','Package','Up Level1',
            'Up Level2','Gender','Address','Addres2','Pincode','City','State','Country');
            foreach ($this->users as $user) {
              // return $user->uplink_one->name??"snfesk.jf";
            $list[] = array($user->id,$user->user_name??"",$user->name??"",$user->email??"",$user->mobile_number??"",$user->membership->name??""
            ,$user->package->name??"",$user->uplinkOne->user_name??"",$user->uplinkTwo->user_name??'',$user->gender??"",
            $user->address??"",$user->address2??"",$user->pincode??"",$user->state??"",$user->country??"");
         
              
          }
          // dd($list);
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
          // public function datewise_member(Request $request)
          // {
          //   $start = Carbon::parse($request->start)->format('yy-m-d');
          //   // dump($start);
          //   $end = Carbon::parse($request->end)->format('yy-m-d');
          //   // dump($end);
          // $user_filter=  User::WhereBetween('created_at',[$start,$end])->get(); 
          
          // }
  public function detail(User $member)
  {
    $downline1 = User::with('downlink')->where('uplink1',$member->id)->get();
    $downline2 = User::where('uplink2',$member->id)->get();
    return view("members.detail",compact('member','downline1','downline2'));
  }
  public function ajaxDetail(User $member)
  {
    return $member->load('downlink');
  }

 
}
