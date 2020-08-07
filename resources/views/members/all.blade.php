@extends('layouts.app')

@section('content')
<div class="_ad-body">
                <!-- Admin Body Header -->
                <div class="_ad-top-hdr">
                    <p class="_page-title">{{ Str::title(request()->segment(3)) }} Member</p>
                </div>
                <!-- Admin Body Main -->
                <div class="_ad-body-main" >
                    @if(request()->segment(3)=="all")
                    <table class="table table-hover" style="background-color: white !important">
                        <tr>
                            <th colspan="4" style="text-align: center">Members - Level wise</th>
                        </tr>
                        <tr>
                            <th style="text-align: center">Total Members</th>
                            <th style="text-align: center">UpLevel - 2</th>
                            <th style="text-align: center">UpLevel - 1</th>
                            <th style="text-align: center">New Sign-ups</th>
                        </tr>
                        <tr>
                            <td style="text-align: center">{{ $total_member ?? 0 }}</td>
                            <td style="text-align: center">{{ $uplink2->whereNotIn('id',$uplink1)->count() ?? 0 }}</td>
                            <td style="text-align: center">{{ (collect($uplink1)->diff(collect($uplink2)))->whereNotIn('id',$uplink1)->count() }}         </td>
                            <td style="text-align: center">{{ $new ?? 0 }}</td>
                        </tr>
                    </table>
                    <br>
                      <table class="table table-hover" style="background-color: white !important">
                        <tr>
                            <th colspan="5" style="text-align: center">New Members - Signups</th>
                        </tr>
                        <tr>
                            <th style="text-align: center">New Members <p>(All Times)</p></th>
                            <th style="text-align: center">New Members <p>(This Month)</p></th>
                            <th style="text-align: center">New Members <p>(This Week)</p></th>
                            <th style="text-align: center">New Members <p>(Yesterday)</p></th>
                            <th style="text-align: center">New Members <p>(Today)</p></th>
                        </tr>
                        <tr>
                            <td style="text-align: center">{{ $allNew ?? 0 }}</td>
                            <td style="text-align: center">{{ $month ?? 0 }}</td>
                            <td style="text-align: center">{{ $week ?? 0 }}</td>
                            <td style="text-align: center">{{ $yesterday ?? 0 }}</td>
                            <td style="text-align: center">{{ $today ?? 0 }}</td>
                        </tr>
                    </table>
                    <br>
                    <table class="table table-hover" style="background-color: white !important">
                        <tr>
                            <th>New Members</th>
                            <th style="text-align: center">All Times</th>
                            <th style="text-align: center">This Month</th>
                            <th style="text-align: center">This Week</th>
                            <th style="text-align: center">Yesterday</th>
                            <th style="text-align: center">Today</th>
                        </tr>
                        <tr>
                            <th>Total Members</th>
                            <th style="text-align: center">{{ $allNew ?? 0 }}</th>
                            <th style="text-align: center">{{ $month ?? 0 }}</th>
                            <th style="text-align: center">{{ $week ?? 0 }}</th>
                            <th style="text-align: center">{{ $yesterday ?? 0 }}</th>
                            <th style="text-align: center">{{ $today ?? 0 }}</th>
                        </tr>
                        <tr>
                            <th>Starter Member</th>
                            <td style="text-align: center">

                                {{ $users->where('membership_id',1)->whereNotIn('id',$uplink1)->whereNotIn('id',$uplink1)->count() }}

                            </td>
                            <td style="text-align: center">

                                {{ $users->where('membership_id',1)->whereBetween('created_at', [Carbon\Carbon::now()->startOfMonth(), Carbon\Carbon::now()->endOfMonth()])->whereNotIn('id',$uplink1)->count() }}

                            </td>
                            <td style="text-align: center">

                                {{ $users->where('membership_id',1)->whereBetween('created_at', [Carbon\Carbon::now()->startOfWeek(), Carbon\Carbon::now()->endOfWeek()])->whereNotIn('id',$uplink1)->count() }}

                            </td>
                            <td style="text-align: center">

                                {{ $users->where('membership_id',1)->where('created_at',\Carbon\Carbon::yesterday())->whereNotIn('id',$uplink1)->count() }}

                            </td>
                            <td style="text-align: center">{{ $users->where('membership_id',1)->where('created_at',today())->whereNotIn('id',$uplink1)->count() }}</td>
                        </tr>
                        <tr>
                            <th>Basic Member</th>
                          <td style="text-align: center">{{ $users->where('membership_id',2)->whereNotIn('id',$uplink1)->count() }}</td>
                            <td style="text-align: center">{{ $users->where('membership_id',2)->whereBetween('created_at', [Carbon\Carbon::now()->startOfMonth(), Carbon\Carbon::now()->endOfMonth()])->whereNotIn('id',$uplink1)->count() }}</td>
                            <td style="text-align: center">{{ $users->where('membership_id',2)->whereBetween('created_at', [Carbon\Carbon::now()->startOfWeek(), Carbon\Carbon::now()->endOfWeek()])->whereNotIn('id',$uplink1)->count() }}</td>
                            <td style="text-align: center">{{ $users->where('membership_id',2)->where('created_at',\Carbon\Carbon::yesterday())->whereNotIn('id',$uplink1)->count() }}</td>
                            <td style="text-align: center">{{ $users->where('membership_id',2)->where('created_at',today())->whereNotIn('id',$uplink1)->count() }}</td>
                        </tr>
                        <tr>
                            <th>Advance Member</th>
                          <td style="text-align: center">{{ $users->where('membership_id',3)->whereNotIn('id',$uplink1)->count() }}</td>
                            <td style="text-align: center">{{ $users->where('membership_id',3)->whereBetween('created_at', [Carbon\Carbon::now()->startOfMonth(), Carbon\Carbon::now()->endOfMonth()])->whereNotIn('id',$uplink1)->count() }}</td>
                            <td style="text-align: center">{{ $users->where('membership_id',3)->whereBetween('created_at', [Carbon\Carbon::now()->startOfWeek(), Carbon\Carbon::now()->endOfWeek()])->whereNotIn('id',$uplink1)->count() }}</td>
                            <td style="text-align: center">{{ $users->where('membership_id',3)->where('created_at',\Carbon\Carbon::yesterday())->whereNotIn('id',$uplink1)->count() }}</td>
                            <td style="text-align: center">{{ $users->where('membership_id',3)->where('created_at',today())->whereNotIn('id',$uplink1)->count() }}</td>
                        </tr>
                        <tr>
                            <th>Premium Member</th>
                           <td style="text-align: center">{{ $users->where('membership_id',4)->whereNotIn('id',$uplink1)->count() }}</td>
                            <td style="text-align: center">{{ $users->where('membership_id',4)->whereBetween('created_at', [Carbon\Carbon::now()->startOfMonth(), Carbon\Carbon::now()->endOfMonth()])->whereNotIn('id',$uplink1)->count() }}</td>
                            <td style="text-align: center">{{ $users->where('membership_id',4)->whereBetween('created_at', [Carbon\Carbon::now()->startOfWeek(), Carbon\Carbon::now()->endOfWeek()])->whereNotIn('id',$uplink1)->count() }}</td>
                            <td style="text-align: center">{{ $users->where('membership_id',4)->where('created_at',\Carbon\Carbon::yesterday())->whereNotIn('id',$uplink1)->count() }}</td>
                            <td style="text-align: center">{{ $users->where('membership_id',4)->where('created_at',today())->whereNotIn('id',$uplink1)->count() }}</td>
                        </tr>
                        {{-- <tr>
                            <th>Premium (PM 3) Member</th>
                         <td style="text-align: center">{{ $users->where('membership_id',4)->whereNotIn('id',$uplink1)->count() }}</td>
                            <td style="text-align: center">{{ $users->where('membership_id',4)->whereBetween('created_at', [Carbon\Carbon::now()->startOfMonth(), Carbon\Carbon::now()->endOfMonth()])->whereNotIn('id',$uplink1)->count() }}</td>
                            <td style="text-align: center">{{ $users->where('membership_id',4)->whereBetween('created_at', [Carbon\Carbon::now()->startOfWeek(), Carbon\Carbon::now()->endOfWeek()])->whereNotIn('id',$uplink1)->count() }}</td>
                            <td style="text-align: center">{{ $users->where('membership_id',4)->where('created_at',\Carbon\Carbon::yesterday())->whereNotIn('id',$uplink1)->count() }}</td>
                            <td style="text-align: center">{{ $users->where('membership_id',4)->where('created_at',today())->whereNotIn('id',$uplink1)->count() }}</td>
                        </tr> --}}
                        {{-- <tr>
                            <th>Premium (PM 6) Member</th>
                           <td style="text-align: center">{{ $users->where('membership_id',4)->whereNotIn('id',$uplink1)->count() }}</td>
                            <td style="text-align: center">{{ $users->where('membership_id',4)->whereBetween('created_at', [Carbon\Carbon::now()->startOfMonth(), Carbon\Carbon::now()->endOfMonth()])->whereNotIn('id',$uplink1)->count() }}</td>
                            <td style="text-align: center">{{ $users->where('membership_id',4)->whereBetween('created_at', [Carbon\Carbon::now()->startOfWeek(), Carbon\Carbon::now()->endOfWeek()])->whereNotIn('id',$uplink1)->count() }}</td>
                            <td style="text-align: center">{{ $users->where('membership_id',4)->where('created_at',\Carbon\Carbon::yesterday())->whereNotIn('id',$uplink1)->count() }}</td>
                            <td style="text-align: center">{{ $users->where('membership_id',4)->where('created_at',today())->whereNotIn('id',$uplink1)->count() }}</td>
                        </tr> --}}
                        {{-- <tr>
                            <th>Premium (PM 12) Member</th>
                            <td style="text-align: center">{{ $users->where('membership_id',4)->whereNotIn('id',$uplink1)->count() }}</td>
                            <td style="text-align: center">{{ $users->where('membership_id',4)->whereBetween('created_at', [Carbon\Carbon::now()->startOfMonth(), Carbon\Carbon::now()->endOfMonth()])->whereNotIn('id',$uplink1)->count() }}</td>
                            <td style="text-align: center">{{ $users->where('membership_id',4)->whereBetween('created_at', [Carbon\Carbon::now()->startOfWeek(), Carbon\Carbon::now()->endOfWeek()])->whereNotIn('id',$uplink1)->count() }}</td>
                            <td style="text-align: center">{{ $users->where('membership_id',4)->where('created_at',\Carbon\Carbon::yesterday())->whereNotIn('id',$uplink1)->count() }}</td>
                            <td style="text-align: center">{{ $users->where('membership_id',4)->where('created_at',today())->whereNotIn('id',$uplink1)->count() }}</td>
                        </tr> --}}
                        <tr>
                            <th>Premium Plus Member</th>
                           <td style="text-align: center">{{ $users->where('membership_id',5)->whereNotIn('id',$uplink1)->count() }}</td>
                            <td style="text-align: center">{{ $users->where('membership_id',5)->whereBetween('created_at', [Carbon\Carbon::now()->startOfMonth(), Carbon\Carbon::now()->endOfMonth()])->whereNotIn('id',$uplink1)->count() }}</td>
                            <td style="text-align: center">{{ $users->where('membership_id',5)->whereBetween('created_at', [Carbon\Carbon::now()->startOfWeek(), Carbon\Carbon::now()->endOfWeek()])->whereNotIn('id',$uplink1)->count() }}</td>
                            <td style="text-align: center">{{ $users->where('membership_id',5)->where('created_at',\Carbon\Carbon::yesterday())->whereNotIn('id',$uplink1)->count() }}</td>
                            <td style="text-align: center">{{ $users->where('membership_id',5)->where('created_at',today())->whereNotIn('id',$uplink1)->count() }}</td>
                        </tr>
                    </table>
                    <br>
                    @endif
                    <!-- Div : Begin -->
                    <div class="row" style="padding-bottom:20px">
                        <div class="col-md-1">
                            <form action="{{ url()->full() }}" id="paginationForm">

                                
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
                            </form>
                        </div>
                        
                        <div class="col-lg-4 col-md-4 ">
                            <form action="{{ url()->full() }}" id="paginationForm">
                            
                                        @foreach ($_GET as $key => $value)
                                            @if ($key != 'search')
                                                
                                        {!! "<input type='hidden' name='$key' value='$value'/>" !!}
                                            @endif
                                            
                                        @endforeach
                                        {{-- 3:31 --}}
                    
                                        <div class="input-group">
                                            <div class="_search-box">
                                                @can("searchMember".request()->segment(3)."Member", \App\User::class)
                                                <input type="text" class="form-control" placeholder="Search for..." name="search" value="{{ request()->search ?? '' }}">
                                                <button class="btn btn-default" type="submit">
                                                    <i class="fa fa-search"></i>
                                                </button>
                                                @endcan

                                            </div> 
                                        </div>
                            </form>
                        </div>

                        <div class="col-lg-7 _filterLeft" >
                            <div class="row">
                                <div class="col-md-6">
                                  
                                    <div id="reportrange" style="background: #fff; cursor: pointer; padding: 5px 10px; border: 1px solid #ccc; width: 100%">
                                        <i class="fa fa-calendar"></i>&nbsp;
                                        <span></span> <i class="fa fa-caret-down"></i>
                                    </div>
                                  
                                </div>
                                
                                <div class="col-md-3">
                                {{--     <button id="date_get" class="btn _btn2 _btn-small">Date Filter</button> --}}
                                </div>

                                <div class="col-md-3">
                                   
                                    <form action="{{ route('member.csv_converter')}}" method="GET">
                                       <input type="hidden" name="member" value="{{ request()->segment(3) }}">
                                       <button class="btn _btn2 _btn-small">Export as CSV</button>
                                    </form>
                                  
                                </div>
                            </div>

                                            

                                            
                                   
                                    
                                          
                                      
                                    </div>
                        </div>
                    </div>

                    <div class="_aucTable-div-2">  
                        <div class="table-responsive _mB-30">
                            <table id="example" class="table table-border _table" >

                            
        <thead >

            <tr>
                <th width="1%">S.No</th>
                <th width="8%">Created Date</th>
                <th>Member.ID</th>
                <th>Member.Name</th>
                <th>Contact No</th>
                <th>Email Address</th>
                <th>City</th>
                <th>Coin Balance</th>
                <th>Total Auctions</th>
                <th>Total Coin Spent</th>
                <th>Total Auction Won</th>
                <th>Memeber Status</th>
                <th>Activity Status</th>
                <th>Status</th>
                @if(request()->segment(3)!='deleted')
               
                <th width="15%">Action</th>
               
                @endif
            </tr>
        </thead>
        <tbody>
        @forelse ($users as $key => $user)
            <tr>
                <td>{{ $users->firstItem()+$key }}</td>
                <td>{{ $user->created_at->format("d-m-Y") ?? '' }}</td>
                <td><a href="{{ route('member.detail',$user->id) }}" target="_blank">{{ $user->user_name ?? '' }}</a></td>
                <td>{{ $user->name ?? '' }}</td>
                <td>{{ $user->mobile_number ?? '' }}</td>
                <td>{{ $user->email ?? '' }}</td>
                <td>{{ $user->city ??'' }}</td>
                <td>{{ $user->wallet->coins ?? '' }} coins</td>
                <td>{{ $user->playAuction->whereNotIn('id',$uplink1)->count() ?? 0 }}</td>
                <td>{{ $user->transactions->where('desc',"Biding")->where('trans','DR')->sum('coins') }}</td>
                <td>{{ $user->playAuction->where('is_winner',true)->whereNotIn('id',$uplink1)->count() ?? 0 }}</td>
                <td>{{ $user->membership->name ?? '' }}</td>
                <td>

    @php
        $created = new \Carbon\Carbon($user->playAuction->last()->created_at ?? '');
        $now = \Carbon\Carbon::now();
        $difference = ($created->diff($now)->days);
    @endphp
    @if ($difference == 0)
        @php
            $created = new \Carbon\Carbon($user->created_at ?? '');
            $difference = ($created->diff($now)->days);
        @endphp
        
    @endif
    {{ $difference >=30?'Inactive':'Active' }}
                </td>
                <td><a href="{{ route('member.status',[$user->id,$user->is_active?0:1]) }}">{{ $user->is_active?'Active':'Deactive' }}</a></td>
                @if(request()->segment(3)!='deleted')
                <td width="10%">
                @can('editMemeber',\App\User::class)    
                <a href="{{route('member.edit',$user->id)}}" class="btn btn-success">Edit</a>
                @endcan
                @can('viewMemeber',\App\User::class)    
                <a href="{{route('member.show',$user->id)}}" class="btn btn-primary">View</a>
                @endcan
                @can('deleteMemeber',\App\User::class)    
                <a href="" class="btn btn-danger" onclick="deleteMember('{{ $user->id }}')">Delete</a>
                @endcan               
                <form action="{{ route('member.delete',$user->id) }}" method="post" id="delete{{ $user->id }}">
                    {{-- @method('DELETE') --}}
                    @csrf                   
                </form>
               </td>
               @endif
            </tr>

       
        @empty

        @endforelse
           
        </tbody>
        
    </table>
                        </div>
                    </div>
                    <div class="dataTables_info" id="kt_table_1_info" role="status" aria-live="polite">Showing 
                                        {{$users->firstItem()}} to {{$users->lastItem()}}
    of  {{$users->total()}} entries 
                                    </div>   
                    <div id="pagination" style="text-align: right; float: right">
                            {{ $users->appends(["perPage"=>request()->perPage,'search' => request()->search])->links() }}                    
                    </div>            
                    <!-- Div : Begin  -->   
    
                </div>
            </div>
        <form action="{{ url()->full() }}" id="dateFilter" >
          
                <input type="hidden" name="start" id="start">
                <input type="hidden" name="end" id="end">
            </form>

