<?php

namespace App\Http\Controllers;

use App\CoinPackage;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use PhpParser\Node\Stmt\Return_;
use App\User;

class CoinPackageController extends Controller
{
    private $coinPackage;
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $this->authorize('viewCoinPackage',User::class);
        $data['normalCoinPackage']= CoinPackage::whereIsFirst(false)->whereIsPMember(false)->get();
        $data['specialTrialCoinPackage']=CoinPackage::whereIsFirst(true)->get();
        $data['premiumCoinPackage_1']=CoinPackage::whereIsPMember(true)->wherePMemberValidity(1)->get();
        $data['premiumCoinPackage_3']=CoinPackage::whereIsPMember(true)->wherePMemberValidity(3)->get();
        $data['premiumCoinPackage_6']=CoinPackage::whereIsPMember(true)->wherePMemberValidity(6)->get();
        return view("coins.all",$data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $this->authorize('createCoinPackage',User::class);
        return view("coins.add");
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {  
        //   dd($request->all());
            $this->coinPackage = new CoinPackage;
               $validator= Validator::make($request->all(),$this->rules($request));
               if($validator->fails()){
                   return redirect()->back()
                          ->withErrors($validator)
                          ->withInput();
               }
                $this->props($request)->save();
                return back()->with('Success1',"Coin Package Created");
     
        

    }
    /**
     * Display the specified resource.
     *
     * @param  \App\CoinPackage  $coinPackage
     * @return \Illuminate\Http\Response
     */
    public function show(CoinPackage $coinPackage)
    {
        // CoinPackage::find()
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\CoinPackage  $coinPackage
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $this->authorize('editCoinPackage',User::class);
        $this->coinPackage= CoinPackage::find($id);      
        return view("coins.edit",['coinPackage'=> $this->coinPackage]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\CoinPackage  $coinPackage
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $this->coinPackage =CoinPackage::find($id);
        $validator= Validator::make($request->all(),$this->rules($request));
        if($validator->fails()){
            return redirect()->back()
                   ->withErrors($validator)
                   ->withInput();
        }
        $this->props($request)->save();
        return redirect()->route('coins.index')->withSuccess1("Coin Package Updated");
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\CoinPackage  $coinPackage
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $this->authorize('deleteCoinPackage',User::class);
        $this->coinPackage=CoinPackage::find($id);
        $this->coinPackage->delete();
        return redirect()->route('coins.index')->withSuccess("Coin Package Updated");

    }
    private function check()
    {

    }

    private function rules(Request $request)
    {
         

          switch($request->type){
              case "is_p_member":
                return
                   [ 
                    'premium_pack_category'        =>'required',  
                    'premium_package_name'         =>'required',
                    'premium_package_price'        =>'required',
                    'premium_price_after_discount' =>'required',
                    'premium_p_member_pay'         =>'required',
                    'premium_value_coins'          =>'required',
                    'premium_extra_coins'          =>'required',
                    'premium_total_coins'          =>'required',
                    'premium_p_member_exta_coins'  =>'required',
                    'premium_you_can_save'         =>'required',
                   ];
                   break;
                case "is_first":
                    return [
                        'special_trial_package_name'         =>'required',
                        'special_trial_package_price'        =>'required',
                        'special_trial_price_after_discount' =>'required',
                        'special_trial_value_coins'          =>'required',
                    ];
                    break;   
                   default:
                   return
                   [ 
                    'package_name'        =>'required',
                    'package_price'       =>'required',
                    'price_after_discount'=>'required',
                    'total_coins'         =>'required',
                    'p_member_pay'        =>'required',
                    'value_coins'         =>'required',
                    'extra_coins'         =>'required',
                    'p_member_exta_coins' =>'required',
                    'you_can_save'        =>'required',
                   ];
          }

     
        
    }
    
    private function props(Request $request):object
    {   
        switch($request->type){
           case "is_p_member":
                $this->coinPackage->p_member_validity=$request->premium_pack_category;
                $this->coinPackage->is_p_member = 1;
                $this->coinPackage->package_name = $request->premium_package_name;
                $this->coinPackage->package_original_price = $request->premium_package_price;
                $this->coinPackage->package_price = $request->premium_price_after_discount;
                $this->coinPackage->total_coins = $request->premium_total_coins;
                $this->coinPackage->p_member_pay = $request->premium_p_member_pay;
                $this->coinPackage->value_coin = $request->premium_value_coins;
                $this->coinPackage->extra_coin = $request->premium_extra_coins;
                $this->coinPackage->p_member_get_extra = $request->premium_p_member_exta_coins;
                $this->coinPackage->you_can_save = $request->premium_you_can_save;
                break;
            case 'is_first':
                $this->coinPackage->is_first=1;
                $this->coinPackage->package_name=$request->special_trial_package_name;
                $this->coinPackage->package_original_price = $request->special_trial_package_price;
                $this->coinPackage->package_price=$request->special_trial_price_after_discount;
                $this->coinPackage->value_coin=$request->special_trial_value_coins;
                break;
            default:        
                $this->coinPackage->package_name = $request->package_name;
                $this->coinPackage->package_original_price = $request->package_price;
                $this->coinPackage->package_price = $request->price_after_discount;
                $this->coinPackage->total_coins = $request->total_coins;
                $this->coinPackage->p_member_pay = $request->p_member_pay;
                $this->coinPackage->value_coin = $request->value_coins;
                $this->coinPackage->extra_coin = $request->extra_coins;
                $this->coinPackage->p_member_get_extra = $request->p_member_exta_coins;
                $this->coinPackage->you_can_save = $request->you_can_save;

        } 
        

        // $this->coinPackage->you_saved = $request->you_saved;
        // $this->coinPackage->is_first = $request->is_first;
        // $this->coinPackage->is_p_member = $request->is_p_member;
        // $this->coinPackage->p_member_validity = $request->p_member_validity;
        return $this; 
    }
    private function save()
    {
       $this->coinPackage->save();
    }

}
