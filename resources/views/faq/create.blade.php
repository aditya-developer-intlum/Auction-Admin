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
                        <h2 style="text-align:center"><strong>Faqs</strong></h2>
                    <form  method="POST" action="{{route('faq.store')}}" class="row" enctype="multipart/form-data">
                          @csrf
                            <!-- Left Section  -->
                            <div class="col-md-12 _aucInfo-box-lft">
                                <div class="_aucInfo-box-lft-inner">
                                    <div class="_aucInfo-box-lft-btm">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                <label for="notification_category">Category</label>
                                                <select name="faq_category" id="">
                                                    <option value="">Choose a Category</option>
                                                    @foreach ($faqCategory as $_faqCategory)
                                                    <option value="{{$_faqCategory->id}}">{{$_faqCategory->name}}</option>
                                                    @endforeach
                                                </select>
                                                 @error('faq_category')  <span class="text-danger"> {{ $errors->first('faq_category') }} </span>@enderror
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                <label for="notification_category">Title</label>
                                                <input type="text" name="title">
                                                 @error('title')  <span class="text-danger"> {{ $errors->first('title') }} </span>@enderror
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                <label for="notification_category">Description</label>
                                                <textarea name="description" id="desc"></textarea>
                                               @error('description')  <span class="text-danger"> {{ $errors->first('description') }} </span>@enderror
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <button type="submit" class="btn btn-success">Create</button>
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
  <script> CKEDITOR.replace( 'desc' );</script>

    
   
@endpush
@endsection