<?php

namespace App\Providers;

use Illuminate\Foundation\Support\Providers\AuthServiceProvider as ServiceProvider;
use Illuminate\Support\Facades\Gate;
use App\AuctionClaim;

class AuthServiceProvider extends ServiceProvider
{
    /**
     * The policy mappings for the application.
     *
     * @var array
     */
    protected $policies = [
        // 'App\Transaction' => 'App\Policies\GiftCoinPolicy',
        'App\Transaction' => 'App\Policies\CoinPolicy',
        // 'App\User'        => 'App\Policies\SubAdminPolicy',
        'App\User'        => 'App\Policies\MemberPolicy',
        // 'App\User'        => 'App\Policies\MembershipPackagePolicy',
        // 'App\User'        => 'App\Policies\CoinPackagePolicy',

        'App\AuctionClaim' => 'App\Policies\AuctionClaimPolicy',


];

    /**
     * Register any authentication / authorization services.
     *
     * @return void
     */
    public function boot()
    {
        $this->registerPolicies();

        //
    }
}
