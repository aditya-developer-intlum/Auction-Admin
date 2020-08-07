<?php

namespace App;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Illuminate\Database\Eloquent\SoftDeletes;
use App\Transaction;
use Carbon\Carbon;

class User extends Authenticatable
{
    use Notifiable,SoftDeletes;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'password',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token','api_token',
    ];
    protected $dates = ['deleted_at'];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
        'created_at' => 'datetime'
    ];
    public function wallet()
    {
        return $this->hasOne("App\Wallet");
    }
    public function playAuction()
    {
        return $this->hasMany("App\PlayAuction");
    }
    public function membership()
    {
        return $this->belongsTo("App\Membership");
    }
    public function transactions()
    {
        return $this->hasMany("App\Transaction");
    }
    public function bids()
    {
        return $this->hasMany("App\Bid");
    }
    public function package()
    {
        return $this->belongsTo('App\MembershipPackage','package_id','id');
    }
    public function uplinkOne()
    {
        return $this->belongsTo('App\User','uplink1','id');
    }
    public function uplinkTwo()
    {
        return $this->belongsTo('App\User','uplink2','id');
    }
    public function downlink()
    {
        return $this->hasMany("App\User","uplink1","id");
    }
    public function getSpentCoinsAttribute()
    {
        return Transaction::where('trans','DR')->where('user_id',$this->id)
        // ->get();
        ->sum('coins');
    }
    public function permissions($condition="") {
        return $this->hasManyThrough('App\Permission',
                'App\UserPermission',
                'user_id',
                'id', 'id',
                'permission_id'
            );
    }
    public function winner()
    {
        return $this->hasMany("App\PlayAuction")->where("is_winner",true);
    }
    public function activeDayAgo()
    {
        return $this->hasOne("App\PlayAuction")->whereBetween("created_at",[Carbon::now()->subDays(15)->format("Y-m-d"),Carbon::now()]);
    }

}
