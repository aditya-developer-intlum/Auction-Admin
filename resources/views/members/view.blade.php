@extends('layouts.app')
@section('content')
<div class="_ad-body">
                <!-- Admin Body Header -->
                <div class="_ad-top-hdr">
                    <p class="_page-title">Create member  +</p>
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
                            <!-- Left Section  -->
                            <div class="col-md-12 _aucInfo-box-lft">
                                <div class="_aucInfo-box-lft-inner">
                                    <div class="_aucInfo-box-lft-btm">

                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                <label for="notification_category">Name</label>
                                                <div   class="form-control"> {{$member->name}}</div>
                                            </div>
                                            </div>
                                            <div class="col-md-6">
                                             <div class="form-group">
                                                <label for="email">Email</label>
                                                <div   class="form-control"> {{$member->email}}</div>
                                             </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                   <label for="mobile">Mobile </label>
                                                   <div   class="form-control"> {{$member->mobile_number}}</div>
                                                </div>
                                              </div>
                                              <div class="col-md-12">
                                                <div class="form-group">
                                                   <label for="image">Profile Image </label>
                                                <img src="{{asset('storage/'.$member->avatar)}}" class="img-thumbnail" width="150" width="150" alt="">
                                                </div>
                                              </div>
                                              
                                                </div>
                                          </div>                                           
                                        </div>                                  
                                    </div>
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
