<?php

use Illuminate\Database\Seeder;
use App\NotificationSubCategory;

class NotificationSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $data = [
        	[
        		"notification_category_id" => 1,
        		"name" => 'Welcome Message - After Sign-up / Registration &amp; Email
	Notification',
        		"type" => 1
        	],
        	[
        		"notification_category_id" => 1,
        		"name" => 'Auction Winning Confirmation &amp; Email Notification',
        		"type" => 1
        	],
        	[
        		"notification_category_id" => 1,
        		"name" => 'Referral / Downline Auction Winning Confirmation &amp; Email
	Notification',
        		"type" => 1
        	],
        	[
        		"notification_category_id" => 2,
        		"name" => 'Verify your Mobile Number',
        		"type" => 1
        	],
        	[
        		"notification_category_id" => 2,
        		"name" => 'Verify your Email Address',
        		"type" => 1
        	],
        	[
        		"notification_category_id" => 2,
        		"name" => 'Complete your Address to get Product Delivery',
        		"type" => 1
        	],
        	[
        		"notification_category_id" => 2,
        		"name" => 'Complete your Profile &amp; Payment Details',
        		"type" => 1
        	],
        	[
        		"notification_category_id" => 2,
        		"name" => 'Password Reset Notification &amp; Email Notification',
        		"type" => 1
        	],
        	[
        		"notification_category_id" => 2,
        		"name" => 'Change Mobile Number Notification &amp; Email Notification',
        		"type" => 1
        	],
        	[
        		"notification_category_id" => 2,
        		"name" => 'Change Email Address Notification &amp; Email Notification',
        		"type" => 1
        	],
        	[
        		"notification_category_id" => 3,
        		"name" => 'Suspend – During Live Auction',
        		"type" => 1
        	],
        	[
        		"notification_category_id" => 3,
        		"name" => 'Suspend for few days – Full Access Disable &amp; Email
	Notification',
        		"type" => 1
        	],
        	[
        		"notification_category_id" => 3,
        		"name" => 'Fully Suspend / Deactivate – Full Access Disable &amp; Email
	Notification',
        		"type" => 1
        	],
        	[
        		"notification_category_id" => 4,
        		"name" => 'Signup Bonus with Transaction ID &amp; Email Notification',
        		"type" => 1
        	],
        	[
        		"notification_category_id" => 4,
        		"name" => 'Referral Signup Bonus (Level 1) with Transaction ID &amp; Email
	Notification',
        		"type" => 1
        	],
        	[
        		"notification_category_id" => 4,
        		"name" => 'Referral Signup Bonus (Level 2) with Transaction ID &amp; Email
	Notification',
        		"type" => 1
        	],
        	[
        		"notification_category_id" => 4,
        		"name" => 'Referral First Coin Purchase Bonus with Transaction ID &amp; Email
	Notification',
        		"type" => 1
        	],
        	[
        		"notification_category_id" => 4,
        		"name" => 'Refund Bonus with Transaction ID',
        		"type" => 1
        	],
        	[
        		"notification_category_id" => 4,
        		"name" => 'Winning Notification',
        		"type" => 1
        	],
        	[
        		"notification_category_id" => 4,
        		"name" => 'Winning Claim Product Settlement with Transaction ID &amp; Email
	Notification',
        		"type" => 1
        	],
        	[
        		"notification_category_id" => 4,
        		"name" => 'Winning Claim Cash Settlement with Transaction ID &amp; Email
	Notification',
        		"type" => 1
        	],
        	[
        		"notification_category_id" => 4,
        		"name" => 'Referral Winning Bonus Notification',
        		"type" => 1
        	],
        	[
        		"notification_category_id" => 4,
        		"name" => 'Referral Winning Claim Bonus as Coin Settlement with
	Transaction ID &amp; Email Notification',
        		"type" => 1
        	],
        	[
        		"notification_category_id" => 4,
        		"name" => 'Referral Winning Claim Bonus as Cash Settlement with
	Transaction ID &amp; Email Notification',
        		"type" => 1
        	],
        	[
        		"notification_category_id" => 4,
        		"name" => 'Admin Coin Gift Transaction with Transaction ID &amp; Email
	Notification',
        		"type" => 1
        	],
        	[
        		"notification_category_id" => 4,
        		"name" => 'User to User Coin Gift Transaction with Transaction ID',
        		"type" => 1
        	],
        	[
        		"notification_category_id" => 5,
        		"name" => 'Premium Membership Expire – Auto Notification &amp; Email
	Notification',
        		"type" => 2
        	],
        	[
        		"notification_category_id" => 5,
        		"name" => 'Coin Balance Low – When the User’s coin balance is below 200
	coins',
        		"type" => 2
        	],

        ]; 
        foreach ($data as $_data) {
        	NotificationSubCategory::create($_data);	
        }
        
    }
}
