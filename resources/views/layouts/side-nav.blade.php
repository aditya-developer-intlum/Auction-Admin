<main class="_ad-main">
<!-- Admin Side Nav --> 
<aside class="_adSide-nav">
    <div class="_adSide-nav-inner">
        <div class="_adSide-nav-logo">
            <a href="#"><img src="images/logo.png" alt=""></a>           
            <button class="_adSide-btn change" type="button">            
                    <div class="bar bar-1"></div>
                    <div class="bar bar-2"></div>
                    <div class="bar bar-3"></div>                
            </button>            
        </div>
        <div class="_adSide-nav-navs">
            <ul class="_adSide-nav-ul">                        
                <li>
                    <a href="{{ route("dashboard") }}" class="">
                        <span class="_bB-icon"><img src="images/db-icon-1.png" alt=""></span> <span class="_ad-menu-text">Dashboard</span>
                    </a>
                </li>
               
             {{--    <li>
                    <a href="{{ route("accountSummery") }}">
                        <span class="_bB-icon"><img src="images/db-icon-2.png" alt=""></span> <span class="_ad-menu-text">Account Summery</span>
                    </a>
                </li> --}}
                @canany(['viewAny','create'],\App\Auction::class)
                <li class="_ad-has-child">
                    <a href="" >
                        <span class="_bB-icon"><img src="images/db-icon-5.png" alt=""></span> <span class="_ad-menu-text">Auctions</span>
                    </a>
                <ul class="_ad-submenu" {!! request()->routeIs('auction.*')?'style="display: block;"':'' !!}>
                    @can('viewAny',\App\Auction::class)
                        <li><a href="{{ route('auction.index') }}" class="_active">All Auctions</a></li>
                    @endcan
                    @can('create',\App\Auction::class)
                        <li><a href="{{ route('auction.create') }}">Add Auction</a></li>
                    @endcan
                    @can('viewAny',\App\Auction::class)
                        <li><a href="{{ route('auction.page','draft') }}">Draft Auctions</a></li>
                        <li><a href="{{ route('auction.page','upcoming') }}">Upcoming Auctions</a></li>
                        <li><a href="{{ route('auction.page','live') }}">View Active Auctions</a></li>
                        <li><a href="{{ route('auction.page','completed') }}">Completed / Closed Auctions</a></li>
                    @endcan
                </ul>
                </li>
                @endcanany
                 @canany(['viewCoinPackage','createCoinPackage'],\App\User::class)
                <li class="_ad-has-child">
                    <a href="{{ route('coins.index') }}" class="{{ request()->routeIs("coins.*")?'_ad-active':'' }}">
                        <span class="_bB-icon"><img src="images/db-icon-4.png" alt=""></span> <span class="_ad-menu-text">Coin Packages</span>
                    </a>
                    <ul class="_ad-submenu" style="{{ request()->routeIs("coins.*")?'display: block;':'display: none;' }}">                       
                        {{-- @can('viewCoinPackage',\App\User::class) --}}
                        <li><a href="{{ route('coins.index') }}">All Packages / Update package</a></li>
                        {{-- @endcan --}}
                        {{-- @can('createCoinPackage',\App\User::class) --}}
                        <li><a href="{{ route('coins.create') }}"> Add Coin Package</a></li> 
                        {{-- @endcan                        --}}
                    </ul>
                </li>
                @endcanany
                @canany(['viewMembershipPackage','createMembershipPackage'],\App\User::class)
                <li class="_ad-has-child">
                <a href="#">
                        <span class="_bB-icon"><img src="images/db-icon-5.png" alt=""></span> <span class="_ad-menu-text">Membership Packages</span>
                    </a>
                    <ul class="_ad-submenu" {!! request()->routeIs('membership-package.*')?'style="display: block;"':'' !!}>
                     @can('viewMembershipPackage',\App\User::class)                          
                    <li><a href="{{route('membership-package.index')}}">All Packages / Update package</a></li>
                     @endcan
                     @can('createMembershipPackage',\App\User::class)
                        <li><a href="{{route('membership-package.create')}}">Add M. Package</a></li>                        
                     @endcan
                    </ul>
                </li>
                 @endcanany
                 @canany(['all','pending','settled'],\App\AuctionClaim::class)
                <li class="_ad-has-child">
                    <a href="">
                        <span class="_bB-icon"><img src="images/db-icon-3.png" alt=""></span> <span class="_ad-menu-text">Auction Claims & Settlement</span>
                    </a>
                    <ul class="_ad-submenu" {{ request()->routeIs("auctionclaim.*")?'style=display:block':'' }}>                       
                        @can('all',\App\AuctionClaim::class)
                        <li><a href="{{ route('auctionclaim.all') }}">All Claims</a></li>
                        @endcan
                        @can('pending',\App\AuctionClaim::class)
                        <li><a href="{{ route('auctionclaim.pending') }}">Pending Claims</a></li>
                        @endcan                       
                        @can('settled',\App\AuctionClaim::class)
                        <li><a href="{{ route('auctionclaim.settled') }}">Processed / Settled Claims</a></li>
                        @endcan                        
                    </ul>
                </li>
                @endcanany
                @canany(['createMember','viewMemeber'],\App\User::class)
                <li class="_ad-has-child">
                    <a href="#" class={!! request()->routeIs('member.*')?'style="display:block;"':'' !!} >
                        <span class="_bB-icon"><img src="images/db-icon-5.png" alt=""></span> <span class="_ad-menu-text">Members</span>
                    </a>
                    <ul class="_ad-submenu" {{ request()->routeIs("member.*")?'style=display:block':'' }}>
                        @can('viewMemeber',\App\User::class)
                        <li><a href="{{ route('member.all') }}">All Members</a></li>
                        @endcan
                        @can('createMember',\App\User::class)
                        <li><a href="{{ route('member.create') }}">Add Members</a></li>
                        @endcan
                        @can('viewMemeber',\App\User::class)
                        <li><a href="{{route('member.basic')}} ">Basic Members</a></li>
                        @endcan
                        @can('viewMemeber',\App\User::class)
                        <li><a href="{{route('member.advance')}}">Advance Members</a></li>
                        @endcan
                        @can('viewMemeber',\App\User::class)
                        <li><a href="{{route('member.premium')}}">Premium Members</a></li>
                        @endcan
                        @can('viewMemeber',\App\User::class)
                        <li><a href="{{route('member.premium_plus')}}">Premium Plus Members</a></li>
                        @endcan
                        @can('viewMemeber',\App\User::class)                        
                        <li><a href="{{route('member.suspended')}}">Suspended Members </a></li>
                        @endcan
                        @can('viewMemeber',\App\User::class)
                        <li><a href="{{route('member.deleted')}}">Deleted Members</a></li>
                        @endcan                     
                    </ul>
                </li>
                @endcanany
                
                @canany(['view','coinDeductView'],\App\Transaction::class)
                <li class="_ad-has-child">
                    <a href="auction-admin.php">
                        <span class="_bB-icon"><img src="images/db-icon-7.png" alt=""></span> <span class="_ad-menu-text">Coin Gift</span>
                    </a>
                    <ul class="_ad-submenu">
                    
                     @can('view',\App\Transaction::class)      
                    <li><a href="{{route('giftCoin.index')}}">Coin Gift to Member</a></li>
                     @endcan
                     @can('coinDeductView', \App\Transaction::class)                        
                     <li><a href="{{route('deductCoin.index')}}">Coin Deduction from Member</a></li>
                     @endcan
                    </ul>
                </li>
                @endcanany
                
                @canany(['subAdminAllView','subAdminAdd'],\App\User::class)
                <li class="_ad-has-child">
                    <a href="auction-admin.php">
                        <span class="_bB-icon"><img src="images/db-icon-6.png" alt=""></span> <span class="_ad-menu-text">Sub-Admins</span>
                    </a>
                    <ul class="_ad-submenu">
                      @can('subAdminAllView',\App\User::class)                         
                    <li><a href="{{route('sub-admin.index')}}">All Sub-admins</a></li>
                     @endcan
                     @can('subAdminAdd',\App\User::class)
                    <li><a href="{{route('sub-admin.create')}}">Add Sub-admin</a></li>
                     @endcan
                    </ul>
                </li>
                @endcan
                
                <li class="_ad-has-child">
                    <a href="#" >
                        <span class="_bB-icon"><img src="images/db-icon-8.png" alt=""></span> <span class="_ad-menu-text">All Transactions</span>
                    </a>
                    <ul class="_ad-submenu" {!! request()->routeIs('transaction.*')?'style="display:block;"':'' !!}>   
                        <li><a href="#">Total Auction Gained</a></li>
                        <li><a href="#">All Transaction</a></li>
                        <li><a href="{{ route('transaction.coin.sold') }}">Coin Pack Sold</a></li>
                        <li><a href="{{ route('transaction.premium.pack.sold') }}">Premium Membership Pack Sold</a></li>
                        <li><a href="{{ route('transaction.signup.bonus') }}">Sign-Up Bonus</a></li>
                        <li><a href="{{ route('transaction.first.coin.purchase.bonus') }}">First Coins Purchase Bonus</a></li>
                        <li><a href="#">Winning Claims</a></li>
                        <li><a href="{{ route('transaction.referral.winning.bonus') }}">Referral Winning Bonus</a></li>
                        <li><a href="#">Auction Fee</a></li>                                               
                        <li><a href="{{ route('transaction.admin.coin.gift') }}">Admin Coin Gift</a></li>
                        <li><a href="{{ route('transaction.admin.coin.deduction') }}">Admin Coin Deduction</a></li>
                        <li><a href="#">User To User Coin Gift</a></li>
                        <li><a href="#">Claim Fee</a></li>                                               
                        <li><a href="{{ route('transaction.referral.signup.bonus') }}">Refund Bonus</a></li>
                        <li><a href="{{ route('transaction.user.coin.spent') }}">User - Coin Spent in Auction</a></li>
                    </ul>
                </li>
                @if (Auth::user()->can('view',\App\Faq::class) || 
                Auth::user()->can('create',\App\Faq::class) || 
                Auth::user()->can('create',\App\FaqCategory::class)) 
                <li class="_ad-has-child">
                    
                    <a href=""  class={!! request()->routeIs('faq-category.*') || request()->routeIs('faq.*')?'style="display:block;"':'' !!}>
                        <span class="_bB-icon"><img src="images/db-icon-5.png" alt=""></span> <span class="_ad-menu-text">Faqs</span>
                    </a>
                    
                    <ul class="_ad-submenu" {{ request()->routeIs("faq-category.*") || request()->routeIs("faq.*")?'style=display:block':'' }}>                       
                    @can("view",\App\FaqCategory::class)
                    <li><a href="{{route('faq-category.create')}}">Faq Category</a></li>
                    @endcan
                    @can("view",\App\Faq::class)
                    <li><a href="{{route('faq.all')}}">All Faqs</a></li>
                    @endcan
                    @can("create",\App\Faq::class)
                    <li><a href="{{route('faq.create')}}">Add Faqs</a></li>
                    @endcan
                
                    </ul>

                </li>
                @endif
               {{--  @canany(['viewAllDefaultNotification','viewAllSegmentedNotification'],\App\Notification::class) --}}
                 <li class="_ad-has-child">
                    <a href="auction-admin.php">
                        <span class="_bB-icon"><img src="images/db-icon-7.png" alt=""></span> <span class="_ad-menu-text">Notification Management</span>
                    </a>
                    <ul class="_ad-submenu" {!! request()->routeIs('notification.*') || request()->routeIs('segmented-notification.*')?'style="display: block;"':'' !!}>   
                      {{--   @can('viewAllDefaultNotification',\App\Notification::class) --}}
                        <li><a href="{{ route('notification.index') }}">Default Notifiation</a></li>
                        {{-- @endcan --}}
                       {{--  @can('viewAllSegmentedNotification',\App\Notification::class) --}}
                        <li><a href="{{ route('segmented-notification.index') }}">Segmented Notification</a></li>
                        {{-- @endcan --}}
                    </ul>
                </li>
              {{--   @endcanany --}}
              {{--   @canany(['defaultAdBlock','popUpAdBlock'],\App\Advertisment::class) --}}
                 <li class="_ad-has-child">
                    <a href="auction-admin.php">
                        <span class="_bB-icon"><img src="images/db-icon-7.png" alt=""></span> <span class="_ad-menu-text">Advertisements Management</span>
                    </a>
                    <ul class="_ad-submenu" {!! request()->routeIs('advertisment.*') || request()->routeIs('segmented-advertisment.*') ?'style="display: block;"':'' !!}>   
                   {{--     @can('defaultAdBlock',\App\Advertisment::class) --}}
                        <li><a href="{{ route('advertisment.index') }}">Default Ad Block Management</a></li>
            {{--            @endcan
                       @can('popUpAdBlock',\App\Advertisment::class) --}}
                        <li><a href="{{ route('segmented-advertisment.index') }}">Segmented Pop-up Ad Block</a></li>
                  {{--      @endcan  --}}
                    </ul>
                </li>
             {{--    @endcanany --}}
                <li class="_ad-has-child">
                    <a href="auction-admin.php">
                        <span class="_bB-icon"><img src="images/db-icon-7.png" alt=""></span> <span class="_ad-menu-text">Analytics</span>
                    </a>
                    <ul class="_ad-submenu" style="{{ request()->routeIs("analytics.*")?'display: block':'' }}">   
                            
                        <li><a href="{{ route("analytics.activeInactive") }} ">Active & Inactive Members</a></li>
                        <li><a href="{{ route("analytics.login.history") }}">All Login History - IP, Device Wise</a></li>
                    </ul>
                </li>
