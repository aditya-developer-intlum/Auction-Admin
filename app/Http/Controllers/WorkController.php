<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Work;
use Illuminate\Validation\Validator;
use Auth;

class WorkController extends Controller
{
    public function edit()
    {
        if (Auth::user()->permissions()->whereSlug('can_view_how_it_work')->exists()) {
            $work=Work::find(1);
            return view('work.edit',compact('work'));      
        }
    }
    public function update(Request $request ,$id)
    {
        if (Auth::user()->permissions()->whereSlug('can_view_how_it_work')->exists()) {
            $work=Work::find($id);
            $request->validate([
                 'description'=>'required',
                 'description2'=>'required',
                 'description3'=>'required',
                 'description4'=>'required',
                 'description5'=>'required',
                 'sub_title'=>'required',
            ]);
            $work->description=$request->description;
            $work->description2=$request->description2;
            $work->description3=$request->description3;
            $work->description4=$request->description4;
            $work->description5=$request->description5;
            $work->sub_title=$request->sub_title;
            $work->save();
            return back()->with('success','You are Succesfull Edited ' );
        }else abort(403);
    }
    
}
