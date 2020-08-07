<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Faq;
Use App\FaqCategory;

class FaqController extends Controller
{
    private $faq;
    public function index()
    {
         $this->authorize('viewAny',Faq::class);
         $this->faq=Faq::with('faqCategory')->get();
         return view('faq.index',['faq'=>$this->faq]);
    }
    public function create()
    {  
        $this->authorize('create',Faq::class);
        $faqCategory=FaqCategory::all();
        return view('faq.create',compact('faqCategory'));
    }
    public function store(Request $request)
    {
      $this->authorize('create',Faq::class);
      $request->validate([
          'faq_category'=>'required',
          'title'=>'required',
          'description'=>'required',
      ]);
      $this->faq=new Faq;
      $this->faq->faq_category_id=$request->faq_category;
      $this->faq->title=$request->title;
      $this->faq->description=$request->description;
      $this->faq->save();
      return redirect()->route('faq.all')->with('success','You are Successfully created.');    
    }
    public function view(Faq $faq)
    {
      $this->authorize('view',Faq::class);
      return view('faq.view',compact('faq'));
      
    }
    public function edit(Faq $faq)
    {
        $this->authorize('update',Faq::class);
        $faqCategory=FaqCategory::all();        
        return view('faq.edit',compact('faq','faqCategory'));
    }
    public function update(Request $request,Faq $faq)
    {
        // dd($request->all());
   
      $this->authorize('update',Faq::class);
     $this->faq=$faq;
     $this->faq->faq_category_id=$request->faq_category;
     $this->faq->title=$request->title;
     $this->faq->description=$request->description;
     $this->faq->save();
    //  return $this->faq;
     return back()->with('success','You are Successfully Updated.');    
    }

    public function destroy(Faq $faq)
    {
        $this->authorize('delete',Faq::class);
        $faq->delete();
        return back()->with('success','You are Successfully deleted.');    


    }
    
 
}
?>