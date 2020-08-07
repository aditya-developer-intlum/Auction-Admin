<?php

namespace App\Policies;

use App\User;
use Illuminate\Auth\Access\HandlesAuthorization;

class MemberPolicy
{
    use HandlesAuthorization;

    /**
     * Create a new policy instance.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

   //All View Permission
   public function viewAllallMember(User $user)
   {
      return $user->permissions()->where('slug','can_view_all_all_member')->exists();
   }
   public function viewAllbasicMember(User $user)
   {
      return $user->permissions()->where('slug','can_view_all_basic_member')->exists();
   }
   public function viewAlladvanceMember(User $user)
   {
      return $user->permissions()->where('slug','can_view_all_advance_member')->exists();
   }
   public function viewAllpremiumMember(User $user)
   {
      return $user->permissions()->where('slug','can_view_all_premium_member')->exists();
   }
   public function viewAllpremium_plusMember(User $user)
   {
      return $user->permissions()->where('slug','can_view_all_premium_plus_member')->exists();
   }
   public function viewAllsuspendedMember(User $user)
   {
      return $user->permissions()->where('slug','can_view_all_suspended_member')->exists();
   }
   public function viewAlldeletedMember(User $user)
   {
      return $user->permissions()->where('slug','can_view_all_deleted_member')->exists();
   }


   //Member Seacrh Permission
   public function searchMemberallMember(User $user)
   {
      return $user->permissions()->where('slug','can_search_any_member_all_member')->exists();
   }
   public function searchMemberbasicMember(User $user)
   {
      return $user->permissions()->where('slug','can_search_any_member_basic_member')->exists();
   }
   public function searchMemberadvanceMember(User $user)
   {
      return $user->permissions()->where('slug','can_search_any_member_advance_member')->exists();
   }
   public function searchMemberpremiumMember(User $user)
   {
      return $user->permissions()->where('slug','can_search_any_member_premium_member')->exists();
   }
   public function searchMemberpremium_plusMember(User $user)
   {
      return $user->permissions()->where('slug','can_search_any_member_premium_plus_member')->exists();
   }
   public function searchMembersuspendedMember(User $user)
   {
      return $user->permissions()->where('slug','can_search_any_member_suspended_member')->exists();
   }
   public function searchMemberdeletedMember(User $user)
   {
      return $user->permissions()->where('slug','can_search_any_member_deleted_member')->exists();
   }

      //Member Export Permission
      public function exportMemberallMember(User $user)
      {
         return $user->permissions()->where('slug','can_export_all_member')->exists();
      }
      public function exportMemberbasicMember(User $user)
      {
         return $user->permissions()->where('slug','can_export_basic_member')->exists();
      }
      public function exportMemberadvanceMember(User $user)
      {
         return $user->permissions()->where('slug','can_export_advance_member')->exists();
      }
      public function exportMemberpremiumMember(User $user)
      {
         return $user->permissions()->where('slug','can_export_premium_member')->exists();
      }
      public function exportMemberpremium_plusMember(User $user)
      {
         return $user->permissions()->where('slug','can_export_premium_plus_member')->exists();
      }
      public function exportMembersuspendedMember(User $user)
      {
         return $user->permissions()->where('slug','can_export_suspended_member')->exists();
      }
      public function exportMemberdeletedMember(User $user)
      {
         return $user->permissions()->where('slug','can_export_deleted_member')->exists();
      }
      //Member DateFilter Permission
      public function dateFilterMemberallMember(User $user)
      {
         return $user->permissions()->where('slug','can_date_filter_all_member')->exists();
      }
      public function dateFilterMemberbasicMember(User $user)
      {
         return $user->permissions()->where('slug','can_date_filter_basic_member')->exists();
      }
      public function dateFilterMemberadvanceMember(User $user)
      {
         return $user->permissions()->where('slug','can_date_filter_advance_member')->exists();
      }
      public function dateFilterMemberpremiumMember(User $user)
      {
         return $user->permissions()->where('slug','can_date_filter_premium_member')->exists();
      }
      public function dateFilterMemberpremium_plusMember(User $user)
      {
         return $user->permissions()->where('slug','can_date_filter_premium_plus_member')->exists();
      }
      public function dateFilterMembersuspendedMember(User $user)
      {
         return $user->permissions()->where('slug','can_date_filter_suspended_member')->exists();
      }
      public function dateFilterMemberdeletedMember(User $user)
      {
         return $user->permissions()->where('slug','can_date_filter_deleted_member')->exists();
      }



      //Create,View,Edit & Delete Member

      public function createMember(User $user)
      {
         return $user->permissions()->where('slug','can_create_member')->exists();
      }
      public function viewMemeber(User $user)
      {
         return $user->permissions()->where('slug','can_view_member')->exists();
      }
      public function editMemeber(User $user)
      {
         return $user->permissions()->where('slug','can_edit_member')->exists();
      }
      public function deleteMemeber(User $user)
      {
         return $user->permissions()->where('slug','can_delete_member')->exists();

      }

      //Membership Package Policy
      public function createMembershipPackage(User $user)
      {
          return $user->permissions()->where('slug','can_create_membership_package')->exists();
      }
      public function viewMembershipPackage(User $user)
      {
          return $user->permissions()->where('slug','can_view_membership_package')->exists();
      }
      public function editMembershipPackage(User $user)
      {
          return $user->permissions()->where('slug','can_edit_membership_package')->exists();
      }
      public function deleteMembershipPackage(User $user)
      {
          return $user->permissions()->where('slug','can_delete_membership_package')->exists();
      }
   

       //Coin Package Policy
       public function createCoinPackage(User $user)
       {
           return $user->permissions()->where('slug','can_create_coin_package')->exists();
       }
       public function viewCoinPackage(User $user)
       {
           return $user->permissions()->where('slug','can_view_coin_package')->exists();
       }
       public function editCoinPackage(User $user)
       {
           return $user->permissions()->where('slug','can_edit_coin_package')->exists();
       }
       public function deleteCoinPackage(User $user)
       {
           return $user->permissions()->where('slug','can_delete_coin_package')->exists();
       }    


       //SubAdmin Policy
       public function subAdminView(User $user)
       {
          return $user->permissions()->where('slug','can_view_sub_admin')->exists();
       }
       public function subAdminEdit(User $user)
       {
           return $user->permissions()->where('slug','can_edit_sub_admin')->exists();
       }
       public function subAdminDelete(User $user)
       {
           return $user->permissions()->where('slug','can_delete_sub_admin')->exists();
       }
       public function subAdminAdd(User $user)
       {
           return $user->permissions()->where('slug','can_add_sub_admin')->exists();
       }
       public function subAdminPermission(User $user)
       {
           return $user->permissions()->where('slug','can_permission_sub_admin')->exists();
       }
       public function subAdminAllView(User $user )
       {     
           return $user->permissions()->where('slug','can_view_sub_admin')->exists();
       }

    
    

}
