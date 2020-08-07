@extends('layouts.app')
@section('content')
<div class="_ad-body">
                <!-- Admin Body Header -->
                <div class="_ad-top-hdr">
                    <p class="_page-title">Social Media Links</p>
                </div>
                <!-- Admin Body Main -->
                <div class="_ad-body-main">
                    <h2 style="text-align:center;text-decoration:underline"> <strong >Social Media links</strong></h2>
                <form  method="POST" action="{{route('social-media.update')}}" class="row" enctype="multipart/form-data">
                        @csrf
                     
                          <!-- Left Section  -->
                          <div class="col-md-6" style="padding:50px;margin:auto;border:3px solid black;border-radius: 15px">
                              <div class="_aucInfo-box-lft-inner">
                                  <div>
                                      <div class="row">
                                          @foreach ($social as $_social )
                                          <div class="col-md-12">
                                            <div class="form-group">
                                            <label >{{ $_social->name }}</label>
                                            <input type="text" name="{{ $_social->id }}" value="{{ $_social->link??"" }}"  placeholder="Enter {{ $_social->name }} link" style="border-radius: 10px">
                                             @error('link')  <span class="text-danger"> {{ $errors->first('link') }} </span>@enderror
                                            </div>
                                        </div>
                                          @endforeach
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
@endpush
           
@endsection