<?php

use Illuminate\Database\Seeder;
use App\Advertisment;

class AdvertismentSeeder extends Seeder
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
        		'title' => "Let's Play + Winners Page - AD Block",
        		'type' => 1,
        	],
        	[
        		'title' => "Live Auction View Page - AD Block 1",
        		'type' => 1,
        	],
        	[
        		'title' => "Live Auction View Page - AD Block 2",
        		'type' => 1,
        	],
        	[
        		'title' => "Live Auction View Page - AD Block 3",
        		'type' => 1,
        	],
        	[
        		'title' => "Starter Member - After Login",
        		'type' => 2,
        	],
        	[
        		'title' => "Basic Member- After Login",
        		'type' => 2,
        	],
        	[
        		'title' => "Advance Member - After Login",
        		'type' => 2,
        	],
        	[
        		'title' => "Premium Member (PM 1) - After Login",
        		'type' => 2,
        	],
        	[
        		'title' => "Premium Member (PM 3) - After Login",
        		'type' => 2,
        	],
        	[
        		'title' => "Premium Member (PM 6) - After Login",
        		'type' => 2,
        	],
        	[
        		'title' => "Premium Member (PM 12) - After Login",
        		'type' => 2,
        	]
        ];
        foreach ($data as $_data) {
			Advertisment::create($_data);        	
        }
    }
}
