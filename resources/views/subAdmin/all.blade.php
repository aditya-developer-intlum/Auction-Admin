{{-- @can('subAdminAllView',\App\User::class) --}}
@extends('layouts.app')

@section('content')

<div class="_ad-body">
                <!-- Admin Body Header -->
                <div class="_ad-top-hdr">
                    <p class="_page-title">All SubAdmin</p>
                </div>
                <!-- Admin Body Main -->
                <div class="_ad-body-main" >

                    
                    
                      
                   
                    
                    
                    <!-- Div : Begin -->
                        <div class="row" style="padding-bottom:20px">
                            <div class="col-md-1">
                            {{-- <form action="{{ url()->full() }}" id="paginationForm">
                                
                                @foreach ($_GET as $key => $value)
                                    @if ($key != 'perPage')
                                        
                                {!! "<input type='hidden' name='$key' value='$value'/>" !!}
                                    @endif
                                      
                                @endforeach
                                <select name="perPage" id="paginationSize" class="form-control">
                                    <option value="10" {{ request()->perPage == 10?'selected':'' }}>10</option>
                                    <option value="25" {{ request()->perPage == 25?'selected':'' }}>25</option>
                                    <option value="50" {{ request()->perPage == 50?'selected':'' }}>50</option>
                                    <option value="100" {{ request()->perPage == 100?'selected':'' }}>100</option>
                                </select>
                            </form> --}}
                            </div>
                            <div class="col-md-7"></div>
                            {{-- <div class="col-md-4 ">
                  <form action="{{ url()->full() }}" id="paginationForm">
                                
                                @foreach ($_GET as $key => $value)
                                    @if ($key != 'search')
                                        
                                {!! "<input type='hidden' name='$key' value='$value'/>" !!}
                                    @endif
                                      
                                @endforeach
                                <div class="input-group">
                    <input type="text" class="form-control" placeholder="Search for..." name="search" value="{{ request()->search ?? '' }}">
                                        <span class="input-group-btn">
                                            <button class="btn btn-default" type="submit">
                                                <i class="fa fa-search"></i>
                                            </button>
                                        </span>
                                </div>
                    </form>
                            </div> --}}
                        </div>
                    <div class="_aucTable-div-2">  
                        <div class="table-responsive">
                            <table id="" class="table table-hover" style="width:100%;background: white !important;background-color:white;">
        <thead >
            <tr>
                <th width="1%">S.No</th>
                <th>NAME</th>
                <th>PROFILE IMAGE</th>
                <th>EMAIL</th>
                <th>MOBILE NUMBER</th>
                <th>ROLE</th>
                {{-- @if((auth::user()->can('subAdminView',\App\User::class))&&
                    (auth::user()->can('subAdminEdit',\App\User::class))&&
                    (auth::user()->can('subAdminDelete',\App\User::class))&&
                    (auth::user()->can('subAdminPermission',\App\User::class))
                ) --}}
                <th>Action</th>
                {{-- @endif --}}
            </tr>
        </thead>
        <tbody>
        @forelse ($subAdmin as $key => $_subAdmin)
            <tr>
              <th>{{ $subAdmin->firstItem()+$key }}</th>
               <td>{{ $_subAdmin->name}}</td>
            <td ><img src="{{asset('storage/'.$_subAdmin->avatar ?? "profileImage.png")}}" class="img-thumbnail" width="75" alt=""></td>
            
                <td>{{ $_subAdmin->email}}</td>
                <td>{{ $_subAdmin->mobile_number}}</td>
                <td>{{ $_subAdmin->role_id==2?'SubAdmn':'unknown'}}</td>
                <td>
                 {{-- @can('subAdminView',\App\User::class)    --}}
                <a href="{{route('sub-admin.show',$_subAdmin->id)}}" class="btn btn-primary">View</a>
                 {{-- @endcan --}}
                 {{-- @can('subAdminEdit',\App\User::class) --}}
                    <a href="{{route('sub-admin.edit',$_subAdmin->id)}}"  class="btn btn-success">Edit</a>
                 {{-- @endcan  --}}
                 {{-- @can('subAdminDelete',\App\User::class)   --}}
                    <a href="" class="btn btn-danger" onclick="deleteMember('{{ $_subAdmin->id }}')">Delete</a>
                 {{-- @endcan    --}}
                    <form action="{{ route('sub-admin.destroy',$_subAdmin->id) }}" method="post" id="delete{{ $_subAdmin->id }}">
                        @method('DELETE')
                        @csrf
                        
                    </form>
                 {{-- @can('subAdminPermission',\App\User::class)    --}}
                <a href="{{route('permission.index',$_subAdmin->id)}}"class="btn btn-primary" >Permssion</a>  
                {{-- @endcan --}}
                </td>

            </tr>
        @empty

        @endforelse
           
        </tbody>
        
    </table>
                        </div>
                    </div>
                    <!-- Div : Begin  -->   
                    <div class="dataTables_info" id="kt_table_1_info" role="status" aria-live="polite">Showing 
                                        {{$subAdmin->firstItem()}} to {{$subAdmin->lastItem()}}
    of  {{$subAdmin->total()}} entries 
                                    </div>   
                    <div id="pagination" style="text-align: right; float: right">
                            {{ $subAdmin->appends(["perPage"=>request()->perPage,'search' => request()->search])->links() }}                    
                    </div>            
    
                </div>
            </div>

@push('script')
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
<script>
 function deleteMember(id){
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
{{-- @endcan --}}
