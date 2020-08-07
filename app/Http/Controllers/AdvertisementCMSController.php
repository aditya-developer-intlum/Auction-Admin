<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\AdvertisementCms;

class AdvertisementCMSController extends Controller
{
	private $advertise;

	public function __construct()
	{
		$this->advertise = AdvertisementCms::first();
	}
    public function index()
    {
        if (\Auth::user()->permissions()->whereSlug('can_view_advertise_with_us_policy')->exists()) {
            return view("advertise-with-us.index",['advertise' => $this->advertise]);    
        }else abort(403);
    	
    }
    public function store(Request $request)
    {
        if (\Auth::user()->permissions()->whereSlug('can_view_advertise_with_us_policy')->exists()) {
            
        	$this->check($request);
        	$this->advertise->update($request->all());
        	return back();
        }else abort(403);
    }
    private function check(Request $request)
    {
    	$request->validate([
    		'title' => ["required","max:255"],
    		'description' => ["required"]
    	]);
    	return $this;
    }
}
