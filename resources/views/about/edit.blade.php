@extends('layouts.app')
@section('content')
<div class="_ad-body">
                <!-- Admin Body Header -->
                <div class="_ad-top-hdr">
                    <p class="_page-title">About Us</p>
                </div>

                <!-- Admin Body Main -->
                <div class="_ad-body-main">
                    <!-- Div : Begin -->
                  
                       
                    <form  method="POST" action="{{route('about.update')}}" class="row" enctype="multipart/form-data">
                          @csrf
                            <!-- Left Section  -->
                    <div class="_aucInfo-box-outer"> 
                        <h2 style="text-align:center"> <strong>Section -I</strong> </h2>
                       
                            <!-- Left Section  -->
                            <div class="col-md-12 _aucInfo-box-lft">
                                <div class="_aucInfo-box-lft-inner">
                                    <div class="_aucInfo-box-lft-btm">
                                        <!-- row : Begin -->  
                                        <div class="row">
                                            
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                <label for="notification_category">Description</label>                                                
                                                <textarea class="form-control" id="desc" name="description">{{ old('description',$about->description)}}</textarea>

                                                @error('description')<span class="text-danger">{{$errors->first('description')}}</span> @enderror
                                                </div>
                                            </div>
                                           
                                          </div>   
                                          <!-- row : end -->                                        
                                        </div>                                  
                                </div>
                            </div>                           
                        </div>
                        <div class="_aucInfo-box-outer"> 
                        <h2 style="text-align:center"> <strong>Section -II</strong> </h2>
                       
                            <!-- Left Section  -->
                            <div class="col-md-12 _aucInfo-box-lft">
                                <div class="_aucInfo-box-lft-inner">
                                    <div class="_aucInfo-box-lft-btm">
                                        <!-- row : Begin -->  
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                <label for="notification_category">Title</label>                                                
                                               <input type="text" class="form-control" name="title_section2" value="{{ old("title_section2",$about->title_section2) }}">

                                                @error('title_section2')<span class="text-danger">{{$errors->first('title_section2')}}</span> @enderror
                                                </div>
                                            </div>
                                            
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                <label for="notification_category">Description</label>                                                
                                                <textarea class="form-control" id="desc2" name="description_section2">{{ old('description_section2',$about->description_section2)}}</textarea>

                                                @error('description_section2')<span class="text-danger">{{$errors->first('description_section2')}}</span> @enderror
                                                </div>
                                            </div>
                                           
                                          </div>   
                                          <!-- row : end -->                                        
                                        </div>                                  
                                </div>
                            </div>                           
                        </div>
                        <div class="_aucInfo-box-outer"> 
                        <h2 style="text-align:center"> <strong>Section -III</strong> </h2>
                       
                            <!-- Left Section  -->
                            <div class="col-md-12 _aucInfo-box-lft">
                                <div class="_aucInfo-box-lft-inner">
                                    <div class="_aucInfo-box-lft-btm">
                                        <!-- row : Begin -->  
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                <label for="notification_category">Title</label>                                                
                                               <input type="text" class="form-control" name="title_section3" value="{{ old("title_section3",$about->title_section3) }}">

                                                @error('title_section3')<span class="text-danger">{{$errors->first('title_section3')}}</span> @enderror
                                                </div>
                                            </div>
                                            
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                <label for="notification_category">Description</label>                                                
                                                <textarea class="form-control" id="desc3" name="description_section3">{{ old('description_section3',$about->description_section3)}}</textarea>

                                                @error('description_section3')<span class="text-danger">{{$errors->first('description_section3')}}</span> @enderror
                                                </div>
                                            </div>
                                           
                                          </div>   
                                          <!-- row : end -->                                        
                                        </div>                                  
                                </div>
                            </div>                           
                        </div>
                        <div class="_aucInfo-box-outer"> 
                        <h2 style="text-align:center"> <strong>Section -IV</strong> </h2>
                       
                            <!-- Left Section  -->
                            <div class="col-md-12 _aucInfo-box-lft">
                                <div class="_aucInfo-box-lft-inner">
                                    <div class="_aucInfo-box-lft-btm">
                                        <!-- row : Begin -->  
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                <label for="notification_category">Title</label>                                                
                                               <input type="text" class="form-control" name="title_section4" value="{{ old("title_section4",$about->title_section4) }}">

                                                @error('title_section4')<span class="text-danger">{{$errors->first('title_section4')}}</span> @enderror
                                                </div>
                                            </div>
                                            
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                <label for="notification_category">Description</label>                                                
                                                <textarea class="form-control" id="desc4" name="description_section4">{{ old('description_section4',$about->description_section4)}}</textarea>

                                                @error('description_section4')<span class="text-danger">{{$errors->first('description_section4')}}</span> @enderror
                                                </div>
                                            </div>
                                           
                                          </div>   
                                          <!-- row : end -->                                        
                                        </div>                                  
                                </div>
                            </div>                           
                        </div>
                        <div class="_aucInfo-box-outer"> 
                        <h2 style="text-align:center"> <strong>Section -V</strong> </h2>
                       
                            <!-- Left Section  -->
                            <div class="col-md-12 _aucInfo-box-lft">
                                <div class="_aucInfo-box-lft-inner">
                                    <div class="_aucInfo-box-lft-btm">
                                        <!-- row : Begin -->  
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                <label for="notification_category">Title</label>                                                
                                               <input type="text" class="form-control" name="title_section5" value="{{ old("title_section5",$about->title_section5) }}">

                                                @error('title_section5')<span class="text-danger">{{$errors->first('title_section5')}}</span> @enderror
                                                </div>
                                            </div>
                                            
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                <label for="notification_category">Description</label>                                                
                                                <textarea class="form-control" id="desc5" name="description_section5">{{ old('description_section5',$about->description_section5)}}</textarea>

                                                @error('description_section5')<span class="text-danger">{{$errors->first('description_section5')}}</span> @enderror
                                                </div>
                                            </div>
                                           
                                          </div>   
                                          <!-- row : end -->                                        
                                        </div>                                  
                                </div>
                            </div>                           
                        </div>
                        <div class="_aucInfo-box-outer"> 
                        <h2 style="text-align:center"> <strong>Section -VI</strong> </h2>
                       
                            <!-- Left Section  -->
                            <div class="col-md-12 _aucInfo-box-lft">
                                <div class="_aucInfo-box-lft-inner">
                                    <div class="_aucInfo-box-lft-btm">
                                        <!-- row : Begin -->  
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                <label for="notification_category">Title</label>                                                
                                               <input type="text" class="form-control" name="title_section6" value="{{ old("title_section6",$about->title_section6) }}">

                                                @error('title_section6')<span class="text-danger">{{$errors->first('title_section6')}}</span> @enderror
                                                </div>
                                            </div>
                                            
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                <label for="notification_category">Description</label>                                                
                                                <textarea class="form-control" id="desc6" name="description_section6">{{ old('description_section6',$about->description_section6)}}</textarea>

                                                @error('description_section6')<span class="text-danger">{{$errors->first('description_section6')}}</span> @enderror
                                                </div>
                                            </div>

                                             <div class="col-md-12">
                                                <button type="submit" class="btn btn-success">Update</button>
                                            </div>
                                           
                                          </div>   
                                          <!-- row : end -->                                        
                                        </div>                                  
                                </div>
                            </div>                           
                        </div>



                        </form>   
                    
                 </div>
                       
                    </div>
                </div>
            </div>
            @push('script')
                <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
            <script>
            $(`#dashboard_notification, #email_description`).summernote();
        $(document).ready(function() {
            $("#notification_category").change(function(){
                $.post('', {category: this.value,_token:'{{ csrf_token() }}'}, function(data, textStatus, xhr) {
                    $("#notification_sub_category").empty().append("<option value=''>Select Sub Category</option>");
                    data.forEach(function(val,id){
                        $("#notification_sub_category").append(`<option value="${val.id}">${val.name}</option>`);
                    });
                });
            });
        });

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
  <script> CKEDITOR.replace( 'desc' );</script>
  <script> CKEDITOR.replace( 'desc2' );</script>
  <script> CKEDITOR.replace( 'desc3' );</script>
  <script> CKEDITOR.replace( 'desc4' );</script>
  <script> CKEDITOR.replace( 'desc5' );</script>
  <script> CKEDITOR.replace( 'desc6' );</script>



    
   
@endpush
@endsection