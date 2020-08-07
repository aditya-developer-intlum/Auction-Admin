<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/


	
Route::get('/', function () {
	return redirect()->route("login");
});

Route::group(["middleware"=>"sessionTimeOut"],function(){

Auth::routes(['register'=>false]);
	Route::group(["middleware" => 'auth','prefix'=>'admin'],function(){
		/*
		|--------------------------------------------------------------------------
		| Admin Dashboard
		|--------------------------------------------------------------------------
		*/
		Route::get('/dashboard', 'DashboardController@index')->name('dashboard');
		/*
		|--------------------------------------------------------------------------
		| Members
		|--------------------------------------------------------------------------
		*/
			Route::get("account-summery",AccountSummeryController::class)->name('accountSummery');
		/*
		|--------------------------------------------------------------------------
		| Members
		|--------------------------------------------------------------------------
		*/
		Route::get("members/all", "MemberController@index")->name('member.all');
		Route::get("members/basic", "MemberController@index")->name('member.basic');
		Route::get('members/advance', 'MemberController@index')->name('member.advance');
		Route::get('members/premium', 'MemberController@index')->name('member.premium');
		Route::get('members/premium_plus', 'MemberController@index')->name('member.premium_plus');
		Route::get('members/suspended', 'MemberController@index')->name('member.suspended');
		Route::get('members/deleted', 'MemberController@index')->name('member.deleted');
		Route::get("user/{user}/status/{status}", "MemberController@status")->name('member.status');
		Route::post("user/{user}", "MemberController@destroy")->name('member.delete');
		Route::get('/csv_converter', 'MemberController@csv_converter')->name('member.csv_converter');
		Route::post('/datewise_member', 'MemberController@datewise_member')->name('member.datewiseMember');
		Route::get('members/create', 'MemberController@create')->name('member.create');
		Route::post('members/store', 'MemberController@store')->name('member.store');
		Route::get('members/{member}', 'MemberController@show')->name('member.show');
		Route::get('members/{member}/edit', 'MemberController@edit')->name('member.edit');
		Route::post('members/{member}/update', 'MemberController@update')->name('member.update');
		// Route::delete('members/{member}','MemberController@destroy')->name('member.delete');
		Route::get("members/detail/{member}", "MemberController@detail")->name('member.detail');
		Route::get("members/segmented-detail/{member}", "MemberController@ajaxDetail");

		/*
		|---------------------------------------------------------------
		| Advertisement with us
	    |---------------------------------------------------------------
		*/
		Route::get("advertisement-with-us","AdvertisementCMSController@index")->name('advertiseCMS.index');
		Route::post("advertisement-with-us","AdvertisementCMSController@store")->name('advertiseCMS.store');
		/*
		|--------------------------------------------------------------------------
		| Coin Package
		|--------------------------------------------------------------------------
		*/

		Route::resource("coins", CoinPackageController::class);
		/*
		|--------------------------------------------------------------------------
		| Auction
		|--------------------------------------------------------------------------
		*/
		Route::resource('auction', AuctionController::class);
		Route::get('auction/{auction}', "AuctionController@index")->name('auction.page');
		Route::get('auction/{auction}/live', "AuctionController@liveDetail")->name('auction.live');
		Route::post('auction/block/user', "AuctionController@blockUser")->name('auction.block.user');
		Route::post('auction/return/coin', "AuctionController@setReturnCoin")->name('auction.return.coin');
		Route::get("auction/block/user/cron", "AuctionController@blockUserCron");
		Route::get("auction/winner/transaction/user/{user}/{auctionClaim}/{id}", "AuctionController@winnerTransaction")->name('auction.winner.transaction');
		/*
		|--------------------------------------------------------------------------
		| Notification & advertisment
		|--------------------------------------------------------------------------
		*/
		Route::resources([
			'notification' => 'NotificationController',
			'segmented-notification' => 'NotificationController',
			'advertisment' => 'AdvertismentController',
			'segmented-advertisment' => 'AdvertismentController',
		]);
		Route::post('notification/sub-category', "NotificationController@subcategory")
			->name("notification.subCategory");
		/*
		|--------------------------------------------------------------------------
		| Auction
		|--------------------------------------------------------------------------
		*/
		Route::resource('/membership-package', 'MembershipPackageController');
		Route::resource('/sub-admin', 'SubAdminController');
		/*
		|--------------------------------------------------------------------------
		| Auction Claim
		|--------------------------------------------------------------------------
		*/
		Route::get('auction-claim/all', 'AuctionClaimController@all')->name("auctionclaim.all");
		Route::get('auction-claim/pending', 'AuctionClaimController@pending')->name("auctionclaim.pending");
		Route::get('auction-claim/settled', 'AuctionClaimController@settled')->name("auctionclaim.settled");
		Route::get('auction-claim/{page}/export', 'AuctionClaimController@export')->name("auctionclaim.export");
		/*
		|--------------------------------------------------------------------------
		| HomePage
		|--------------------------------------------------------------------------
		*/

		Route::get('homepage/edit', 'HomePageController@index')->name('homepage.edit');
		Route::post('homepage/update', 'HomePageController@store')->name('homepage.update');		
		/*
		|--------------------------------------------------------------------------
		| About Us
		|--------------------------------------------------------------------------
		*/
		Route::get('about/edit', 'AboutController@edit')->name('about.edit');
		Route::post('about/update', 'AboutController@update')->name('about.update');
		/*
	    |--------------------------------------------------------------------------
	    | How it Works 
	    |--------------------------------------------------------------------------
		 */
		Route::get('work/edit', 'WorkController@edit')->name('work.edit');
		Route::post('work/update/{id}', 'WorkController@update')->name('work.update');
		/*
	    |--------------------------------------------------------------------------
	    | Faqs 
	    |--------------------------------------------------------------------------
		 */
		Route::get('faq', 'FaqController@index')->name('faq.all');
		Route::get('faq/create', 'FaqController@create')->name('faq.create');
		Route::get('faq/{faq}', 'FaqController@view')->name('faq.view');
		Route::get('faq/{faq}/edit', 'FaqController@edit')->name('faq.edit');
		Route::post('faq/store', 'FaqController@store')->name('faq.store');
		Route::put('faq/{faq}', 'FaqController@update')->name('faq.update');
		Route::delete('faq/{faq}', 'FaqController@destroy')->name('faq.destroy');
		Route::resource('faq-category', "FaqCategoryController");
		Route::get('cancel', function () {
			return back();
		})->name('cancel');
		/*
	    |--------------------------------------------------------------------------
	    | Footer 
	    |--------------------------------------------------------------------------
		 */
		Route::get('footer/edit', 'FooterController@edit')->name('footer.edit');
		Route::get('footer/edit/1', 'FooterController@termsConditon')->name('footer.terms_condition');	//terms & Condition
		Route::get('footer/edit/2', 'FooterController@privacyPolicy')->name('footer.privacy_policy');	//Privacy & Policy
		Route::get('footer/edit/3', 'FooterController@refundPolicy')->name('footer.refund_policy');	//Refund Policy
		Route::put('footer/{footer}', 'FooterController@update')->name('footer.update');               //All footer


		/*
		|---------------------------------------------------------------
		|Social Media 
	    |---------------------------------------------------------------
		*/
		Route::get('social-media/edit', 'SocialMediaController@edit')->name('social-media.edit');    //social media all 
		Route::post('social-media/update', 'SocialMediaController@update')->name('social-media.update');
		/*
		|---------------------------------------------------------------
		|Refer & Earn 
	    |---------------------------------------------------------------
		*/
		Route::get('refer-earn/edit', 'ReferEarnController@edit')->name('refer-earn.edit');
		Route::post('refer-earn/update', 'ReferEarnController@update')->name('refer-earn.update');
		/*
		|---------------------------------------------------------------
		|Coin Gift
	    |---------------------------------------------------------------
		*/
		Route::get('gift-coin/index', 'GiftCoinController@index')->name('giftCoin.index');
		Route::get('gift-coin/send', 'GiftCoinController@giftCoinSend')->name('giftCoin.send');
		Route::get('gift-coin/csv_converter', 'GiftCoinController@csvConverter')->name('giftCoin.csv_converter');
		/*
		|---------------------------------------------------------------
		|Coin Deduct
	    |---------------------------------------------------------------
		*/
		Route::get('deduct-coin/index', 'DeductCoinController@index')->name('deductCoin.index');
		Route::get('deduct-coin/deduct', 'DeductCoinController@deduct')->name('deductCoin.deduct');
		Route::get('deduct-coin/csv_converter', 'DeductCoinController@csv_converter')->name('deductCoin.csv_converter');
		/*
		|---------------------------------------------------------------
		|Permission User
	    |---------------------------------------------------------------
		*/
		Route::get('permission/{id}', 'PermissionController@index')->name('permission.index');
		Route::get('permission/store/success', 'PermissionController@store')->name('permission.store.success');
		// Route::get('permission','PermissionController@index')->name('permission.index');

		/*
		|---------------------------------------------------------------
		| Analytics
	    |---------------------------------------------------------------
		*/
		Route::get('analytic/active-inactive',"AnalyticsController@activeInactive")->name("analytics.activeInactive");
		Route::get('analytic/login-history',"LoginHistoryController")->name("analytics.login.history");


		Route::get('test','PermissionController@memberPermission');
		/*
		|---------------------------------------------------------------
		|	Transaction
	    |---------------------------------------------------------------
		*/
		Route::get('transaction/coin-sold',TransactionCoinPackController::class)
		->name('transaction.coin.sold');
		
		Route::get('transaction/coin-sold/export','TransactionCoinPackController@export')
		->name('transaction.coin.sold.export');
		
		Route::get('transaction/premium-membership-pack-sold',TransactionPremiumMembershipPackController::class)
		->name('transaction.premium.pack.sold');

		Route::get('transaction/premium-membership-pack-sold/export','TransactionPremiumMembershipPackController@export')
		->name('transaction.premium.pack.sold.export');

		Route::get('transaction/signup-bonus',TransactionSignUpBonusController::class)
		->name('transaction.signup.bonus');

		Route::get('transaction/signup-bonus.export','TransactionSignUpBonusController@export')
		->name('transaction.signup.bonus.export');

		Route::post('transaction/signup-bonus','TransactionSignUpBonusController@update')
		->name('transaction.signup.bonus.update');

		Route::get('transaction/referral-signup-bonus',TransactionReferralSignUpBonusController::class)
		->name('transaction.referral.signup.bonus');

		Route::get('transaction/referral-signup-bonus.export','TransactionReferralSignUpBonusController@export')
		->name('transaction.referral.signup.bonus.export');

		Route::get('transaction/first-coin-purchase-bonus',TransactionFirstCoinPurchaseBonusController::class)
		->name('transaction.first.coin.purchase.bonus');

		Route::get('transaction/first-coin-purchase-bonus.export','TransactionFirstCoinPurchaseBonusController@export')
		->name('transaction.first.coin.purchase.bonus.export');

		Route::get('transaction/referral-winning-bonus',TransactionReferralWinningBonusController::class)
		->name('transaction.referral.winning.bonus');

		Route::get('transaction/referral-winning-bonus.export','TransactionReferralWinningBonusController@export')
		->name('transaction.referral.winning.bonus.export');

		Route::get('transaction/admin-coin-gift',TransactionAdminCoinGiftController::class)
		->name('transaction.admin.coin.gift');

		Route::get('transaction/admin-coin-gift.export','TransactionAdminCoinGiftController@export')
		->name('transaction.admin.coin.gift.export');

		Route::get('transaction/admin-coin-deduction',TransactionAdminCoinDeductionController::class)
		->name('transaction.admin.coin.deduction');

		Route::get('transaction/admin-coin-deduction.export','TransactionAdminCoinDeductionController@export')
		->name('transaction.admin.coin.deduction.export');

		Route::get('transaction/user-coin-spent',TranactionUserCoinSpentController::class)
		->name('transaction.user.coin.spent');

		Route::get('transaction/user-coin-spent/export','TranactionUserCoinSpentController@export')
		->name('transaction.user.coin.spent.export');

	
	});
});

/*cron job

Route::get("auction/block/user/cron","AuctionController@blockUserCron");

*/