@push('script')
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>

    <script>
        $("#paginationSize").change(function(){
            $("#paginationForm").submit();
        });


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

        @if (Session::has('success'))
            Swal.fire(
                  'Success!',
                  'You are Succesfully created a New member.',
                  'success'
                )
        @endif 
        @if (Session::has('delete'))
        Swal.fire(
              'Deleted!',
              'Your file has been deleted.',
              'success'
            )
       @endif    
       @if (Session::has('update'))
       Swal.fire(
             'Updated!',
             'You are Succesfully updated Memeber',
             'success'
           )
      @endif      


       
    </script>
<script type="text/javascript">
var urlParams = new URLSearchParams(window.location.search);

    $(function() {
 
        var start = moment().subtract(29, 'days');
    //    alert(start)
        var end = moment();
        
        // if(urlParams.has('start') &&urlParams.has('end')){
        //     alert(urlParams.get('start'))
        //     start=new Date(urlParams.get('start'));
        //     alert(start)
        //     alert(start.format('MMMM D, YYYY'))
        //     end=new Date(urlParams.get('end'));
        // }
        //     alert(urlParams.has('start'));
        function cb(start, end) {
            $('#reportrange span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'));
            $("#start").val(start.format('MMMM D, YYYY'));
            $("#end").val(end.format('MMMM D, YYYY'));
            $("#dateFilter").submit();
          
        }   
        $('#reportrange').daterangepicker({
            startDate: start,
            endDate: end,
            ranges: {
               'Today': [moment(), moment()],
               'Yesterday': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
               'Last 7 Days': [moment().subtract(6, 'days'), moment()],
               'Last 30 Days': [moment().subtract(29, 'days'), moment()],
               'This Month': [moment().startOf('month'), moment().endOf('month')],
               'Last Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
            },
        }, cb);
       
        //cb(start, end);

        @if(!empty(request()->start) && !empty(request()->end))
        $('#reportrange span').html(`{{date('F d, Y',strtotime(request()->start))}}   -  
         {{date('F d, Y',strtotime(request()->end))}}`);
        @endif

    });
    </script>
    <script>
            $("#date_get").click(function(){           
            $("#dateFilter").submit();
        });

    </script>

       
@endpush
@endsection
