<?php

namespace App\Http\Controllers;

use App\MembershipPackage;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use App\User;



class MembershipPackageController extends Controller
{
    private $MembershipPackage;
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $this->authorize('viewMembershipPackage',User::class);
        $this->MembershipPackage=MembershipPackage::all();
        return view('MembershipPackage.all',['MembershipPackage'=> $this->MembershipPackage]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $this->authorize('createMembershipPackage',User::class);
        return view('MembershipPackage.add');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->MembershipPackage=new MembershipPackage();
      $validator=Validator::make($request->all(),$this->rules());
      if ($validator->fails()) {
        return redirect()->back()
                    ->withErrors($validator)
                    ->withInput();
    }

      $this->props($request)->recomended($request)
            ->sava_data($request);
      return redirect()->back()->with('success','Your are Succesfully Created');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\MembershipPackage  $membershipPackage
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
       
        return  MembershipPackage::find($id);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\MembershipPackage  $membershipPackage
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
         $this->authorize('editMembershipPackage',User::class);
         $this->MembershipPackage=MembershipPackage::findOrFail($id);
         return view('MembershipPackage.edit',['MembershipPackage'=> $this->MembershipPackage]);
        
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\MembershipPackage  $membershipPackage
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request,$id)
    {
     
        $this->MembershipPackage=MembershipPackage::find($id);
        $validator=Validator::make($request->all(),$this->rules());
        if ($validator->fails()) {
          return redirect()->back()
                      ->withErrors($validator)
                      ->withInput();
        }
        $this->props($request)
        ->sava_data($request);
        return redirect()->route('membership-package.index')->with('success1','Your are Succesfully updated');

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\MembershipPackage  $membershipPackage
     * @return \Illuminate\Http\Response
     */
    public function destroy(MembershipPackage $membershipPackage)
    {
        $this->authorize('deleteMembershipPackage',User::class);
        $membershipPackage->delete();
        return redirect()->back()->with('success','Your are Succesfully deleted');

    }
    private function rules()
    {
        return[

            "name" => 'required', 
            "validity" =>'required', 
            "price_per_month" =>'required', 
            "price_after_discount" =>'required', 
            "discount_on_coins_price"=> 'required', 
            "extra_coins" =>'required', 
            "total_price" => 'required', 
            "total_discounted_price"=> 'required', 
            "recommended" => "sometimes","boolean", 
            ];
    }
    private function props(Request $request)
    {
        $this->MembershipPackage->name=$request->name;
        $this->MembershipPackage->validity=$request->validity;
        $this->MembershipPackage->price_per_month=$request->price_per_month;
        $this->MembershipPackage->benefit=$request->total_discounted_price;
        $this->MembershipPackage->discount_coins_price=$request->discount_on_coins_price;
        $this->MembershipPackage->extra_coin=$request->extra_coins;
        $this->MembershipPackage->original_price=$request->total_price;
        $this->MembershipPackage->price=$request->price_after_discount;
             
        return $this;      
    }
    private function recomended(Request $request)
    {
        if($request->has('recommended')){
            $this->MembershipPackage->is_recommended =1;
        }
        return $this;
    }
    private function sava_data(Request $request)
    {
        $this->MembershipPackage->save();
    }

}
