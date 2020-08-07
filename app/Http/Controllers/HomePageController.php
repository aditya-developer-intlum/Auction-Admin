<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use App\Homepage;
use Auth;

class HomePageController extends Controller
{
    private $homepage;

    public function __construct()
    {
        $this->homepage = Homepage::first();
    }

    public function index()
    {
        if (Auth::user()->permissions()->whereSlug('can_view_homepage')->exists()) {
            $homepage = Homepage::first();
            return view("homepage.edit",['home' => $this->homepage]);    
        }else abort(403);
        
    }

    public function store(Request $request)
    {
        if (Auth::user()->permissions()->whereSlug('can_view_homepage')->exists()) {
            $this->check($request);
            $this->homepage->update($request->all());
            return back();    
        }else abort(403);
        
    }

    private function check(Request $request){

        $request->validate([
            "title_section1" => ["required","max:1000"],
            "description_section1" => ["required","max:1000"],
            "title_section2" => ["required","max:1000"],
            "you_section2" => ["required","max:1000"],
            "level1_section2" => ["required","max:1000"],
            "level2_section2" => ["required","max:1000"],
            "note_section2" => ["required","max:1000"],
            "title_section3" => ["required","max:1000"],
            "description_section3_first" => ["required","max:1000"],
            "description_section3_second" => ["required","max:1000"],
            "description_section3_third" => ["required","max:1000"],
            "description_section3_fourth" => ["required","max:1000"],
            "description_section3_five" => ["required","max:1000"],
        ]);
        return $this;
    }
}
