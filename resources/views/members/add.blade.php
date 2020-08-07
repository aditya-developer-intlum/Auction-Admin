@extends('layouts.app')
@section('content')
<div class="_ad-body">
                <!-- Admin Body Header -->
                <div class="_ad-top-hdr">
                    <p class="_page-title">Create New Member  +</p>
                </div>
                <!-- Admin Body Main -->
                <div class="_ad-body-main">
                    <!-- Div : Begin -->
                    <div class="_aucInfo-box-outer">
                        <form  method="POST" action="{{ route('member.store') }}" class="row" enctype="multipart/form-data">
                          @csrf
                            <!-- Left Section  -->
                            <div class="col-md-12 _aucInfo-box-lft">
                                <div class="_aucInfo-box-lft-inner">
                                    <div class="_aucInfo-box-lft-btm">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                <label for="notification_category">Full Name</label>
                                                <input type="text"  class="form-control" name="name" value="{{old('name')}}" placeholder="Enter the Full Name">
                                                @error('name')<span class="text-danger">{{ $errors->first('name') }}</span>@enderror
                                            </div>
                                            </div>
                                            <div class="col-md-6">
                                             <div class="form-group">
                                                <label for="email">Email</label>
                                                <input type="email"  class="form-control" name="email" value="{{old('email')}}" placeholder="Enter the Email" >
                                               @error('email') <span class="text-danger">{{ $errors->first('email') }}</span> @enderror

                                             </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                   <label for="mobile">Mobile Number</label>
                                                   <input type="number"  class="form-control" name="mobile" value="{{old('mobile')}}" placeholder="Enter the Mobile Number" >
                                                   @error("mobile")<span class="text-danger">{{ $errors->first('mobile')}}</span>
                                                   @enderror
                                                </div>
                                              </div>
                                              <div class="col-md-12">
                                                <div class="form-group">
                                                   <label for="mobile">Username </label>
                                                   <input type="text"  class="form-control" name="user_name" value="{{old('user_name')}}" placeholder="Enter the Username" >
                                                   @error("user_name")<span class="text-danger">{{ $errors->first('user_name')}}</span> @enderror
                                                </div>
                                              </div>
                                              <div class="col-md-12">
                                                <div class="form-group">
                                                   <label for="password">Password </label>
                                                   <input type="password"  class="form-control" name="password" value="{{old('password')}}" placeholder="Enter the Password" >
                                                   @error("password") <span class="text-danger">{{$errors->first('password')}}</span> @enderror
                                                </div>
                                              </div>
                                              <div class="col-md-12">
                                                <div class="form-group">
                                                   <label for="confirm_password">Confirm Password</label>
                                                   <input type="password"  class="form-control" name="confirm_password" value="{{old('confirm_password')}}" placeholder="Enter The Confirm Password" >
                                                   @error("confirm_password")<span class="text-danger">{{$errors->first('confirm_password')}}</span>@enderror
                                                </div>
                                              </div>
                                              <div class="col-md-12">
                                                <div class="form-group">
                                                   <label for="image">Profile Image </label>
                                                   <input type="file"  class="form-control" name="image" > 
                                                </div>
                                              </div>
                                              <div class="col-md-12">
                                                <div class="form-group">
                                                    <button type="submit" class="btn btn-success">Add Member</button>
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
        alert("dfdff");
            Swal.fire({
              icon: 'success',
              title: 'Success',
              text: '{{ Session::get('success') }}',
            });
        @endif
    </script>
@endpush
@endsection