<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\ReferEarn;

class ReferEarnController extends Controller
{
    public function edit()
    {
      if (\Auth::user()->permissions()->whereSlug('can_view_refe_and_earn_policy')->exists()) {
        
      $referEarn=ReferEarn::find(1);
      return view('referEarn.edit',compact('referEarn'));
      }else abort(403);
    }
    public function update(Request $request)
    {
      if (\Auth::user()->permissions()->whereSlug('can_view_refe_and_earn_policy')->exists()) {
        $request->validate($this->rules());
        $referEarn=ReferEarn::find(1);
        $referEarn->title=$request->title;
        $referEarn->subtitle=$request->subtitle;
        $referEarn->signup_bonus=$request->signup_bonus;
        $referEarn->purchase_bonus=$request->purchase_bonus;
        $referEarn->winning_bonus=$request->winning_bonus;
        $referEarn->invite_friend=$request->invite_friend;
        $referEarn->free_join=$request->free_join;
        $referEarn->purchase_coin=$request->purchase_coin;
        $referEarn->win_auction=$request->win_auction; 
        $referEarn->terms_condition=$request->terms_condition;
        $referEarn->save();
        return  back()->with('success','You are Succesfully updated');
      }else abort(403);

    }
    private function rules()
    {
      return [
        'title'=>'required',
        'subtitle'=>'required',
        'signup_bonus'=>'required',
        'purchase_bonus'=>'required',
        'winning_bonus'=>'required',
        'invite_friend'=>'required',
        'free_join'=>'required',
        'purchase_coin'=>'required',
        'win_auction' =>'required',
        'terms_condition'=>'required'
      ];
    }
    
}
