<?php

namespace App\Http\Controllers;

use App\Advertisment;
use Illuminate\Http\Request;

class AdvertismentController extends Controller
{
    private $type;
    
    public function __construct()
    {
        switch (request()->segment(1)) {
            case 'advertisment':
                $this->type = 1;
                break;
            case 'segmented-advertisment':
                $this->type = 2;
                break;
        }

    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

        if($this->type==1){
          //  $this->authorize('defaultAdBlock',Advertisment::class); 
        }else{
       //  $this->authorize('popUpAdBlock',Advertisment::class); 
        }
        $ads = Advertisment::whereType($this->type)->get();
        return view("advertisment.edit",compact('ads'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        if($this->type==1){
           // $this->authorize('defaultAdBlock',Advertisment::class); 
        }else{
        // $this->authorize('popUpAdBlock',Advertisment::class); 
        }
        foreach ($request->count as $count) {
            $code = "code{$count}";
            $is_active = "is_active{$count}";
            $advertisment = Advertisment::find($count);
            $advertisment->code = $request->$code;
            $advertisment->is_active = $request->$is_active?false:true;
            $advertisment->save();
        }
        return back()->withSuccess("Advertisment is created");
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Advertisment  $advertisment
     * @return \Illuminate\Http\Response
     */
    public function show(Advertisment $advertisment)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Advertisment  $advertisment
     * @return \Illuminate\Http\Response
     */
    public function edit(Advertisment $advertisment)
    {
        
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Advertisment  $advertisment
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Advertisment $advertisment)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Advertisment  $advertisment
     * @return \Illuminate\Http\Response
     */
    public function destroy(Advertisment $advertisment)
    {
        //
    }
}
