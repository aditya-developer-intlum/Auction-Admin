<?php

namespace App\Policies;

use App\AuctionClaim;
use App\User;
use Illuminate\Auth\Access\HandlesAuthorization;

class AuctionClaimPolicy
{
    use HandlesAuthorization;

    /**
     * Determine whether the user can view any auction claims.
     *
     * @param  \App\User  $user
     * @return mixed
     */
    public function all(User $user)
    {
        return $user->permissions()->whereSlug('can_view_all_auction_claim_all')->exists();
    }

    /**
     * Determine whether the user can view the auction claim.
     *
     * @param  \App\User  $user
     * @param  \App\AuctionClaim  $auctionClaim
     * @return mixed
     */
    public function pending(User $user)
    {
        return $user->permissions()->whereSlug('can_pending_auction_claim')->exists();
    }

    /**
     * Determine whether the user can create auction claims.
     *
     * @param  \App\User  $user
     * @return mixed
     */
    public function settled(User $user)
    {
        return $user->permissions()->whereSlug('can_settle_auction_claim')->exists();
    }

    /**
     * Determine whether the user can update the auction claim.
     *
     * @param  \App\User  $user
     * @param  \App\AuctionClaim  $auctionClaim
     * @return mixed
     */
    public function export(User $user)
    {
        return $user->permissions()->whereSlug('can_export_auction_claim')->exists();
    }

    /**
     * Determine whether the user can delete the auction claim.
     *
     * @param  \App\User  $user
     * @param  \App\AuctionClaim  $auctionClaim
     * @return mixed
     */
    public function view(User $user)
    {
        return $user->permissions()->whereSlug('can_show_auction_claim')->exists();
    }

    /**
     * Determine whether the user can restore the auction claim.
     *
     * @param  \App\User  $user
     * @param  \App\AuctionClaim  $auctionClaim
     * @return mixed
     */
    public function restore(User $user)
    {
        //
    }

    /**
     * Determine whether the user can permanently delete the auction claim.
     *
     * @param  \App\User  $user
     * @param  \App\AuctionClaim  $auctionClaim
     * @return mixed
     */
    public function forceDelete(User $user)
    {
        //
    }
}
