<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Notification extends Model
{
    public function notificationCategory()
    {
    	return $this->belongsTo("App\NotificationCategory");
    }
    public function notificationSubCategory()
    {
    	return $this->belongsTo("App\NotificationSubCategory");
    }
}
