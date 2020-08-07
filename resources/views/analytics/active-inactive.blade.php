@extends('layouts.app')

@section('content')

<div class="_ad-body">
                <!-- Admin Body Header -->
                <div class="_ad-top-hdr">
                    <p class="_page-title"> Active / Inactive</p>
                </div>
                <!-- Admin Body Main -->
                <div class="_ad-body-main" >
                    {{-- @dump(request()->segment(3)) --}}
                   
                    <table class="table table-hover" style="background-color: white !important">
                        <tr>
                            <th colspan="4" style="text-align: center">Logged In Members</th>
                        </tr>
                        <tr>
                            <th style="text-align: center">This Month</th>
                            <th style="text-align: center">This Week</th>
                            <th style="text-align: center">Yesterday</th>
                            <th style="text-align: center">Today</th>
                        </tr>
                        <tr>
                            <td style="text-align: center">{{ $month?? 0 }}</td>
                            <td style="text-align: center">{{ $week ?? 0}}</td>
                            <td style="text-align: center">{{ $yesterday ??0 }} </td>
                            <td style="text-align: center">{{ $today ?? 0 }} </td>
                        </tr>
                    </table>
                    <br>
                      <table class="table table-hover" style="background-color: white !important">
                        <tr>
                            <th colspan="5" style="text-align: center">Active Member</th>
                        </tr>
                        <tr>
                            <th style="text-align: center">This Month</th>
                            <th style="text-align: center">This Week</th>
                            <th style="text-align: center">Yesterday</th>
                            <th style="text-align: center">Today</th>
                        </tr>
                        <tr>
                            <td style="text-align: center">{{ $active_month ?? 0 }} </td>
                            <td style="text-align: center">{{ $active_week ?? 0 }} </td>
                            <td style="text-align: center">{{ $active_yesterday ?? 0 }} </td>
                            <td style="text-align: center">{{ $active_today ?? 0 }} </td>
                            
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
                                {{--     <button id="date_get" class="btn _btn2 _btn-small">Date Filter</button> --}}
                                </div>

                                <div class="col-md-3">
                                   {{--  <form action="{{ route('member.csv_converter')}}" method="GET">
                                       <input type="hidden" name="member" value="{{ request()->segment(3) }}">
                                       
                                        <button class="btn _btn2 _btn-small">Export as CSV</button>
                                    </form>
                                </div> --}}
                            </div>

                                            

                                            
                                   
                                    
                                          
                                      
                                    </div>
                        </div>
                    </div>

                    <div class="_aucTable-div-2">  
                        <div class="table-responsive _mB-30">
                            <table  class="table table-border _table" >

                            
        <thead >

            <tr>
                <th width="1%">S.No</th>
                <th>Last Login</th>
                <th>Time</th>
                <th>Last Active</th>
                <th>Time</th>
                <th>Total Auction</th>
                <th>Won Auctions</th>
                <th>Join Date</th>
                <th>Activity Status'</th>
                <th>Status</th>
                <th>Member Plan</th>
                <th>Memeber Id</th>
                <th>Member Name</th>
                <th>Gender</th>
                <th>Contact No</th>
                <th>Email Address</th>
                <th>City</th>
                <th>Country</th>
                <th>Coin Balance</th>

            </tr>
        </thead>
        <tbody>
            
            @foreach ($analytic as $key => $_analytic)
                <tr>
                    <td>{{ ++$key }}</td>
                    <td>
                        {{ !empty($_analytic->login_date_time)?
                            $_analytic->login_date_time->format("d-m-Y"):'' }}
                    </td>
                    <td>
                        {{ !empty($_analytic->login_date_time)?
                            $_analytic->login_date_time->format("h:i:s A"):'' }}
                    </td>
                    <td>{{ !empty($_analytic->user->playAuction->count())?$_analytic->user->playAuction->last()->created_at->format("d-m-Y"):'Never' }}</td>
                    <td>
    {{ !empty($_analytic->user->playAuction->count())?$_analytic->user->playAuction->last()->created_at->format("h:i:s A"):'Never' }}
                    </td>
                    <td>
                        {{ $_analytic->user->playAuction->count() ?? 0 }}</td>
                    <td>{{ $_analytic->user->winner->count() ?? 0 }}</td>
                    <td>{{ $_analytic->user->created_at->format("d-m-Y") }}</td>
                    <td class="{{ !empty($_analytic->user->activeDayAgo)?'text-success':'text-danger' }}">{{ !empty($_analytic->user->activeDayAgo)?'Active':'In-Active' }}</td>
                    <td>{{ $_analytic->user->is_active?'Active':'Deactive' }}</td>
                    <td>{{ $_analytic->user->membership->name ?? '' }}</td>
                    <td>{{ $_analytic->user->user_name ?? '' }}</td>
                    <td>{{ $_analytic->user->name ?? '' }}</td>
                    <td>{{ $_analytic->user->gender ?? '' }}</td>
                    <td>{{ $_analytic->user->mobile_number ?? '' }}</td>
                    <td>{{ $_analytic->user->email ?? '' }}</td>
                    <td>{{ $_analytic->user->city ?? '' }}</td>
                    <td>{{ $_analytic->user->country ?? '' }}</td>
                    <td>{{ $_analytic->user->wallet->coins ?? 00 }}</td>
                </tr>
            @endforeach
     
        </tbody>
        
    </table>
  
                        </div>
                    </div>
                    <div class="dataTables_info" id="kt_table_1_info" role="status" aria-live="polite">Showing 
                                        {{$analytic->firstItem()}} to {{$analytic->lastItem()}}
    of  {{$analytic->total()}} entries 
                                    </div>   
                    <div id="pagination" style="text-align: right; float: right">
                            {{ $analytic->appends($_GET)->links() }}                    
                    </div>            
                    <!-- Div : Begin  -->   
    
                </div>
            </div>
        <form action="{{ url()->full() }}" id="dateFilter" >
          
                <input type="hidden" name="start" id="start">
                <input type="hidden" name="end" id="end">
            </form>

@push('script')
    <script type="text/javascript">
var urlParams = new URLSearchParams(window.location.search);

    $(function() {
 
        var start = moment().subtract(29, 'days');
        var end = moment();
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
               'Today': [moment(), moment().add(1,'days')],
               'Yesterday': [moment().subtract(1, 'days'), moment()],
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
