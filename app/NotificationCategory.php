<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class NotificationCategory extends Model
{
    public function notificationSubCategory()
    {
    	return $this->hasMany("App\NotificationSubCategory");
    }
    public function notification()
    {
    	return $this->hasMany("App\Notification");
    }
}