@php
    $user = Auth::user();
@endphp
@if ($user->permissions()->whereSlug('can_view_homepage')->exists() || $user->permissions()->whereSlug('can_view_about_us')->exists() || $user->permissions()->whereSlug('can_view_how_it_work')->exists() || $user->permissions()->whereSlug('can_view_term_and_condition')->exists() || $user->permissions()->whereSlug('can_view_privacy_policy')->exists() || $user->permissions()->whereSlug('can_view_refund_policy')->exists() || $user->permissions()->whereSlug('can_view_social_policy')->exists() || $user->permissions()->whereSlug('can_view_refe_and_earn_policy')->exists() || $user->permissions()->whereSlug('can_view_advertise_with_us_policy')->exists())
    

                <li class="_ad-has-child">
                    <a href="" >
                        <span class="_bB-icon"><img src="images/db-icon-5.png" alt=""></span> <span class="_ad-menu-text">CMS</span>
                    </a>
                    <ul class="_ad-submenu">  
                    @if ($user->permissions()->whereSlug('can_view_homepage')->exists())
                        <li><a href="{{route('homepage.edit')}}">Homepage</a></li>
                    @endif
                    @if ($user->permissions()->whereSlug('can_view_advertise_with_us_policy')->exists())
                        <li><a href="{{route('advertiseCMS.index')}}">Advertise With Us</a></li>
                    @endif
                    @if ($user->permissions()->whereSlug('can_view_about_us')->exists())
                        <li><a href="{{route('about.edit')}}">About Us</a></li>
                    @endif
                    @if ($user->permissions()->whereSlug('can_view_how_it_work')->exists())
                        <li><a href="{{route('work.edit')}}">How it Works</a></li>
                    @endif
                    @if ($user->permissions()->whereSlug('can_view_term_and_condition')->exists())
                        <li><a href="{{route('footer.terms_condition')}}">Terms & Condition</a></li>
                    @endif
                    @if ($user->permissions()->whereSlug('can_view_privacy_policy')->exists())
                        <li><a href="{{route('footer.privacy_policy')}}">Privacy Policy</a></li>
                    @endif
                    @if ($user->permissions()->whereSlug('can_view_refund_policy')->exists())
                        <li><a href="{{route('footer.refund_policy')}}">Refund Policy</a></li>
                    @endif
                    @if ($user->permissions()->whereSlug('can_view_social_policy')->exists())
                        <li><a href="{{route('social-media.edit')}}">Social Media</a></li>                   
                    @endif
                    @if ($user->permissions()->whereSlug('can_view_refe_and_earn_policy')->exists())
                        <li><a href="{{route('refer-earn.edit')}}">Refer & Earn</a></li> 
                    @endif
                    
                    </ul>


                </li>
