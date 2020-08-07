<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Transaction extends Model
{
    protected $guarded=[];

    public function user()
    {
        return $this->belongsTo('App\User');
    }

    public function coinPackage()
    {
    	return $this->belongsTo('App\CoinPackage','package_id');
    }

    public function membership()
    {
    	return $this->belongsTo('App\MembershipPackage','membership_package_id');
    }
    public function transactionType()
    {
        return $this->belongsTo('App\TransactionType','type');
    }

}
