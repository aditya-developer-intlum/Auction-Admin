@extends('layouts.app')
@section('content')
<div class="_ad-body">
                <!-- Admin Body Header -->
                <div class="_ad-top-hdr">
                    <p class="_page-title">Advertisement With Us</p>
                </div>
                <!-- Admin Body Main -->
                <div class="_ad-body-main">
                    <!-- Div : Begin -->
                    
                    <div class="_aucInfo-box-outer">
                    <h2 style="text-align:center"><strong>Advertisement With Us</strong></h2>
                    <form  method="POST" action="{{route('advertiseCMS.store')}}" class="row" >
                          @csrf
                            <!-- Left Section  -->
                            <div class="col-md-12 _aucInfo-box-lft">
                                <div class="_aucInfo-box-lft-inner">
                                    <div class="_aucInfo-box-lft-btm">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                <label for="notification_category">Title</label>
                                                <input type="text" name="title" value="{{ old('title',$advertise->title) }}">
                                                 @error('title')  <span class="text-danger"> {{ $errors->first('title') }} </span>@enderror
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                <label for="notification_category">Description</label>
                                                <textarea name="description" id="desc">{{ old('description',$advertise->description) }}</textarea>
                                               @error('description')  <span class="text-danger"> {{ $errors->first('description') }} </span>@enderror
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <button type="submit" class="btn btn-success">Update</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>                                           
                                 </div>                                  
                             </div>
                        </form>   
                    </div>
                   
                 </div>
                       
                    </div>
                </div>
            </div>
            @push('script')
                <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
            <script>
          

        @if (Session::has('success'))
                        Swal.fire({
                position: 'top-end',
                icon: 'success',
                title: '{{ Session::get('success') }}',
                showConfirmButton: false,
                timer: 1500
                })
              @endif 
    </script>
 
  <script src="//cdn.ckeditor.com/4.13.1/standard/ckeditor.js"></script>
  
  <script> CKEDITOR.replace( "desc");</script>    
 

    
   
@endpush
@endsection