<?php

namespace App\Policies;

use App\User;
use Illuminate\Auth\Access\HandlesAuthorization;

class CoinPackagePolicy
{
    use HandlesAuthorization;

    /**
     * Create a new policy instance.
     *
     * @return void
     */
    
    public function __construct()
    {
        
    }
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
}
