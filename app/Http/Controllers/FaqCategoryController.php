<?php

namespace App\Http\Controllers;

use App\FaqCategory;
use Illuminate\Http\Request;

class FaqCategoryController extends Controller
{
    private $faqCategory;

    public function __construct(FaqCategory $faqCategory)
    {
        $this->faqCategory = $faqCategory;
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $this->authorize('create',$this->faqCategory);
        $faqCategory=FaqCategory::all();
        return view('faqCategory.add',compact('faqCategory'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->authorize('create',$this->faqCategory);
       $request->validate(['name'=>'required']);
       $faqCategory=new FaqCategory;
       $faqCategory->name=$request->name;
       $faqCategory->save();
       return back()->with('success','You are Successfully created Category');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $this->authorize('update',$this->faqCategory);
         FaqCategory::find($id);
         return redirect()->route('faq-category.create');
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request,FaqCategory $faqCategory)
    {
        $this->authorize('update',$this->faqCategory);
        $faqCategory->update(["name"=>$request->name]);
        return back()->with('success','You are Successfully updated Category');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(FaqCategory $faq_category)
    {
        $this->authorize('delete',$this->faqCategory);
        $faq_category->delete();
        return back()->with('delete','Your file has been deleted.');

    }
}
