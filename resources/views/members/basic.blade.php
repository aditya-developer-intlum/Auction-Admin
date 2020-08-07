@extends('layouts.app')

@section('content')

<div class="_ad-body">
                <!-- Admin Body Header -->
                <div class="_ad-top-hdr">
                    <p class="_page-title">All Member</p>
                </div>
                <!-- Admin Body Main -->
                <div class="_ad-body-main" >

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
                            <td style="text-align: center">{{ $uplink2->count() ?? 0 }}</td>
                            <td style="text-align: center">{{ (collect($uplink1)->diff(collect($uplink2)))->count() }}         </td>
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
                            <td>20</td>
                            <td>20</td>
                            <td>15</td>
                            <td>15</td>
                            <td>8</td>
                        </tr>
                        <tr>
                            <th>Basic Member</th>
                            <td>20</td>
                            <td>20</td>
                            <td>15</td>
                            <td>15</td>
                            <td>8</td>
                        </tr>
                        <tr>
                            <th>Advance Member</th>
                            <td>20</td>
                            <td>20</td>
                            <td>15</td>
                            <td>15</td>
                            <td>8</td>
                        </tr>
                        <tr>
                            <th>Premium (PM 1) Member</th>
                            <td>20</td>
                            <td>20</td>
                            <td>15</td>
                            <td>15</td>
                            <td>8</td>
                        </tr>
                        <tr>
                            <th>Premium (PM 3) Member</th>
                            <td>20</td>
                            <td>20</td>
                            <td>15</td>
                            <td>15</td>
                            <td>8</td>
                        </tr>
                        <tr>
                            <th>Premium (PM 6) Member</th>
                            <td>20</td>
                            <td>20</td>
                            <td>15</td>
                            <td>15</td>
                            <td>8</td>
                        </tr>
                        <tr>
                            <th>Premium (PM 12) Member</th>
                            <td>20</td>
                            <td>20</td>
                            <td>15</td>
                            <td>15</td>
                            <td>8</td>
                        </tr>
                        <tr>
                            <th>Premium Plus Member</th>
                            <td>20</td>
                            <td>20</td>
                            <td>15</td>
                            <td>15</td>
                            <td>8</td>
                        </tr>
                    </table>
                    <br>
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
                                                <input type="text" class="form-control" placeholder="Search for..." name="search" value="{{ request()->search ?? '' }}">
                                                {{-- <span class="input-group-btn"> --}}
                                                    <button class="btn btn-default" type="submit">
                                                        <i class="fa fa-search"></i>
                                                    </button>
                                                {{-- </span> --}}
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
                                    <button id="date_get" class="btn _btn2 _btn-small">Date Filter</button>
                                </div>

                                <div class="col-md-3">
                                    <form action="{{ route('member.csv_converter')}}" method="GET">
                                        <button class="btn _btn2 _btn-small">Export as CSV</button>
                                    </form>
                                </div>
                            </div>

                                            

                                            
                                   
                                    
                                          
                                      
                                    </div>
                        </div>
                    </div>

                    <div class="_aucTable-div-2">  
                        <div class="table-responsive">
                            <table id="example" class="table table-border _table _largeTable" style="width:100%;background: white !important;background-color:white;">

                            
        <thead >

            <tr>
                <th width="1%">S.No</th>
                <th width="10%">Created Date</th>
                <th>M.ID</th>
                <th>M.Name</th>
                <th>Contact No</th>
                <th>Email Address</th>
                <th>City</th>
                <th>Country</th>
                <th>C.Bal</th>
                <th>T.Auctions</th>
                <th>T.C.Spent</th>
                <th>T.A.Won</th>
                <th>M.Status</th>
                <th>A.Status</th>
                <th>Status</th>
                <th width="15%">Action</th>
            </tr>
        </thead>
        <tbody>
        @forelse ($users as $key => $user)
            <tr>
                <td>{{ $users->firstItem()+$key }}</td>
                <td>{{ $user->created_at->format("d-m-Y") ?? '' }}</td>
                <td>{{ $user->user_name ?? '' }}</td>
                <td>{{ $user->name ?? '' }}</td>
                <td>{{ $user->mobile_number ?? '' }}</td>
                <td>{{ $user->email ?? '' }}</td>
                <td>{{ $user->city ??'' }}</td>
                <td>{{ $user->country ?? '' }}</td>
                <td>{{ $user->wallet->coins ?? '' }} coins</td>
                <td>{{ $user->playAuction->count() ?? 0 }}</td>
                <td>{{ $user->transactions->where('desc',"Biding")->where('trans','DR')->sum('coins') }}</td>
                <td>{{ $user->playAuction->where('is_winner',true)->count() ?? 0 }}</td>
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
                <td width="10%">
                <a href="" class="btn btn-primary">View</a>
                <a href="" class="btn btn-danger" onclick="deleteMember('{{ $user->id }}')">Delete</a>
                <form action="{{ route('member.delete',$user->id) }}" method="post" id="delete{{ $user->id }}">
                    @method('DELETE')
                    @csrf
                    
                </form>
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
                                        {{$users->firstItem()}} to {{$users->lastItem()}}
    of  {{$users->total()}} entries 
                                    </div>   
                    <div id="pagination" style="text-align: right; float: right">
                            {{ $users->appends(["perPage"=>request()->perPage,'search' => request()->search])->links() }}                    
                    </div>            
    
                </div>
            </div>
        <form action="{{ url()->full() }}" id="dateFilter" >
            @csrf
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
                  'Deleted!',
                  'Your file has been deleted.',
                  'success'
                )
        @endif    


       
    </script>
<script type="text/javascript">
    $(function() {
    
        var start = moment().subtract(29, 'days');
        var end = moment();

        function cb(start, end) {
            $('#reportrange span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'));
  
            $("#start").val(start.format('MMMM D, YYYY'));
            $("#end").val(end.format('MMMM D, YYYY'));
            //$("#dateFilter").submit();          
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
            }
        }, cb);
       
        cb(start, end);
    
           
        $("#date_get").click(function(){
          
            $("#dateFilter").submit();
        });
    
    });
    </script>

       
@endpush
@endsection
