<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class AnalyticLog extends Model
{
    protected $fillable = ["user_id","login_date_time","logout_date_time","user_agent","ip_address"];

    protected $dates = ["login_date_time","logout_date_time"];

    public function user()
    {
    	return $this->belongsTo("App\User");
    }
}
