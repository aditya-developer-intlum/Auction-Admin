<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Auction extends Model
{
    
    public function playAuctions()
    {
    	return $this->hasMany("App\PlayAuction");
    }
    public function bids()
    {
    	return $this->hasMany("App\Bid");
    }
    public function users()
    {
        return $this->hasManyThrough('App\User', 'App\PlayAuction','auction_id','id','id','user_id');
    }
    public function auctionClaim()
    {
        return $this->hasOne("App\AuctionClaim");
    }
    //
}
