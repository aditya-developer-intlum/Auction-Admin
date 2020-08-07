<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\About;
use Illuminate\Support\Facades\Validator;
use Auth;
class AboutController extends Controller
{
    private $about;

    public function __construct()
    {
        $this->about = About::first();
    }
    public function edit()
    { 
        if (Auth::user()->permissions()->whereSlug('can_view_about_us')->exists()) {
            
            return view('about.edit',['about' => $this->about]);
        }else abort(403);
    }
    public function update(Request $request)
    {
        if (Auth::user()->permissions()->whereSlug('can_view_about_us')->exists()) {
            $this->check($request);
            $this->about->update($request->all());
            return back()->with('success','You are Succesfully Edited');
        }else abort(403);
    }
    private function check(Request $request)
    {
        $request->validate([
            "description" => ["required","max:1000"],
            "title_section2" => ["required","max:1000"],
            "description_section2" => ["required","max:1000"],
            "title_section3" => ["required","max:1000"],
            "description_section3" => ["required","max:1000"],
            "title_section4" => ["required","max:1000"],
            "description_section4" => ["required","max:1000"],
            "title_section5" => ["required","max:1000"],
            "description_section5" => ["required","max:1000"],
            "title_section6" => ["required","max:1000"],
            "description_section6" => ["required","max:1000"], 
        ]);
        return $this;
    }
}
