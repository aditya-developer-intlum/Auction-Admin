<?php

namespace App\Policies;

use App\User;
use Illuminate\Auth\Access\HandlesAuthorization;

class MembershipPackagePolicy
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
}
