@extends('layouts.app')
@section('content')
<div class="_ad-body">
                <!-- Admin Body Header -->
                <div class="_ad-top-hdr">
                    <p class="_page-title">Edit SubAdmin  +</p>
                </div>
                                @if ($errors->any())
                    <div class="alert alert-danger">
                        <ul>
                            @foreach ($errors->all() as $error)
                                <li>{{ $error }}</li>
                            @endforeach
                        </ul>
                    </div>
                {{-- <img src="{{ $image ?? $default}}" alt=""> --}}
                @endif
                <!-- Admin Body Main -->
                <div class="_ad-body-main">
                    <!-- Div : Begin -->
                    <div class="_aucInfo-box-outer">
                    <form  method="POST" action="{{route('sub-admin.update',$subAdmin->id)}}" class="row" enctype="multipart/form-data">
                          @csrf
                          @method('PUT')
                            <!-- Left Section  -->
                            <div class="col-md-12 _aucInfo-box-lft">
                                <div class="_aucInfo-box-lft-inner">
                                    <div class="_aucInfo-box-lft-btm">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                <label for="notification_category">Name</label>
                                                <input type="text"  class="form-control" name="name" value="{{$subAdmin->name}}"  placeholder="enter the number">
                                            </div>
                                            </div>
                                            <div class="col-md-6">
                                             <div class="form-group">
                                                <label for="email">Email</label>
                                             <input type="email"  class="form-control" name="email" value="{{$subAdmin->email}}" placeholder="enter the email" >
                                             </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                   <label for="mobile">Mobile </label>
                                                <input type="number"  class="form-control" name="mobile_number" value="{{$subAdmin->mobile_number}}" placeholder="enter the mobile" >
                                                   @error("mobile")
                                                   <span class="text-danger"></span>
                                                   @enderror
                                                </div>
                                              </div>
                                              <div class="col-md-12">
                                                <div class="form-group">
                                                   <label for="password">Password </label>
                                                   <input type="text"  class="form-control" name="password" placeholder="enter the password" >
                                                   @error("password")
                                                   <span class="text-danger"></span>
                                                   @enderror
                                                </div>
                                              </div>
                                              <div class="col-md-12">
                                                <div class="form-group">
                                                   <label for="confirm_password">Confirm Password</label>
                                                   <input type="text"  class="form-control" name="confirm_password" placeholder="enter the Confirm Password" >
                                                   @error("confirm_password")
                                                   <span class="text-danger"></span>
                                                   @enderror
                                                </div>
                                              </div>
                                              <div class="col-md-12">
                                                <div class="form-group">
                                                   <label for="image">Profile Image </label>
                                                   <input type="file"  class="form-control" name="image" placeholder="enter the Confirm Password" >
                                                   <img src="{{asset('storage/'.$subAdmin->avatar ?? "profileImage.png")}}" class="img-thumbnail" width="75" alt="">

                                                   @error("image")
                                                   <span class="text-danger"></span>
                                                   @enderror
                                                </div>
                                              </div>
                                              <div class="col-md-12">
                                                <div class="form-group">
                                                    <input type="hidden" name="role_id" value="2">
                                                    <button type="submit" class="btn btn-success">Update Admin</button>
                                                </div>
                                              </div>
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
             <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
@push('script')
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
              icon: 'success',
              title: 'Success',
              text: '{{ Session::get('success') }}',
            });
        @endif
    </script>
@endpush
@endsection