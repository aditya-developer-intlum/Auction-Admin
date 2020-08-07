<?php
use App\Auction;
use Carbon\Carbon;
use App\AuctionClaim;
use App\UserPermission;
use App\TransactionType;
use App\Transaction;
use App\PlayAuction;

if (!function_exists('bidGained')) {

    /**
     * Bid Gained on Perticular Auction
     *
     * @param
     * @return
     */
    function bidGained(Auction $auction)
    {
    	$topThreeBidder = $auction->bids->sortByDesc('id')->take(3);

        if ($topThreeBidder->count() == false || $topThreeBidder->count() < 3) {
            return $auction->playAuctions->sum('auction_fee');
        }

        $thirdBidder = $topThreeBidder->slice(1)->last();
        $secondBidder = $topThreeBidder->slice(1)->first();
        $firstBidder = $topThreeBidder->first();


        if ( $thirdBidder->user->membership_id == 4 || $thirdBidder->user->membership_id == 5 || $thirdBidder->user_id == $secondBidder->user_id || $thirdBidder->user_id == $firstBidder->user_id) {
            $third_bidders = 0;
        }else{
            $third_bidders = (float)$thirdBidder->bid_amount;
        }
        if ( $secondBidder->user->membership_id == 4 || $secondBidder->user->membership_id == 5 || $secondBidder->user_id == $thirdBidder->user_id || $secondBidder->user_id == $firstBidder->user_id) {
            $second_bidders = 0;
        }else{
            $second_bidders = (float)$secondBidder->bid_amount;
        }

        return array_sum([
            $third_bidders,$second_bidders,
            (float)$firstBidder->bid_amount,
            $auction->playAuctions->sum("auction_fee")
        ]);  
    }
    
}
if (!function_exists('disbursement')) {

    /**
     * description
     *
     * @param
     * @return
     */
    function disbursement(AuctionClaim $auctionClaim)
    {
        $winnerAmount = 0;
        $uplevel1Amount = 0;
        $uplevel2Amount = 0;

        if($auctionClaim->winner_claimed == 1 || $auctionClaim->winner_claimed == 2 ){
            $winnerAmount = $auctionClaim->winner_claim_value/10;
        }else if($auctionClaim->winner_claimed == 3){
            $winnerAmount = $auctionClaim->winner_claim_value/100;
        }
        if ($auctionClaim->uplevel1_claimed == 1 ||$auctionClaim->uplevel1_claimed == 3 ) {
            $uplevel1Amount = $auctionClaim->uplevel1_claim_value/100;
        }else if($auctionClaim->uplevel1_claimed == 2){
            $uplevel1Amount = $auctionClaim->uplevel1_claim_value/10;
        }
        if ($auctionClaim->uplevel2_claimed == 1 ||$auctionClaim->uplevel2_claimed == 3 ) {
            $uplevel2Amount = $auctionClaim->uplevel2_claim_value/100;
        }else if($auctionClaim->uplevel2_claimed == 2){
            $uplevel2Amount = $auctionClaim->uplevel2_claim_value/10;
        }
        return $winnerAmount+$uplevel1Amount+$uplevel2Amount;
        
    }
    
}
if (!function_exists('totalBids')) {

    /**
     * description
     *
     * @param
     * @return
     */
    function totalBids(Auction $auction)
    {
        $totalBids = 0;
        $auction->bids->groupBy('user_id')->each(function($query) use (&$totalBids){
            $totalBids += (float)($query->last())->bid_amount;


        });
        return $totalBids;
    }
    
}
if (!function_exists('totalBidGained')) {

    /**
     * description
     *
     * @param
     * @return
     */
    function totalBidGained(Auction $auction)
    {
        $totalAuctionValue = 0;
        $totalRefundBonus = 0;
        if (!empty($auction->playAuctions)) {
            $totalAuctionValue = $auction->playAuctions->sum('auction_fee')+totalBids($auction);
        }else{
            $totalAuctionValue = 0;
        }
        if (!empty($auction->playAuctions)) {
            $totalRefundBonus = $auction->playAuctions->sum('return_coins')/100;
        }else{
            $totalRefundBonus = 0;
        }
        
        return $totalAuctionValue-$totalRefundBonus;
        
    }
    
}
if (!function_exists('totalGained')) {

    /**
     * description
     *
     * @param
     * @return
     */
    function totalGained(Auction $auction,AuctionClaim $auctionClaim)
    {
        return totalBidGained($auction) - disbursement($auctionClaim);
        
    }
    
}
if (!function_exists('checkexist')) {


    function checkexist($permisson,$userId)
    {
        return UserPermission::whereUserIdAndPermissionId($userId,$permisson)->exists();
    }
    
}
if (!function_exists('month')) {

    function month()
    {
        return [new Carbon('first day of this month'),Carbon::now()];
        
    }
    
}
if (!function_exists('week')) {

    /**
     * Get Current month 
     *
     * @param
     * @return
     */
    function week()
    {
        $date = Carbon::now();
        return [$date->startOfWeek(),Carbon::now()];
        
    }
    
}
if (!function_exists('yesterday')) {

    /**
     * Get Current month 
     *
     */
    function yesterday()
    {
        return Carbon::yesterday();
    }
    
}
if (!function_exists('browser')) {
    
    function browser($userAgent){

        if(strpos($userAgent, 'MSIE'))
            return 'Internet explorer';
        elseif(strpos($userAgent, 'Trident')) //For Supporting IE 11
            return 'Internet explorer';
        elseif(strpos($userAgent, 'Firefox'))
            return 'Mozilla Firefox';
        elseif(strpos($userAgent, 'Chrome'))
            return 'Google Chrome';
        elseif(strpos($userAgent, 'Opera Mini') )
            return "Opera Mini";
        elseif(strpos($userAgent, 'Opera'))
            return "Opera";
        elseif(strpos($userAgent, 'Safari'))
            return "Safari";
        else
            return 'Something else';
    }   
}
if (!function_exists('transactionId')) {
    
    function transactionId($slug){

        $s_no = TransactionType::whereSlug($slug)
        ->first()
        ->s_no;
       $transaction = Transaction::whereDate('created_at',Carbon::now())->count();

       return (int)sprintf("100%d%d%s10000",++$transaction,Carbon::now()->format('ymd'),"$s_no");
    }   
}
if (!function_exists('transactionIdAuction')) {
    
    function transactionIdAuction($slug){

        $s_no = TransactionType::whereSlug($slug)
        ->first()
        ->s_no;
       $transaction = Transaction::whereDate('created_at',Carbon::now())->count();
       $auction = PlayAuction::whereDate('created_at',Carbon::now())
       ->whereIsClosedAndIsWinner(true,true)
       ->count();

       return (int)sprintf("100%d%d%d00%d",++$transaction,Carbon::now()->format('ymd'),$s_no,$auction);
    }   
}


