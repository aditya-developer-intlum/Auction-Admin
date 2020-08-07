@extends('layouts.app')
@section('content')
<div class="_ad-body">
                <!-- Admin Body Header -->
                <div class="_ad-top-hdr">
                    <p class="_page-title">Show Notification Detail</p>
                </div>
               
               
                <!-- Admin Body Main -->
                <div class="_ad-body-main">
                    <!-- Div : Begin -->
                    <div class="_aucInfo-box-outer">
                        <form class="row" action="{{ route('notification.store') }}" method="post" enctype="multipart/form-data">
                          @csrf
                          
                            <!-- Left Section  -->
                            <div class="col-md-12 _aucInfo-box-lft">                                
                                <div class="_aucInfo-box-lft-inner">
                                
                                    <div class="_aucInfo-box-lft-btm">
                                     
                                        <div class="row">

                                            <div class="col-md-12">
                                                <div class="form-group">
    <label for="notification_category">Notification Category</label>
    :<strong> {!! $notification->notificationCategory->name ?? '' !!}</strong>
 </div>                                              
                                            </div>
                                            <div class="col-md-12">
                                                <div class="form-group">
    <label for="notification_sub_category">Notification Sub Category</label>
    :<strong> {!! $notification->notificationSubCategory->name ?? '' !!}</strong>
  </div>                                              
                                            </div>
                                        </div>
                                    <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
    <label for="notification_category"><b><u>Dashboard Notification</u></b></label>
    : <strong>{!! $notification->dashboard_notification !!}</strong>
  </div>                                              
                                            </div>
                                            
                                        </div>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group"><br><br>
 <label for="notification_category"><b><u>Email Notification:</u></b></label><br>
    <label for="notification_category">Email Subject</label>
    : <strong> {!! $notification->email_subject ?? '' !!}</strong>
  </div>                                              
                                            </div>
                                            
                                        </div>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
    <label for="notification_category">Email Description</label>
    : <strong>{!! $notification->email_description ?? '' !!}</strong>
  </div>                                              
                                            </div>
                                            
                                        </div>
  

                                    </div>

                                    <!-- Div : Begin  -->
                                    

                                    
                                       
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
                $.post('{{ route('notification.subCategory') }}', {category: this.value,_token:'{{ csrf_token() }}'}, function(data, textStatus, xhr) {
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