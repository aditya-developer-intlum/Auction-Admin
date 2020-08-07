@extends('layouts.app')

@section('content')

<div class="_ad-body">
                <!-- Admin Body Header -->
                <div class="_ad-top-hdr">
                    <p class="_page-title">{{ Str::title(request()->segment(3) ?? 'all') }} Auctions</p>
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
                            <div class="col-md-4 ">
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
                            </div>
                        </div>
                    <div class="_aucTable-div-2">  
                        <div class="table-responsive">
                            <table id="" class="table table-hover" style="width:100%;background: white !important;background-color:white;">
        <thead >
            <tr>
                <th width="1%">S.No</th>
                <th width="10%">Auction Code</th>
                <th>Bid Start Date</th>
                <th>Bid Start Time</th>
                <th>Product Name</th>
                <th>Product Price</th>
                <th>Value in B₹</th>
                <th>Auction Fee</th>
                <th>Per Bid Value </th>
                <th>Last Bid Accepted</th>
                <th>New Bidder Allow Upto</th>
                <th>Total Bidders</th>
                <th>Last Bid Price</th>
                <th>Last Bid Time</th>
                <th>Total Auction Fee</th>
                <th>Total Bid Amount</th>
                <th>Bid Gained</th>
                <th>Status</th>
                <th>Winner Claimed</th>
                <th>Up Level1 Claimed</th>
                <th>Up Level2 Claimed</th>
                @canany(['update','view'],\App\Auction::class)
                <th width="20%">Action</th>
                @endcan
               
            </tr>
        </thead>
        <tbody>
        @forelse ($auctions as $key => $auction)
            <tr>

              <th>{{ $auctions->firstItem()+$key }}</th>
              <th>{{ $auction->auction_code ?? '' }}</th>
              <th>{{ $auction->auction_date ?? '' }}</th>
              <th>{{ $auction->default_auction_time ?? '' }}</th>
              <th>{{ $auction->product_name ?? '' }}</th>
              <th> ₹{{ number_format($auction->product_value,2) ?? '' }}</th>
              <th>B₹{{ number_format($auction->value_in_coins ?? 0,2 )}}</th>
              <th>B₹{{ number_format($auction->default_auction_fee ?? 0,2) }}</th>
              <th>B₹{{ number_format($auction->per_bid_coins ?? 0,2) }}</th>
              <th>B₹{{ number_format($auction->last_bid_accepted ?? 0,2) }}</th>
              <th>B₹{{ number_format($auction->new_bidder_allow_upto ?? 0,2) }}</th>
              <th>{{ $auction->playAuctions->count() }}</th>
              <th>B₹{{ number_format($auction->bids->last()->bid_amount ?? 0,2) }}</th>
              <th>{{ !empty($auction->bids->last())?$auction->bids->last()->created_at->format('h:i:s A') : 0 }}</th>
              <th>B₹{{ number_format($auction->playAuctions->sum('auction_fee'),2) }}</th>
              <th>B₹{{ number_format($auction->bids->sum('bid_amount'),2) }}</th>
              <th>B₹{{ number_format(bidGained($auction),2) }}</th>
              <th>
                @switch($auction->status)
                  @case(2)
                        <span class="btn btn-warning">UpComing</span>
                        @break
                    @case(3)
                        <span class="btn btn-success">Live</span>
                        @break
                    @case(4)
                         <span class="btn btn-dark">Completed</span>
                        @break
                    @case(0)
                         <span class="btn btn-primary">Draft</span>
                        @break
                    @default
                            {{ $auction->status }}
                @endswitch
                
                
              </th>
              <th class="text-danger">
             
                {{ (!empty($auction->auctionClaim) && $auction->auctionClaim->is_winner_claimed)?"Yes":'No' }}</th>
              <th class="text-danger">
                 {{ (!empty($auction->auctionClaim) && $auction->auctionClaim->is_up_level1_claimed)?"Yes":'No' }}
              </th>
              <th class="text-danger">
                   {{ (!empty($auction->auctionClaim) && $auction->auctionClaim->is_up_level2_claimed)?"Yes":'No' }}
                </th>
              @canany(['update','view'],\App\Auction::class)
              <th width="20%">
                @can("update",\App\Auction::class)
                 <a href="{{ route('auction.edit',[$auction->id]) }}" class="btn btn-primary">Edit</a>
                @endcan
                @can("view",\App\Auction::class)
                 @if ($auction->status == 3 || $auction->status == 4 || $auction->status == 2)
                   
                <a href="{{ route('auction.live',[$auction->id]) }}" target="_blank" class="btn btn-success">View</a>
                 @endif
                @endcan
              </th>
              @endcan
              

            </tr>
        @empty

        @endforelse
           
        </tbody>
        
    </table>
                        </div>
                    </div>
                    <!-- Div : Begin  -->   
                    <div class="dataTables_info" id="kt_table_1_info" role="status" aria-live="polite">Showing 
                                        {{$auctions->firstItem()}} to {{$auctions->lastItem()}}
    of  {{$auctions->total()}} entries 
                                    </div>   
                    <div id="pagination" style="text-align: right; float: right">
                            {{ $auctions->appends(["perPage"=>request()->perPage,'search' => request()->search])->links() }}                    
                    </div>            
    
                </div>
            </div>

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
@endpush
@endsection
