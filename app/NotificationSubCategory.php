<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class NotificationSubCategory extends Model
{
    public function notificationCategory()
    {
    	return $this->belongsTo("App\NotificationCategory");
    }
    public function notification()
    {
    	return $this->hasMany("App\Notification");
    }
}
