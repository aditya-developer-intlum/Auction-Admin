<?php

namespace App\Policies;

use App\Auction;
use App\User;
use Illuminate\Auth\Access\HandlesAuthorization;

class AuctionPolicy
{
    use HandlesAuthorization;

    /**
     * Determine whether the user can view any auctions.
     *
     * @param  \App\User  $user
     * @return mixed
     */
    public function viewAny(User $user)
    {
        return $user->permissions()->whereSlug('can_view_auction')->exists();
    }

    /**
     * Determine whether the user can view the auction.
     *
     * @param  \App\User  $user
     * @param  \App\Auction  $auction
     * @return mixed
     */
    public function view(User $user)
    {
        return $user->permissions()->whereSlug('can_show_auction')->exists();
    }

    /**
     * Determine whether the user can create auctions.
     *
     * @param  \App\User  $user
     * @return mixed
     */
    public function create(User $user)
    {
        return $user->permissions()->whereSlug('can_create_auction')->exists();
    }

    /**
     * Determine whether the user can update the auction.
     *
     * @param  \App\User  $user
     * @param  \App\Auction  $auction
     * @return mixed
     */
    public function update(User $user)
    {
        return $user->permissions()->whereSlug('can_edit_auction')->exists();
    }

    /**
     * Determine whether the user can delete the auction.
     *
     * @param  \App\User  $user
     * @param  \App\Auction  $auction
     * @return mixed
     */
    public function delete(User $user)
    {
        return $user->permissions()->whereSlug('can_delete_auction')->exists();
    }

    /**
     * Determine whether the user can restore the auction.
     *
     * @param  \App\User  $user
     * @param  \App\Auction  $auction
     * @return mixed
     */
    public function restore(User $user, Auction $auction)
    {
        //
    }

    /**
     * Determine whether the user can permanently delete the auction.
     *
     * @param  \App\User  $user
     * @param  \App\Auction  $auction
     * @return mixed
     */
    public function forceDelete(User $user, Auction $auction)
    {
        //
    }
}
