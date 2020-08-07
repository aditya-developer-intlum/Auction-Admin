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
                        <h2 style="text-align:center"><strong>Faqs </strong></h2>

                             
                    </div>

                    <!-- div end -->

                    <div class="_aucInfo-box-outer" style="padding: 25px">
                        <div class="_aucTable-div-2">  
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="table-responsive"> 
                                        <table id="example" class="table table-border _table _largeTable" style="width:100%;background: white !important;background-color:white;">                                               
                                            <thead >                                       
                                                <tr>
                                                    <th>Id</th>
                                                    <th>Title </th>  
                                                    <th>Faq Category</th>
                                                    <th>Description </th>  
                                                    <th width="15%">Action</th>  
                                                </tr>
                                            </thead>
                                            <tbody>
                                                @foreach ($faq as $key => $_faq)
                                                <tr>
                                                <td>{{++$key}}</td>
                                                <td>{{$_faq->title}}</td>
                                                <td>{{$_faq->faqCategory->name ??""}}</td>
                                                <td>{!! Str::limit($_faq->description,20) !!}</td>
                                                <td>
                                                <a href="{{route('faq.view',$_faq->id)}}" class="btn btn-primary">View</a>
                                                <a href="{{route('faq.edit',$_faq->id)}}"  class="btn btn-success">Edit</a>
                                                <a href="" onclick="deleteMember({{ $_faq->id }})" class="btn btn-danger"  >Delete</a>
                                                <form action="{{route('faq.destroy',$_faq->id)}}" method="POST" id="delete{{$_faq->id}}">
                                                    @csrf
                                                    @method('DELETE')
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