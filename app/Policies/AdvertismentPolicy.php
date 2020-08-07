<?php

namespace App\Policies;

use App\Advertisment;
use App\User;
use Illuminate\Auth\Access\HandlesAuthorization;

class AdvertismentPolicy
{
    use HandlesAuthorization;

    /**
     * Determine whether the user can view any advertisments.
     *
     * @param  \App\User  $user
     * @return mixed
     */
    public function viewAny(User $user)
    {
        //
    }

    /**
     * Determine whether the user can view the advertisment.
     *
     * @param  \App\User  $user
     * @param  \App\Advertisment  $advertisment
     * @return mixed
     */
    public function view(User $user, Advertisment $advertisment)
    {
        //
    }

    /**
     * Determine whether the user can create advertisments.
     *
     * @param  \App\User  $user
     * @return mixed
     */
    public function create(User $user)
    {
        //
    }

    /**
     * Determine whether the user can update the advertisment.
     *
     * @param  \App\User  $user
     * @param  \App\Advertisment  $advertisment
     * @return mixed
     */
    public function update(User $user, Advertisment $advertisment)
    {
        //
    }

    /**
     * Determine whether the user can delete the advertisment.
     *
     * @param  \App\User  $user
     * @param  \App\Advertisment  $advertisment
     * @return mixed
     */
    public function delete(User $user, Advertisment $advertisment)
    {
        //
    }

    /**
     * Determine whether the user can restore the advertisment.
     *
     * @param  \App\User  $user
     * @param  \App\Advertisment  $advertisment
     * @return mixed
     */
    public function restore(User $user, Advertisment $advertisment)
    {
        //
    }

    /**
     * Determine whether the user can permanently delete the advertisment.
     *
     * @param  \App\User  $user
     * @param  \App\Advertisment  $advertisment
     * @return mixed
     */
    public function forceDelete(User $user, Advertisment $advertisment)
    {
        //
    }
}
