@extends('layouts.app')

@section('content')

<div class="_ad-body">
                <!-- Admin Body Header -->
                <div class="_ad-top-hdr">
                    <p class="_page-title">All Login History - IP, Device Wise</p>
                </div>
                <!-- Admin Body Main -->
                <div class="_ad-body-main" >
                    {{-- @dump(request()->segment(3)) --}}

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
                                  {{--   <form action="{{ route('member.csv_converter')}}" method="GET">
                                       <input type="hidden" name="member" value="{{ request()->segment(3) }}">
                                      
                                        <button class="btn _btn2 _btn-small">Export as CSV</button>
                                    </form> --}}
                                </div>
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
                <th>Login Session</th>
                <th>Login Date & Time</th>
                <th>Logout Date & Time</th>
                <th>Member Id</th>
                <th>Member Plan</th>
                <th>Activity Status</th>
                <th>Status</th>
                <th>Coin Balance</th>
                <th>Login IP Address</th>
                <th>Login Device</th>
                <th>Login Browser</th>
            </tr>
        </thead>
        <tbody>
        @foreach ($analytic as $key => $_history)
            <tr>
                <td>{{ $analytic->firstItem() + $key }}</td>
                <td>
                    @if (!empty($_history->login_date_time) && !empty($_history->logout_date_time))
                        {{ $_history->login_date_time->diffInMinutes($_history->logout_date_time) }} mins
                    @else

                    @endif
                </td>
                <td>{{ $_history->login_date_time->format("d-m-y h:i:s A") }}</td>
                <td>
        {{ $_history->logout_date_time?$_history->logout_date_time->format("d-m-y h:i:s A"):'' }}
                </td>
                <td>{{ $_history->user->user_name ?? '' }}</td>
                <td>{{ $_history->user->membership->name ?? '' }}</td>
                <td class="{{ !empty($_history->user->activeDayAgo)?'text-success':'text-danger' }}">
                    {{ !empty($_history->user->activeDayAgo)?'Active':'In-Active' }}
                </td>
                <td>
                    {{ $_history->user->is_active?'Active':'Deactive' }}
                </td>
                <td>{{ $_history->user->wallet->coins ?? 0 }}</td>
                <td>{{ $_history->ip_address ?? "" }}</td>
                <td></td>
                <td>{{ browser($_history->user_agent) }}</td>
                
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