@endif
               {{--  <li class="_ad-has-child">
                    <a href="auction-admin.php">
                        <span class="_bB-icon"><img src="images/db-icon-7.png" alt=""></span> <span class="_ad-menu-text">Notification Management</span>
                    </a>
                    <ul class="_ad-submenu" {!! request()->routeIs('notification.*') || request()->routeIs('segmented-notification.*')?'style="display: block;"':'' !!}>   
                        <li><a href="{{ route('notification.index') }}">Default Notifiation</a></li>
                        <li><a href="{{ route('segmented-notification.index') }}">Segmented Notification</a></li>
                    </ul>
                </li> --}}
              {{--   <li class="_ad-has-child">
                    <a href="auction-admin.php">
                        <span class="_bB-icon"><img src="images/db-icon-7.png" alt=""></span> <span class="_ad-menu-text">Advertisements Management</span>
                    </a>
                    <ul class="_ad-submenu" {!! request()->routeIs('advertisment.*') || request()->routeIs('segmented-advertisment.*') ?'style="display: block;"':'' !!}>   
                        <li><a href="{{ route('advertisment.index') }}">Default Ad Block Management</a></li>
                        <li><a href="{{ route('segmented-advertisment.index') }}">Segmented Pop-up Ad Block</a></li>
                    </ul>
                </li>    --}}

                </li>
            </ul>  
        </div>

        <div class="_adSide-nav-userInfo">
            <ul class="_adUser-info">
                <li><span>Todays logged in user</span><span class="_adUser-no" style="color: #fc7608">850</span></li>
                <li><span>Total Users Participated in Auctions </span><span class="_adUser-no" style="color: #2abc53">506</span></li>               
            </ul>
        </div>
    </div>
</aside>



        <!-- Admin body -->
        <div class="_ad-main-cont">