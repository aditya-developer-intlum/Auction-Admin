<?php

namespace App\Policies;

use App\User;
use Illuminate\Auth\Access\HandlesAuthorization;
use PhpParser\Node\Stmt\Return_;

class SubAdminPolicy
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
        return $user->permissions()->where('slug','can_view_all_sub_admin')->exists();
    }
    
}
