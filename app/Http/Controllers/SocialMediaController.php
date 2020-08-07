<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\SocialMedium;

class SocialMediaController extends Controller
{
    public function edit()
    {
        if (\Auth::user()->permissions()->whereSlug('can_view_social_policy')->exists()) {
          $social=SocialMedium::all();
          return view('socialMedia.edit',compact('social'));  
        }else abort(403);
        
    }
    public function update(Request $request)
    { 
      if (\Auth::user()->permissions()->whereSlug('can_view_social_policy')->exists()) {
        for($i=1;$i<count($request->all());$i++){
          $social=SocialMedium::find($i);
          $social->link= $request->all()[$i];
          $social->save();
        }
        return back()->with('success','You are Succesfully Updated');
      }else abort(403);
    }
}
