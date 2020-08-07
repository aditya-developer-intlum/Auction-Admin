@extends('layouts.app')
@section('content')
<div class="_ad-body">
                <!-- Admin Body Header -->
                <div class="_ad-top-hdr">
                    <p class="_page-title">Faqs Category</p>
                </div>

                <!-- Admin Body Main -->
                <div class="_ad-body-main">
                    <!-- Div : Begin -->
                    <div class="_aucInfo-box-outer">
                        <h2 style="text-align:center"><strong>Faqs Category</strong></h2>
                            <form  method="POST" action="{{route('faq-category.store')}}" class="row" enctype="multipart/form-data" id="form">
                            @csrf
                                <!-- Left Section  -->
                                <div id="putMethod"></div>
                                <div class="col-md-12 _aucInfo-box-lft">
                                    <div class="_aucInfo-box-lft-inner">
                                        <div class="_aucInfo-box-lft-btm">
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                    <label for="notification_category">Name</label>
                                                    <input type="text" name="name" id="name" placeholder="Enter a Catergory Name ">
                                                    @error('name')  <span class="text-danger"> {{ $errors->first('name') }} </span>@enderror
                                                    </div>
                                                </div>                                         
                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                        <button type="submit" class="btn btn-success">Create </button>
                                                    <a href="{{route('cancel')}}" class="btn btn-success">back</a>
                                                        {{-- <button type="button" class="btn btn-success">Cancel </button> --}}
                                                    </div>
                                                </div>
                                            </div>
                                        </div>                                           
                                    </div>                                  
                                </div>
                            </form>     
                    </div>

                    <!-- div end -->

                    <div class="_aucInfo-box-outer" style="padding: 25px">
                        <div class="_aucTable-div-2">  
                            <div class="row">
                                <div class="col-md-6+">
                                    <div class="table-responsive"> 
                                        <table id="example" class="table table-border _table _largeTable" style="width:100%;background: white !important;background-color:white;">                                               
                                            <thead >                                       
                                                <tr>
                                                    <th>Id</th>
                                                    <th width="1%">Name</th>
                                                    <th>Created </th>  
                                                    <th width="15%">Action</th>  
                                                </tr>
                                            </thead>
                                            <tbody>
                                                @foreach ($faqCategory as $_faqCategory)
                                                <tr>
                                                <td>{{$_faqCategory->id}}</td>
                                                <td>{{$_faqCategory->name}}</td>
                                                <td>{{$_faqCategory->created_at}}</td>
                                                <td>
                                                    {{-- <button  onclick="edit('{{$_faqCategory->id}}','{{$_faqCategory->name}}')" >Edit 2</button> --}}

                                                <a href="javascript:;" onclick="edit('{{$_faqCategory->id}}','{{$_faqCategory->name}}')"  class="btn btn-success" id="edit" >Edit</a>
                                                 <a href="" class="btn btn-danger" onclick="deleteMember('{{ $_faqCategory->id }}')">Delete</a>
                                                <form action="{{ route('faq-category.destroy',$_faqCategory->id) }}" method="post" id="delete{{ $_faqCategory->id }}">
                                                 @method('DELETE')
                                                     @csrf                   
                                                    </form>
                                                </td> 
                                                </tr>
                                                    
                                                @endforeach
                              
                                            
                                            </tbody>
                                            
                                        </table>
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
                
        function deleteMember(id) {
            event.preventDefault();
            Swal.fire({
              title: 'Are you sure?',
              text: "You won't be able to revert this!",
              icon: 'warning',
              showCancelButton: true,
              confirmButtonColor: '#3085d6',
              cancelButtonColor: '#d33',
              confirmButtonText: 'Yes, delete it!'
            }).then((result) => {
              if (result.value) {

                $(`#delete${id}`).submit();
              }
            })
        }
        @if (Session::has('delete'))
        Swal.fire(
              'Deleted!',
              '{{ Session::get('delete') }}',
              'success'
            )
       @endif 
</script>
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
              @if (Session::has('delete'))
              Swal.fire(
              'Deleted!',
              'Your file has been deleted.',
              'success'
            )
       @endif  
    </script>
 
  <script src="//cdn.ckeditor.com/4.13.1/standard/ckeditor.js"></script>
  <script> CKEDITOR.replace( 'desc' );</script>
  <script>
     function edit(id,name){
        
        let form=document.getElementById('form');
        let ids= document.getElementById('name').value=name;
        document.getElementById('putMethod').innerHTML = `<input type="hidden" name="_method" value="PUT">`;
        form.action="{{ url("admin/faq-category") }}/"+id;
         $("button[type=submit]").text("Update");
      }
  

  </script>

    
   
@endpush
@endsection