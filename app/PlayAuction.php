<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PlayAuction extends Model
{
    public function user()
    {
		return $this->belongsTo("App\User");
    }
    public function bid()
    {
        return $this->hasOne('App\Bid','auction_id','auction_id');
    }
}
