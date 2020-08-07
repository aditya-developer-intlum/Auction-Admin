@extends('layouts.app')
@section('content')
<div class="_ad-body">
    <!-- Admin Body Header -->
    <div class="_ad-top-hdr">
        <p class="_page-title">Update Auction  +</p>
    </div>
    
    
    <!-- Admin Body Main -->
    <div class="_ad-body-main">
        <!-- Div : Begin -->
        <div class="_aucInfo-box-outer">
            <form class="row" action="{{ route('notification.update',$notification->id) }}" method="post" enctype="multipart/form-data">
                @csrf
                @method('PUT')
                
                <!-- Left Section  -->
                <div class="col-md-12 _aucInfo-box-lft">
                    <div class="_aucInfo-box-lft-inner">
                        
                        <div class="_aucInfo-box-lft-btm">
                            
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="notification_category">Notification Category</label>
                                        <select name="notification_category" id="notification_category" class="form-control">
                                            <option value="">Select Category</option>
                                            @foreach ($notificationCategories as $category)
                                            <option value="{{ $category->id }}" {{ old('notification_category',$notification->notification_category_id)==$category->id?"selected":'' }}>{!! $category->name ?? '' !!}</option>
                                            @endforeach
                                        </select>
                                        @error("notification_category")
                                        <span class="text-danger">{{ $message }}</span>
                                        @enderror
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="notification_sub_category">Notification Sub Category</label>
                                        <select name="notification_sub_category" id="notification_sub_category" class="form-control">
                                            <option value="">Select Sub Category</option>
                                        </select>
                                        @error("notification_sub_category")
                                        <span class="text-danger">{{ $message }}</span>
                                        @enderror
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="notification_category">Dashboard Notification</label>
                                        <textarea name="dashboard_notification" id="dashboard_notification" cols="30" rows="20">{!! $notification->dashboard_notification ?? '' !!}</textarea>
                                        @error("dashboard_notification")
                                        <span class="text-danger">{{ $message }}</span>
                                        @enderror
                                    </div>
                                </div>
                                
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="notification_category">Email Subject</label>
                                        <textarea name="email_subject"  cols="30" rows="2" >{!! $notification->email_subject ?? '' !!}</textarea>
                                        @error("dashboard_notification")
                                        <span class="text-danger">{{ $message }}</span>
                                        @enderror
                                    </div>
                                </div>
                                
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="notification_category">Email Description</label>
                                        <textarea name="email_description" id="email_description" cols="30" rows="2" >{!! $notification->email_description ?? '' !!}</textarea>
                                        @error("email_description")
                                        <span class="text-danger">{{ $message }}</span>
                                        @enderror
                                    </div>
                                </div>
                                
                            </div>
                            <button type="submit" class="btn btn-success">Submit</button>
                        </div>
                        <!-- Div : Begin  -->
                        
                        
                        <span class="text-danger">Note:- Use keyword for User Detail
                            {user_name},{name},{mobile_number},{email_address}
                        </span>
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
    selected  = "{{ $notification->notification_sub_category_id }}"==val.id?'selected':'';
$("#notification_sub_category").append(`<option value="${val.id}" ${selected}>${val.name}</option>`);
});
});
}).change();
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