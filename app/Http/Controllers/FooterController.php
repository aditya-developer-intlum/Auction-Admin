<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Footer;
use Auth;

class FooterController extends Controller
{
    public function edit()
    {
       $footer=Footer::all();
       return view('footer.edit',compact('footer'));
    }
    public function update(Request $request,Footer $footer)
    {
       $request->validate([
           'title'=>'required',
           'description'=>'required'
       ]);
       $footer->title=$request->title;
       $footer->description=$request->description;
       $footer->save();
       return back()->with('success','You are Successfully Update');
    }
    public function termsConditon()
    {
        if(Auth::user()->permissions()
        ->whereSlug('can_view_term_and_condition')
        ->exists()){

        $this->authorize('termAndCondition',AuctionClaim::class);
        $footer=Footer::all();
        return view('footer.edit',compact('footer'));
      }else abort(403);
    }
    public function privacyPolicy()
    {
      if (Auth::user()->permissions()->whereSlug('can_view_privacy_policy')->exists()){
        
        $footer=Footer::all();
        return view('footer.edit',compact('footer'));
      }else abort(403);
    }
    public function refundPolicy()
    {
      if (Auth::user()->permissions()->whereSlug('can_view_refund_policy')->exists()) {
        
        $footer=Footer::all();
        return view('footer.edit',compact('footer')); 
      } else abort(403);
    }
    public function editPerPage(Footer $footer)
    {      
        $footerAll=Footer::all();
        return view('footer.edit',compact('footerAll'));
    }
}
