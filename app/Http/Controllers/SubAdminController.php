<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Validator;

use Illuminate\Http\Request;
use App\User;
use Illuminate\Support\Facades\Hash;



class SubAdminController extends Controller
{
    
     private $SubAdmin;/**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $this->authorize('subAdminAllView',User::class);
        $this->SubAdmin=User::whereRoleId(2)->paginate(15);
        return view('subAdmin.all',['subAdmin'=>$this->SubAdmin]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $this->authorize('subAdminAdd',User::class);
        return view('subAdmin.add');
        
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validator=Validator::make($request->all(),$this->rules());
        if ($validator->fails()) {
            return back()->withInput()->withErrors($validator);
        }
         $this->SubAdmin= new User;
         $this->props($request)
              ->uploadImage($request)
              ->save_data($request);
         return back()->with(["success"=>"You are Succesfully created SubAdmin"]);   
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $this->authorize('subAdminView',User::class);
        $this->SubAdmin=User::find($id);
        return view('subAdmin.view',['subAdmin'=>$this->SubAdmin]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {  
        $this->authorize('subAdminEdit',User::class);
        $this->SubAdmin=User::find($id);
        return view('subAdmin.edit',['subAdmin'=> $this->SubAdmin]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request,$id)
    {
        $this->SubAdmin=User::find($id);
        $validator=validator::make($request->all(),$this->updateRules($request));
        if ($validator->fails()) {
            return redirect()
                       ->back()
                        ->withErrors($validator)
                       ->withInput();
        }
        $this->updateProps($request)
              ->uploadImage($request)
              ->save_data($request);
              return back()->with(["success"=>"You are Succesfully updated SubAdmin"]);

        
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        // $this->authorize('subAdminDelete',User::class);
        $this->SubAdmin=User::find($id);
        $this->SubAdmin->delete();
        return back()->with('delete','Your file has been deleted.');
    }
    private function rules()
    {
      
        return [
            'name'=>'required',
            'email'=>'required|unique:users,email',
            'mobile_number'=>'required|unique:users,mobile_number',
            'password'=>'required|same:confirm_password',
            'confirm_password'=>'required',
        ];
    }
    private function updateRules(Request $request)
    {
     if($request->has('password')&& $request->password){
        return [
            'name'=>'required',
            'email'=>'required',
            'mobile_number'=>'required|min:10"max:13',
            'password'=>'required|same:confirm_password|min:10',
            'confirm_password'=>'required',
        ];
     }else{
        return [
            'name'=>'required',
            'email'=>'required',
            'mobile_number'=>'required|min:10"max:13',
        ];
     }
    }
    private function props(Request $request)
    {     
        $this->SubAdmin->name=$request->name;
        $this->SubAdmin->email=$request->email;
        $this->SubAdmin->role_id=$request->role_id;
        $this->SubAdmin->mobile_number=$request->mobile_number;
        $this->SubAdmin->password=Hash::make($request->password);
        return $this;
    }
    private function uploadImage(Request $request)
    { 

       if($request->has('image')&& $request->image){
        $this->SubAdmin->avatar=$request->image->store("subAdmin","public");  
       }
       return $this;
    }
    private function save_data(Request $request)
    {
        $this->SubAdmin->save();
    }
    private function updateProps(Request $request)
    {
      $this->SubAdmin->name=$request->name;
      $this->SubAdmin->email=$request->email;
      $this->SubAdmin->mobile_number=$request->mobile_number;
      if($request->image){
        $this->SubAdmin->password=Hash::make($request->password);
      }
      return $this;
    }
}
