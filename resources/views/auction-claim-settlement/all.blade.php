@extends("layouts.app")
@section("content")
<div class="_ad-body">
                <!-- Admin Body Header -->
                <div class="_ad-top-hdr">
                    <p class="_page-title"> Auctions Claim & Settlement (All Claims)</p>
                </div>
                <!-- Admin Body Main -->
                <div class="_ad-body-main" >

                    <!-- Div : Begin -->
                        <div class="row" style="padding-bottom:20px">

                            <div class="col-md-4 ">
                    <form action="" id="paginationForm">
                        @foreach ($_GET as $key => $value)
                            @if ($key == 'search')
                               @continue
                            @endif
                            <input type="hidden" name="{{ $key }}" value="{{ $value }}">
                        @endforeach
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="Search for..." name="search" 
                            value="{{ request()->search }}">

                                        <span class="input-group-btn">
                                            <button class="btn btn-default" type="submit">
                                                <i class="fa fa-search"></i>
                                            </button>
                                        </span>
                        </div>
                    </form>
                            </div>
                             <div class="col-md-2"></div>
                            <div class="col-md-3">
                                <div id="reportrange" style="background: #fff; cursor: pointer; padding: 5px 10px; border: 1px solid #ccc; width: 100%">
                                        <i class="fa fa-calendar"></i>&nbsp;
                                        <span></span> <i class="fa fa-caret-down"></i>
                                </div>

                            </div>
                            
                              <div class="col-md-3">
                                    <form action="{{ route('auctionclaim.export','all')}}" method="GET">
                                    @foreach ($_GET as $key => $value)
                                        <input type="hidden" name="{{ $key }}" value="{{ $value }}">
                                    @endforeach
                                       <input type="hidden" name="member" value="{{ request()->segment(3) }}">
                                        {{-- @dump (request()->segment(3)) --}}
                                        <button class="btn _btn2 _btn-small">Export as CSV</button>
                                    </form>
                                </div>
                        </div>
                    <div class="_aucTable-div-2">  
                        <div class="table-responsive">
      <table id="" class="table table-hover" style="width:100%;background: white !important;background-color:white;">
        <thead >
            <tr>
                <th>S.No</th>
                <th>Auction Date</th>
                <th>Auction Start Time</th>
                <th>Acution End Time</th>
                <th>Auction Id</th>
                <th>Product Name</th>
                <th>Product Price</th>
                <th>Winner User Name</th>
                <th>Coin Spent</th>
                <th>Winner Claimed</th>
                <th>Status</th>
                <th>Uplevel1 User Name</th>
                <th>Uplevel1 Claimed</th>
                <th>Status</th>
                <th>Uplevel2 User Name</th>
                <th>Uplevel2 Claimed</th>
                <th>Status</th>
                <th>Coin Settlement Status</th>
                
            </tr>
        </thead>
        <tbody>
        	@foreach ($auctionClaims as $key => $claim)
	        	<tr>
	        		<td>{{ $auctionClaims->firstItem()+$key }}</td>
	        		<td>{{ $claim->created_at?$claim->created_at->format('d-m-Y'):'N/A' }}</td>
	        		<td>{{ date('h:i:s A',strtotime($claim->auction->default_auction_time)) ?? '' }}</td>
	        		<td>{{ $claim->created_at?$claim->created_at->format('h:i:s A'):'N/A'  }}</td>
	        		<td>{{ $claim->auction->id }}</td>
	        		<td>{{ $claim->auction->product_name ?? 'N/A' }}</td>
	        		<td>{{ number_format($claim->auction->product_value,2) ?? 0 }}</td>
	        		<td>{{ $claim->winner->user_name ?? 'N/A' }}</td>
	        		<td>{{ $claim->coinSpent->bid_amount*100 }}</td>
	        		<td>{{ $claim->winner_claim ?? 'N/A' }}</td>
	        		<td>{{ $claim->winner_status_text ?? 'N/A' }}</td>
	        		<td>{{ !empty($claim->winner->uplinkOne)?$claim->winner->uplinkOne->user_name:'N/A' }}</td>
	        		<td>{{ $claim->uplevel1_claim??'N/A' }}</td>
	        		<td>{{ $claim->uplevel1_status_text ?? 'N/A' }}</td>
	        		<td>{{!empty( $claim->winner->uplinkTwo)?$claim->winner->uplinkTwo->user_name:'N/A' }}</td>
	        		<td>{{ $claim->uplevel2_claim??'N/A' }}</td>
	        		<td>{{ $claim->uplevel2_status_text ?? 'N/A' }}</td>
	        		<td >
	        			<a href="{{ route('auction.live',$claim->auction->id) }}" target="_blank" class="btn btn-primary">View</a>
	        			@php
	        				$arr  = [
	        					$claim->winner_status_text,
	        					$claim->uplevel1_status_text,
	        					$claim->uplevel2_status_text
	        				];
	        			@endphp
	        			@switch(max($arr))
	        			    @case('Processed')
	        			       <a class="btn btn-warning">Processed</a>
	        			        @break
	        			    @case('Settled')
	        			       <a class="btn btn-success">Settled</a>
	        			        @break

	        			@endswitch

	        		</td>
	        	</tr>
        	@endforeach
        
           
        </tbody>
        
    </table>
                        </div>
                    </div>
                    <!-- Div : Begin  -->   
                    <div class="dataTables_info" id="kt_table_1_info" role="status" aria-live="polite">Showing 
                                        {{$auctionClaims->firstItem()}} to {{$auctionClaims->lastItem()}}
    of  {{$auctionClaims->total()}} entries 
                    </div>   
                    <div id="pagination" style="text-align: right; float: right">
                            {{ $auctionClaims->appends($_GET)->links() }}                    
                    </div>            
    
                </div>
            </div>
             <form action="{{ url()->full() }}" id="dateFilter" >
          
            @foreach ($_GET as $key => $value)
                @if ($key == "start" || $key == "end")
                    @continue
                @endif
                <input type="hidden" name="{{ $key }}" value="{{ $value }}">
            @endforeach
                <input type="hidden" name="start" id="start">
                <input type="hidden" name="end" id="end">
            </form>
@push('script')
    

<script>

    $(function() {
    const urlParams = new URLSearchParams(window.location.search);

        var start = urlParams.get('start')?moment(urlParams.get('start')):moment().subtract(10, 'year');

        var end = urlParams.get('end')?moment(urlParams.get('end')):moment();
        
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
                'All': [moment().subtract(10, 'year'), moment()],
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