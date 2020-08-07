@extends('layouts.app')

@section('content')

<div class="_ad-body">

                <!-- Admin Body Header -->
                <div class="_ad-top-hdr">
                  @switch(request()->segment(2))
                      @case('notification')
                        @php
                          $currentRoute = 'notification';
                        @endphp
                        <p class="_page-title">Default Notification</p>      
                          @break
                      @case('segmented-notification')
                        @php
                          $currentRoute = 'segmented-notification';
                        @endphp
                        <p class="_page-title">Segmented Notification</p>      
                          @break
                  @endswitch
                  
                    
                </div>
                <!-- Admin Body Main -->
                <div class="_ad-body-main" >

                    
                    
                      
                   
                    
                    
                    <!-- Div : Begin -->
                        <div class="row" style="padding-bottom:20px">
                            <div class="col-md-1">
                            
                            </div>
                            <div class="col-md-8">
  
                            </div>
                            <div class="col-md-4 ">
                             @if(request()->segment(1)=="notification")
                              {{-- @can('addDefaultNotification',\App\Notification::class) --}}
                              <a href="{{ route("notification.create") }}" 
                              class="btn btn-primary">Add</a>   
                              {{-- @endcan --}}
                             @endif
                             @if(request()->segment(1)=="segmented-notification")
                            {{--  @can('addSegmentedNotification',\App\Notification::class) --}}
                            <a href="{{ route("segmented-notification.create") }}" 
                               class="btn btn-primary">Add</a>                              
                             {{-- @endcan --}}
                             @endif
                            </div>
                        </div>
                    <div class="_aucTable-div-2">  
                        <div class="table-responsive">
                            <table id="" class="table table-hover" style="width:100%;background: white !important;background-color:white;">
        <thead >
            <tr>
              <th>S.No</th>
              <th>Category</th>
              <th>Sub Category</th>
              <th>Created at</th>
              <th>Updated at</th>

              @if(request()->segment(2)=="notification")
              @canany(['viewDefaultNotification','editDefaultNotification','deleteDefaultNotification'],\App\Notification::class)
              <th>Action</th>
              @endcanany
              @endif
              @if(request()->segment(2)=="segmented-notification")
              @canany(['viewSegmentedNotification','editSegmentedNotification','deleteSegmentedNotification'],\App\Notification::class)
              <th>Action</th>
              @endcanany
              @endif

            </tr>
        </thead>
        <tbody>
          @foreach ($notifications as $key => $notification)
            
          <tr>
            <td>{{ ++$key }}</td>
            <td>{!! $notification->notificationCategory->name ?? '' !!}</td>
            <td>{!! $notification->notificationSubCategory->name ?? '' !!}</td>
            <td>{{ $notification->created_at->format('d-m-Y') }}</td>
            <td>{{ $notification->updated_at->diffForHumans() }}</td>
            <td>
              @if(request()->segment(2)=="notification")
              @can('viewDefaultNotification',\App\Notification::class)
              <a href="{{ route("{$currentRoute}.show",$notification->id) }}" target="_blank" class="btn btn-success">View</a>
              @endcan
              @endif
              @if(request()->segment(2)=="segmented-notification")
              @can('viewSegmentedNotification',\App\Notification::class)
              <a href="{{ route("{$currentRoute}.show",$notification->id) }}" target="_blank" class="btn btn-success">View</a>
              @endcan
              @endif
              @if(request()->segment(2)=="notification")
              @can('editDefaultNotification',\App\Notification::class)
              <a href="{{ route("{$currentRoute}.edit",$notification->id) }}" target="_blank" class="btn btn-warning">Edit</a>
              @endcan
              @endif
              @if(request()->segment(2)=="segmented-notification")
              @can('editSegmentedtNotification',\App\Notification::class)
              <a href="{{ route("{$currentRoute}.edit",$notification->id) }}" target="_blank" class="btn btn-warning">Edit</a>
              @endcan
              @endif
              @if(request()->segment(2)=="notification")
              @can('deleteDefaultNotification',\App\Notification::class)
              <a href="" class="btn btn-danger" onclick="deleteNotification('{{ $notification->id }}')">Delete</a>
              @endcan
              @endif 
              @if(request()->segment(2)=="segmented-notification")
              @can('deleteSegmentedNotification',\App\Notification::class)
              <a href="" class="btn btn-danger" onclick="deleteNotification('{{ $notification->id }}')">Delete</a>
              @endcan
              @endif 
            </td>
          </tr>
          <form action="{{ route("{$currentRoute}.destroy",$notification->id) }}" id="notificationDelete{{ $notification->id }}" method="post">
            @csrf
            @method('DELETE')
          </form>
          @endforeach
        </tbody>
        
    </table>
                        </div>
                    </div>
                    <!-- Div : Begin  -->   
                    {{-- <div class="dataTables_info" id="kt_table_1_info" role="status" aria-live="polite">Showing 
                                        {{$auctions->firstItem()}} to {{$auctions->lastItem()}}
    of  {{$auctions->total()}} entries 
                                    </div>   
                    <div id="pagination" style="text-align: right; float: right">
                            {{ $auctions->appends(["perPage"=>request()->perPage,'search' => request()->search])->links() }}                    
                    </div>            
    
                </div> --}}
            </div>

@push('script')
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
    <script>
        $("#paginationSize").change(function(){
            $("#paginationForm").submit();
        });



        @if (Session::has('success'))
            Swal.fire(
                  'Deleted!',
                  'Your file has been deleted.',
                  'success'
                )
        @endif

        function deleteNotification(id) {
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
              $(`#notificationDelete${id}`).submit();
            }
          });
        }

        
    </script>
@endpush
@endsection
