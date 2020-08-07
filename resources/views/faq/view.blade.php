@extends('layouts.app')
@section('content')
<div class="_ad-body">
                <!-- Admin Body Header -->
                <div class="_ad-top-hdr">
                    <p class="_page-title">Faqs</p>
                </div>

                <!-- Admin Body Main -->
                <div class="_ad-body-main">
                    <!-- Div : Begin -->
                    <div class="_aucInfo-box-outer">
                        <h2 style="text-align:center"><strong>Faqs View</strong></h2>
                        <div class="raw">
                        {{-- <label for="notification_category">Title</label> --}}
                        <strong>Title</strong> <br>
                        {{ $faq->title }} <br>
                        <strong>Faq Category</strong> <br>
                        {{ $faq->faqCategory->name }}  <br>
                        <strong>Description</strong> <br>
                        {!! $faq->description !!}  <br>                        
                        <a href="{{route('cancel')}}" class="btn btn-success">Cancel</a>    
                    </div>



              
                    </div>
                 </div>
                       
                    </div>
                </div>
            </div>
         
@endsection