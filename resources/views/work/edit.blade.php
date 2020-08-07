@extends('layouts.app')
@section('content')
<div class="_ad-body">
                <!-- Admin Body Header -->
                <div class="_ad-top-hdr">
                    <p class="_page-title">How it Works</p>
                </div>

                <!-- Admin Body Main -->
                <div class="_ad-body-main">
                    <!-- Div : Begin -->
                    <div class="_aucInfo-box-outer">
                        <h2 style="text-align:center"><strong>How it Works</strong></h2>
                    <form  method="POST" action="{{route('work.update',$work->id)}}" class="row" enctype="multipart/form-data">
                          @csrf
                            <!-- Left Section  -->
                            <div class="col-md-12 _aucInfo-box-lft">
                                <div class="_aucInfo-box-lft-inner">
                                    <div class="_aucInfo-box-lft-btm">
                                        <div class="row">
                                               <div class="col-md-12">
                                                <div class="form-group">
                                                <label for="notification_category">Sub Title</label>
                                                <textarea name="sub_title" id="desc6">{{$work->sub_title}}</textarea>
                                               @error('sub_title')  <span class="text-danger"> {{ $errors->first('sub_title') }} </span>@enderror
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                <label for="notification_category">Description 1</label>
                                                <textarea name="description" id="desc">{{$work->description}}</textarea>
                                               @error('description')  <span class="text-danger"> {{ $errors->first('description') }} </span>@enderror
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                <label for="notification_category">Description 2</label>
                                                <textarea name="description2" id="desc2">{{$work->description2}}</textarea>
                                               @error('description2')  <span class="text-danger"> {{ $errors->first('description2') }} </span>@enderror
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                <label for="notification_category">Description 3</label>
                                                <textarea name="description3" id="desc3">{{$work->description3}}</textarea>
                                               @error('description3')  <span class="text-danger"> {{ $errors->first('description3') }} </span>@enderror
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                <label for="notification_category">Description 4</label>
                                                <textarea name="description4" id="desc4">{{$work->description4}}</textarea>
                                               @error('description4')  <span class="text-danger"> {{ $errors->first('description4') }} </span>@enderror
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                <label for="notification_category">Description 5</label>
                                                <textarea name="description5" id="desc5">{{$work->description5}}</textarea>
                                               @error('description5')  <span class="text-danger"> {{ $errors->first('description5') }} </span>@enderror
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
  <script> 
  CKEDITOR.replace( 'desc' );
  CKEDITOR.replace( 'desc2' );
  CKEDITOR.replace( 'desc3' );
  CKEDITOR.replace( 'desc4' );
  CKEDITOR.replace( 'desc5' );
  CKEDITOR.replace( 'desc6' );
  </script>

    
   
@endpush
@endsection