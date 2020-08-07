<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Permission;
use App\UserPermission;
use App\User;

class PermissionController extends Controller
{
    private $permission;
    public function index($id)
    {  
      $this->authorize('subAdminPermission',User::class);
       $data=[
           'user_id'                    =>$id,
           'coinGiftPermission'         => $this->coin_gift,
           'coinGiftPermissionFirst'    =>$this->coin_gift_first,
           'coinDeductPermission'       => $this->coin_deduct,
           'coinDeductPermissionFirst'  =>$this->coin_deduct_first,
           'subAdminPermissionFirst'    =>$this->sub_admin_first,
           'subAdminPermission'         =>$this->sub_admin,
           'allMemberPermissionFirst'   =>$this->all_member_first,
           'allMemberPermission'        =>$this->all_member,
           'basicMemberPermissionFirst' =>$this->basic_member_first,
           'basicMemberPermission'      =>$this->basic_member,
           'advanceMemberPermissionFirst' =>$this->advance_member_first,
           'advanceMemberPermission'      =>$this->advance_member,
           'suspendedMemberPermissionFirst' =>$this->suspended_member_first,
           'suspendedMemberPermission'      =>$this->suspended_member,
           'deletedMemberPermissionFirst' =>$this->deleted_member_first,
           'deletedMemberPermission'      =>$this->deleted_member,   
           'memberPermissionFirst'        =>$this->member_first,
           'memberPermissiion'            =>$this->member,
           'membershipPackagePermissionFirst'=>$this->membership_package_first,      
           'membershipPackagePermission'=>$this->membership_package,   
           'coinPackagePermissionFirst'=>$this->coin_package_first,      
           'coinPackagePermission'=>$this->coin_package,   
           'auctionClaimPemissionFirst'=>$this->auction_claim_first,      
           'auctionClaimPermission'=>$this->auction_claim,   
           'auctionClaimPendingPemissionFirst'=>$this->auction_claim_pending_first,      
           'auctionClaimPendingPemission'=>$this->auction_claim_pending,
           'auctionClaimSettledPemissionFirst'=>$this->auction_claim_settled_first,
           'auctionClaimSettledPemission'=>$this->auction_claim_settled,     
           'defaultNotificationPemissionFirst'   => $this->default_notification_first,     
           'defaultNotificationPemission'   => $this->default_notification,
           'segmentedNotificationPemissionFirst'   => $this->segmented_notification_first,     
           'segmentedNotificationPemission'   => $this->segmented_notification,    
           'advertisementPemissionFirst'   => $this->advertisement_first,    
           'advertisementPemission'   => $this->advertisement,     
       ]; 
       
        return view('permission.index',$data);
    }
    public function __get($props)
    {
        switch($props){
            case 'coin_gift':
               return Permission::where('identify','Coin Gift')->get();   
               break;  
            case 'coin_gift_first':
                return Permission::where('identify','Coin Gift')->first();   
                break; 
            case "coin_deduct":
               return Permission::where('identify','Coin Deduct')->get();
               break; 
            case "coin_deduct_first":
                return Permission::where('identify','Coin Deduct')->first();
                break;
            case "sub_admin":
                return Permission::where('identify','SubAdmin')->get();
                break;   
            case "sub_admin_first":
                return Permission::where('identify','SubAdmin')->first();
                break; 
            case "all_member_first":
                return Permission::where('identify','All Member')->first();
                break;    
            case "all_member":
                return Permission::where('identify','All Member')->get();
                break; 
            case "basic_member_first":
                return Permission::where('identify','Basic Member')->first();
                break;    
            case "basic_member":
                return Permission::where('identify','Basic Member')->get();
                break; 
            case "advance_member_first":
                return Permission::where('identify','Advance Member')->first();
                break;    
            case "advance_member":
                return Permission::where('identify','Advance Member')->get();
                break;
            case "suspended_member_first":
                return Permission::where('identify','Suspended Member')->first();
                break;    
            case "suspended_member":
                return Permission::where('identify','Suspended Member')->get();
                break;  
            case "deleted_member_first":
                return Permission::where('identify','Deleted Member')->first();
                break;    
            case "deleted_member":
                return Permission::where('identify','Deleted Member')->get();
                break;  
            case "member_first":
                return Permission::where('identify','Member')->first();
                break;    
            case "member":
                return Permission::where('identify','Member')->get();
                break;
            case 'membership_package_first':
                return Permission::where('identify','Membership Package')->first();
                break;     
            case 'membership_package':
                return Permission::where('identify','Membership Package')->get();
                break;
            case 'coin_package_first':
                return Permission::where('identify','Coin Package')->first();
                break;     
            case 'coin_package':
                return Permission::where('identify','Coin Package')->get();
                break;
            case "auction_claim_first":
                return Permission::where('identify','All Auction Claim')->first();           
                break;
            case "auction_claim":
                return Permission::where('identify','All Auction Claim')->get();           
                break;
            case "auction_claim_pending_first":
                return Permission::where('identify','Pending Auction Claim')->first();           
                break;
            case "auction_claim_pending":
                return Permission::where('identify','Pending Auction Claim')->get();           
                break;
            case "auction_claim_settled_first":
                return Permission::where('identify','Settled Auction Claim')->first();           
                break;
            case "auction_claim_settled":
                return Permission::where('identify','Settled Auction Claim')->get();           
                break;
            case "default_notification_first":
                return Permission::where('identify','Default Notification')->first();
                break;
            case "default_notification":
                return Permission::where('identify','Default Notification')->get();
                break; 
            case "segmented_notification_first":
                return Permission::where('identify','Segmented Notification')->first();
                break;
            case "segmented_notification":
                return Permission::where('identify','Segmented Notification')->get();
                break;      
            case "advertisement_first":
                return Permission::where('identify','Advertisements Management')->first();
                break;
            case "advertisement":
                return Permission::where('identify','Advertisements Management')->get();
                break;   
            case "memberPermission":
               return  $this->memberPermission();
               break;
               
               
            default:
               break;    
        }
    }
    public function store(Request $request)
    {
         UserPermission::where("user_id",$request->user_id)->delete();         
        foreach($request->slug as $slug){            
             $userPermission=new UserPermission();   
             $userPermission->user_id=$request->user_id;
             $userPermission->permission_id=$slug;
             $userPermission->save();
        }
        return back()->with('success','You are Successfully added Permission');        
    }
    public function memberPermission()
    {
        $membeType=[
            'all'          =>'All Member',
            'basic'        => 'Basic Member',
            'advance'      =>'Advance Member',
            'premium'      =>'Premium Member',
            'premium_plus' =>'Premium+ Member',
            'suspended'    =>'Suspended Member',
            'deleted'      =>'Deleted Member'];
        foreach($membeType as $key=>$_membeType){           
        $memberPermission["$key"."MemberPermissionFirst"]=Permission::where('identify',$_membeType)->first();
        $memberPermission["$key"."MemberPermission"]=Permission::where('identify',$_membeType)->get();

        } 
        return $memberPermission;  

      
    }
}
