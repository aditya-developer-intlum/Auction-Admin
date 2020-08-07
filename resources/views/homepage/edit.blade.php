@extends('layouts.app')
@section('content')
<div class="_ad-body">
                <!-- Admin Body Header -->
                <div class="_ad-top-hdr">
                    <p class="_page-title">Homepage</p>
                </div>

                <!-- Admin Body Main -->
                <div class="_ad-body-main">
                    <form  method="POST" action="{{ route('homepage.update') }}" class="row" enctype="multipart/form-data">
                          @csrf
                    <!-- Div : Begin -->
                    <div class="_aucInfo-box-outer"> 
                        <h2 style="text-align:center"> <strong> Homepage Section -I</strong> </h2>
                       
                            <!-- Left Section  -->
                            <div class="col-md-12 _aucInfo-box-lft">
                                <div class="_aucInfo-box-lft-inner">
                                    <div class="_aucInfo-box-lft-btm">
                                        <!-- row : Begin -->  
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                <label for="notification_category">Title</label>
                                                <input type="text"  class="form-control" name="title_section1" value="{{old('title_section1',$home->title_section1) }}" placeholder="Enter the Play & Win">
                                                @error('title_section1')<span class="text-danger">{{ $errors->first('title_section1') }}</span>@enderror
                                           
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                <label for="notification_category">Description</label>                                                
                                                <textarea class="form-control" id="desc1" name="description_section1">{{ old('description_section1',$home->description_section1)}}</textarea>

                                                @error('description_section1')<span class="text-danger">{{$errors->first('description_section1')}}</span> @enderror
                                                </div>
                                            </div>
                                           
                                          </div>   
                                          <!-- row : end -->                                        
                                        </div>                                  
                                </div>
                            </div>                           
                    </div>

                    <!-- div : begin  -->
                    <div class="_aucInfo-box-outer">
                        <h2 style="text-align:center"><strong>Homepage Section -II</strong>  </h2>
                       
                            <!-- Left Section  -->
                            <div class="col-md-12 _aucInfo-box-lft">
                                <div class="_aucInfo-box-lft-inner">
                                    <div class="_aucInfo-box-lft-btm">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label for="notification_category">Title</label>
                                                    <input type="text"  class="form-control" name="title_section2" value="{{ old('title_section2',$home->title_section2) }}" placeholder="Sinup & Referral Bonus">
                                                    @error('title_section2')<span class="text-danger">{{ $errors->first('title_section2') }}</span>@enderror
                                            
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label for="notification_category">Point One</label>
                                                    <input type="text"  class="form-control" name="you_section2" value="{{ old('you_section2',$home->you_section2) }}" >
                                                    @error('you_section2')<span class="text-danger">{{ $errors->first('you_section2') }}</span>@enderror
                                            
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label for="notification_category">Point Two</label>
                                                    <input type="text"  class="form-control" name="level1_section2" value="{{ old('level1_section2',$home->level1_section2) }}">
                                                    @error('level1_section2')<span class="text-danger">{{ $errors->first('level1_section2') }}</span>@enderror
                                            
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label for="notification_category">Point Three</label>
                                                    <input type="text"  class="form-control" name="level2_section2" value="{{ old('level2_section2',$home->level2_section2) }}" >
                                                    @error('level2_section2')<span class="text-danger">{{ $errors->first('level2_section2') }}</span>@enderror
                                            
                                                </div>
                                            </div>    
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label for="notification_category">Note</label>
                                                    <input type="text"  class="form-control" name="note_section2" value="{{ old('note_section2',$home->note_section2) }}" placeholder="note">
                                                    @error('note_section2')<span class="text-danger">{{ $errors->first('note_section2') }}</span>@enderror                                       
                                            
                                                </div>
                                            </div>
                                            
                                            
                                            </div>
                                                                          
                                    </div>
                                </div>
                            </div>
                    </div>
                    <!-- div : End  -->
                    
                    <!-- div : begin  -->
                    <div class="_aucInfo-box-outer">
                        <h2 style="text-align:center"><strong>Homepage Section -III</strong> </h2>
                                <div class="_aucInfo-box-lft-inner">
                                    <div class="_aucInfo-box-lft-btm">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label for="notification_category">Title</label>
                                                    <input type="text"  class="form-control" name="title_section3" value="{{ old('title_section3',$home->title_section3) }}" placeholder="Sinup & Referral Bonus">
                                                    @error('title_section3')<span class="text-danger">{{ $errors->first('title_section3') }}</span>@enderror
                                                
                                                </div>
                                            </div>
                                            
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                <label for="notification_category">Description 1</label>
                                                
                                                <textarea class="form-control" id="desc2" name="description_section3_first">{{ old('description_section3_first',$home->description_section3_first) }}</textarea>
                                                @error('description_section3_first')<span class="text-danger">{{$errors->first('description_section3_first')}}</span> @enderror
                                            </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                <label for="notification_category">Description 2 </label>
                                                
                                                <textarea class="form-control" id="desc4"  name="description_section3_second">{{ old('description_section3_second',$home->description_section3_second)}}</textarea>
                                                @error('description_section3_second')<span class="text-danger">{{$errors->first('description_section3_second')}}</span> @enderror
                                            </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                <label for="notification_category">Description 3</label>
                                                
                                                <textarea class="form-control" id="desc3"  name="description_section3_third">{{ old('description_section3_third',$home->description_section3_third)}}</textarea>
                                                @error('description_section3_third')<span class="text-danger">{{$errors->first('description_section3_third')}}</span> @enderror
                                            </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                <label for="notification_category">Description 4</label>
                                                
                                                <textarea class="form-control" id="desc6"  name="description_section3_fourth">{{ old('description_section3_fourth',$home->description_section3_fourth)}}</textarea>
                                                @error('description_section3_fourth')<span class="text-danger">{{$errors->first('description_section3_fourth')}}</span> @enderror
                                            </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                <label for="notification_category">Description 5</label>
                                                
                                                <textarea class="form-control" id="desc7"  name="description_section3_five">{{ old('description_section3_five',$home->description_section3_five)}}</textarea>
                                                @error('description_section3_five')<span class="text-danger">{{$errors->first('description_section3_five')}}</span> @enderror
                                                </div>
                                            </div>

                                    
                                            <div class="col-md-12">
                                                <button class="btn btn-success" type="submit">Update</button>
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
                    <!-- div : end  -->

                    
                         
                        </div>
                    </div>
                </div>
            </div>
            @push('script')    



            <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
                
            <script>    $('#playWin').summernote({
                height:300,
                });y(function() {
            $("#notification_category").change(function(){
                $.post('', {category: this.value,_token:'{{ csrf_token() }}'}, function(data, textStatus, xhr) {
                    $("#notification_sub_category").empty().append("<option value=''>Select Sub Category</option>");
                    data.forEach(function(val,id){
                        $("#notification_sub_category").append(`<option value="${val.id}">${val.name}</option>`);
                    });
                });
            });
        });




    </script>

            <script src="//cdn.ckeditor.com/4.13.1/standard/ckeditor.js"></script>
            <script>
                CKEDITOR.replace( 'desc1' );
            </script>
            <script>
                CKEDITOR.replace( 'desc2' );
                CKEDITOR.replace( 'desc3' );
                CKEDITOR.replace( 'desc4' );
                CKEDITOR.replace( 'desc5' );
                CKEDITOR.replace( 'desc6' );
                CKEDITOR.replace( 'desc7' );                
            </script>
            <script>
               @if (Session::has('success'))
                        Swal.fire({
                position: 'top-end',
                icon: 'success',
                title: 'Your work has been saved',
                showConfirmButton: false,
                timer: 1500
                })
              @endif 
            </script>




@endpush
@endsection