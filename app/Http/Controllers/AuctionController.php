<?php

namespace App\Http\Controllers;

use App\Auction;
use App\ProductCategory;
use Illuminate\Http\Request;
use App\Http\Requests\AuctionRequest;
use App\PlayAuction;
use App\AuctionClaim;
use App\User;
use App\Transaction;

class AuctionController extends Controller
{
    private $auction;
    private $paginate = 10;
    private $auctions;
    private $auctionStatus;
    private $totalBids = 0;
    private $bid_gained_rank;
    private $bidGainedStatus = true;

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request,$auction ='all')
    {
        $this->authorize('viewAny',Auction::class);
        $this->all($request,$auction)
        ->draft($request,$auction)
        ->upcoming($request,$auction)
        ->live($request,$auction)
        ->completed($request,$auction);

        return view("auction.view",['auctions'=>$this->auctions]);  
    }
    /**
     * Display a All Auction of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    private function all(Request $request,$auction):object
    {
        if (__FUNCTION__ == $auction) {
            $this->search($request,$auction);
        }
        return $this;
    }
    /**
     * Display a Draft Auction of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    private function draft(Request $request,$auction):object
    {
        if (__FUNCTION__ == $auction) {
            $this->search($request,0);
        }
        return $this;
    }
    /**
     * Display a Upcoming Auction of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    private function upcoming(Request $request,$auction):object
    {
        if (__FUNCTION__ == $auction) {
            $this->search($request,2);
        }
        return $this;
    }
    /**
     * Display a live Auction of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    private function live(Request $request,$auction):object
    {
        if (__FUNCTION__ == $auction) {
            $this->search($request,3);
        }
        return $this;
    }
    /**
     * Display a Completed Auction of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    private function completed(Request $request,$auction):object
    {
        if (__FUNCTION__ == $auction) {
            $this->search($request,4);
        }
        return $this;
    }
    /**
     * Display a search Auction of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    private function search(Request $request,$auction):object
    {

        if ($request->has("search") && !empty($request->search) && $auction !=='all') {
            
            $this->auctions = Auction::with('bids','playAuctions')
            ->whereStatus($auction)
            ->whereLike(["auction_code"],$request->search)
            ->paginate($this->paginate);
            
        }else if($request->has("search") && !empty($request->search) && $auction === 'all'){

            $this->auctions = Auction::with('bids','playAuctions')
            ->whereLike(["auction_code"],$request->search)
            ->paginate($this->paginate);
        }else{
            $this->get($auction);
        }
        return $this;
    }

    /**
     * Display a Get Auction of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    private function get($auction):object
    {

        if ($auction === 'all') {

           $this->auctions = Auction::with('bids','playAuctions')
            ->paginate($this->paginate);
            
        }else{
            //dd($auction);
            $this->auctions = Auction::with('bids','playAuctions')
            ->where('status',$auction)
            ->paginate($this->paginate);
        }
       
        return $this;
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $this->authorize('create',Auction::class);
        $categories = ProductCategory::all();
        return view("auction.add",compact('categories'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(AuctionRequest $request)
    {
        $this->authorize('create',Auction::class);
        $this->auction = new Auction;
        $this->props($request)->uploadImage($request)->save();
        return back()->withSuccess("Auction is Created");
    }
    /**
     * Display the specified resource.
     *
     * @param  \App\Auction  $auction
     * @return \Illuminate\Http\Response
     */
    public function show(Auction $auction)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Auction  $auction
     * @return \Illuminate\Http\Response
     */
    public function edit(Auction $auction)
    {
        $this->authorize('update',Auction::class);
        $categories = ProductCategory::all();
        return view("auction.edit",compact('auction','categories'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Auction  $auction
     * @return \Illuminate\Http\Response
     */
    public function update(AuctionRequest $request, Auction $auction)
    {
        $this->authorize('update',Auction::class);
        $this->auction = $auction;
        if ($this->auction->status == 3 || $this->auction->status == 4) {
            $request->request->add(['status'=>$this->auction->status]);
           
        }
        $this->props($request)->uploadImage($request)->save();
        return back()->withSuccess("Auction is Updated");
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Auction  $auction
     * @return \Illuminate\Http\Response
     */
    public function destroy(Auction $auction)
    {
        $this->authorize('delete',Auction::class);
        $aution->delete();
        return back()->with("Auction is Deleted");
    }
    /**
     * Set Props
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    private function props(AuctionRequest $request)
    {
  
        $this->auction->status = $request->status;
        $this->auction->auction_code = $request->auction_code;
        $this->auction->product_name = $request->product_name;
        $this->auction->product_link = $request->product_link;
        $this->auction->product_category = json_encode($request->product_category);
        $this->auction->product_value = $request->product_value;
        $this->auction->value_in_coins = $request->value_in_coins;
        $this->auction->desc = $request->desc;
        $this->auction->product_image_link = $request->product_image_link;
        $this->auction->auction_date  = date('Y-m-d',strtotime($request->auction_date));
        $this->auction->default_auction_fee = $request->default_auction_fee;
        $this->auction->default_auction_time = $request->default_auction_time;
        $this->auction->auction_fee_after_discount = $request->auction_fee_after_discount;
        $this->auction->product_winner = $request->product_winner;
        $this->auction->product_up_level1 = $request->product_up_level1;
        $this->auction->product_up_level2 = $request->product_up_level2;
        $this->auction->value_in_cash_winner = $request->value_in_cash_winner;
        $this->auction->value_in_cash_up_level1 = $request->value_in_cash_up_level1;
        $this->auction->value_in_cash_up_level2 = $request->value_in_cash_up_level2;
        $this->auction->value_in_coin_winner = $request->value_in_coin_winner;
        $this->auction->value_in_coin_up_level1 = $request->value_in_coin_up_level1;
        $this->auction->value_in_coin_up_level2 = $request->value_in_coin_up_level2;
        $this->auction->bid_start_from = $request->bid_start_from;
        $this->auction->per_bid_coins = $request->per_bid_coins;
        $this->auction->basic_advance_auto_bid_allow_upto = $request->basic_advance_auto_bid_allow_upto;
        $this->auction->premium_auto_bid_allow_upto = $request->premium_auto_bid_allow_upto;
        $this->auction->premium_plus_bid_allow_upto = $request->premium_plus_bid_allow_upto;
        $this->auction->last_bid_accepted = $request->last_bid_accepted;
        $this->auction->new_bidder_allow_upto = $request->new_bidder_allow_upto;
        $this->auction->note= $request->note;
        $this->auction->brand = $request->brand;
        $this->auction->product_code = $request->product_code;
        return $this;
    }
    /**
     * Upload Image
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    private function uploadImage(Request $request)
    {
        if ($request->has('product_image')) {
            $image = $request->product_image->store("auction/product","public");
            $this->auction->product_image = url("storage/$image");
        }
        return $this;
    }
    /**
     * Save Auction
     *
     * @return void
     */
    private function save()
    {
        $this->auction->save();
        return $this;
    }
    /**
     * Live Detail
     *
     * @param  \App\Auction  $auction
     * @return \Illuminate\Http\Response
     */
    public function liveDetail(Auction $auction)
    {
        $this->authorize('view',Auction::class);
        if ($auction->status == 4) {
            return $this->auctionCompleted($auction);
        }

        $bid_gained = $this->bidGained($auction);
        if ($this->bidGainedStatus == false) {
            return view("auction.live-detail",compact('auction','bid_gained'),[
                'totalBids'=>$this->totalBids,
                'playAuctions'=>PlayAuction::where('auction_id',$auction->id)
                        ->get()
            ]);
        }
       
        $auction->bids->groupBy('user_id')->each(function($query){
            $this->totalBids += (float)($query->last())->bid_amount;

        });

        $users = array_keys($auction->bids->sortByDesc('id')->groupBy('user_id')->toArray());
        foreach ($users as $user) {
            
        $playAuctions[] = PlayAuction::where('user_id',$user)
                        ->where('auction_id',$auction->id)
                        ->first();
        }

        return view("auction.live-detail",compact('auction','bid_gained','playAuctions','bid_gained_rank'),['totalBids'=>$this->totalBids,'bid_gained_rank' => $this->bid_gained_rank]);
    }
    /**
     * Auction Completed
     *
     * @param  \App\Auction  $auction
     * @return \Illuminate\Http\Response
     */
    private function auctionCompleted(Auction $auction)
    {
        $bid_gained = $this->bidGained($auction);
        if ($this->bidGainedStatus == false) {
            return view("auction.completed",compact('auction','bid_gained'),[
                'totalBids'=>$this->totalBids,
                'playAuctions'=>PlayAuction::where('auction_id',$auction->id)
                        ->get()
            ]);
        }
       
        $auction->bids->groupBy('user_id')->each(function($query){
            $this->totalBids += (float)($query->last())->bid_amount;

        });

        $users = array_keys($auction->bids->sortByDesc('id')->groupBy('user_id')->toArray());
        foreach ($users as $user) {
            
        $playAuctions[] = PlayAuction::where('user_id',$user)
                        ->where('auction_id',$auction->id)
                        ->first();
        }

        $auctionClaim = AuctionClaim::where("auction_id",$auction->id)->first();
        
        return view("auction.completed",compact('auction','bid_gained','playAuctions','bid_gained_rank','auctionClaim'),['totalBids'=>$this->totalBids,'bid_gained_rank' => $this->bid_gained_rank]);
    }
    /**
     * Block User
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function blockUser(Request $request)
    {
        $auction_user = PlayAuction::where('auction_id',$request->auction_id)
            ->where('user_id',$request->user_id)
            ->first();
            $auction_user->block_user_when = $request->whenBlockUser;
            $auction_user->whenBlock =  $request->valueAfterBlock;
            $auction_user->save();
        return back();
      
    }
    /**
     * Set Return Coin
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function setReturnCoin(Request $request)
    {
        if ($request->has('data')) {
            PlayAuction::whereIn('id',$request->data)
            ->update(["is_return_coin_checked"=>$request->status]);
        }else{
            $playAuction = PlayAuction::find($request->playId);
            $playAuction->return_coins = $request->amount;
            $playAuction->is_return_coin_checked = $request->checkbox == 'true'?1:0;
            $playAuction->save();    
        }
        
    }
    /**
     * Block User Cron
     *
     * @return Void
     */
    public function blockUserCron()
    {

        $auction =  Auction::with('playAuctions','bids')->where('status',3)->get();
        $auction->each(function($val){
            $val->playAuctions->each(function($data) use ($val){
              
                if(
                    !empty($data->block_user_when) &&
                    $data->block_user_when == 1 &&
                    $val->playAuctions->sum('auction_fee') >= $data->whenBlock){

                    PlayAuction::where('id',$data->id)->update(["is_active"=>false]);

                }
                if(
                    !empty($data->block_user_when) &&
                    $data->block_user_when == 2 &&
                    $val->bids->sum('bid_amount') >= $data->whenBlock){

                    PlayAuction::where('id',$data->id)->update(["is_active"=>false]);

                }
                if (
                    !empty($data->block_user_when) &&
                    $data->block_user_when == 3 &&
                    (int)$this->bidGained($val) >= (int)$data->whenBlock
                    ) {
                   
                    
                    PlayAuction::where('id',$data->id)->update(["is_active"=>false]);
                }
            });
        });
    }
    /**
     * Bid Gained
     *
     * @param \App\Auction $auction
     * @return \Illuminate\Http\Response
     */
    private function bidGained(Auction $auction)
    {
       
        $topThreeBidder = $auction->bids->sortByDesc('id')->take(3);

        if ($topThreeBidder->count() == false) {
            $this->bidGainedStatus = false;
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

        $this->bid_gained_rank = (object)[
            "third" =>  $third_bidders,
            "second" => $second_bidders,
            "first" => $firstBidder->bid_amount
        ];

        return array_sum([
            $third_bidders,$second_bidders,
            (float)$firstBidder->bid_amount,
            $auction->playAuctions->sum("auction_fee")
        ]);  

    }
    /**
     * Winner Transaction.
     *
     * @param  \App\User  $user
     * @param  \App\AuctionClaim  $auctionClaim
     * @param  Int  $id
     * @return \Illuminate\Http\Response
     */
    public function winnerTransaction(User $user,AuctionClaim $auctionClaim, $id)
    {
       
        switch ($id) {
            case 1:
                if ($auctionClaim->winner_claimed_success) {
                    return back();
                }
                 $coins =  $auctionClaim->winner_claim_value;
                    $tran =Transaction::create([
                        "user_id" => $user->id,
                        "desc" =>"Refund Bonus",
                        "coins" => $coins,
                        "trans" => 'CR'
                    ]);
                 $auctionClaim->update(['winner_claimed_success'=>true,'winner_transaction_id'=>$tran->id]);
                break;
            case 2:
                if ($auctionClaim->uplevel1_claimed_success) {
                    return back();
                }
                $coins = $auctionClaim->uplevel1_claim_value;
                    $tran = Transaction::create([
                        "user_id" => $user->id,
                        "desc" =>"Refund Bonus",
                        "coins" => $coins,
                        "trans" => 'CR'
                    ]);
                $auctionClaim->update(['uplevel1_claimed_success'=>true,'level1_transaction_id'=>$tran->id]);
                break;
            case 3:
                if ($auctionClaim->uplevel2_claimed_success) {
                    return back();
                }
                $coins = $auctionClaim->uplevel2_claim_value;
                    $tran = Transaction::create([
                        "user_id" => $user->id,
                        "desc" =>"Refund Bonus",
                        "coins" => $coins,
                        "trans" => 'CR'
                    ]);
                $auctionClaim->update(['uplevel2_claimed_success'=>true,'level2_transaction_id'=>$tran->id]);
                break;
            
            default:
                // code...
                break;
        }

        
        $user->wallet->increment("coins",$coins);


    }
     
   
}
