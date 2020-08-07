@extends('layouts.app')

@section('content')

<div class="_ad-body">
                <!-- Admin Body Header -->
                <div class="_ad-top-hdr">
                    <p class="_page-title">Auction</p>
                </div>
                <!-- Admin Body Main -->
                <div class="_ad-body-main">
                    <!-- Div : Begin -->
                    <div class="_aucInfo-box-outer">
                        <div class="row">
                            <!-- Left Section  -->
                            <div class="col-md-6 _aucInfo-box-lft">                                
                                <div class="_aucInfo-box-lft-inner">
                                    <div class="_aucInfo-box-lft-top">
                                        <div class="_aucPro-fig"><img src="{{ asset("storage/$auction->product_image") }}" alt=""></div>
                                        <div class="_aucPro-details">
                                            <ul class="_aucPro-lists">
                                                <li>
                                                    <span class="_name">Auction Code :</span>
                                                    <span class="_desc">{{ $auction->auction_code ?? '' }}</span>
                                                </li>
                                                <li>
                                                    <span class="_name">Product NAME :</span>
                                                    <span class="_desc">{{ $auction->product_name ??'' }}</span>
                                                </li>
                                                <li>
                                                    <span class="_name">Product Link</span>
                                                    <div class="_desc">
<a href="{{ $auction->product_link ?? '' }}" target="blank"class="_buy-now"><img src="images/flipcart-icon.jpg" alt=""></a>
                                                        <p class="_desc-info">This Is Buy Now Button</p>
                                                    </div>
                                                </li>
                                                <li>
                                                    <span class="_name">Product Categories :</span>
                                                    <span class="_desc">{{$auction->product_category? implode('/',json_decode($auction->product_category)):'' }}</span>
                                                </li>
                                                <li>
                                                    <span class="_name">Product value :</span>
                                                    <span class="_desc"><span class="_r-symbol">₹</span>{{ number_format($auction->product_value ?? '',2) }}</span>
                                                </li>
                                                <li>
                                                    <span class="_name">value in B₹ :</span>
                                                    <span class="_desc"><span class="_r-symbol">B₹</span> {{ number_format($auction->value_in_coins ?? '',2)  }}</span>
                                                </li>
                                                <li style="flex-wrap: wrap">
                                                    <span class="_name">Description :</span>
                                                    <div class="_desc" style="padding-top: 10px">
                                                        {!! $auction->desc !!}
                                                        <ul class="_proDesc">
    <li>
        <span class="_proDesc-lft">Brand </span>
        <span class="_proDesc-right">{{ $auction->brand ?? '' }}</span>
    </li>
    <li>
        <span class="_proDesc-lft">Product Code </span>
        <span class="_proDesc-right">{{ $auction->product_code ?? '' }}</span>
    </li>
                                                           
                                                        </ul>
                                                    </div>
                                                </li>
                                            </ul>
                                        </div>
                                        
                                    </div>
                                    <div class="_aucInfo-box-lft-btm">
                                        <ul class="_acAddInfo-lists">
                                            <li>
                                                <span class="_addInfo-title">auction date :</span>
                                                <span class="_addInfo-desc">{{ date('d - m - Y',strtotime($auction->auction_date)) }}</span>
                                            </li>
                                            <li>
                                                <span class="_addInfo-title">default fee :</span>
                                                <span class="_addInfo-desc"><span class="_r-symbol">B₹</span> {{ number_format( $auction->default_auction_fee ?? 0 ,2)}}</span>
                                            </li>
                                            <li>
                                                <span class="_addInfo-title">auction time :</span>
                                              <span class="_addInfo-desc">{{ date('h:i:s A',strtotime($auction->default_auction_time))}}</span>
                                            </li>
                                            <li>
                                                <span class="_addInfo-title">after discount :</span>
                                                <span class="_addInfo-desc"><span class="_r-symbol">B₹</span> {{ number_format($auction->auction_fee_after_discount,2) }}</span>
                                            </li>
                                        </ul>
                                    </div>
                                </div>                                
                            </div>
                            <div class="col-md-6 _aucInfo-box-right">
                                <div class="_aucInfo-box-right-inner">
                                    <ul class="_aucPro-lists _aucPro-lists-2">
                                        {{-- <li>
                                            <span class="_name">Value in coins :</span>
                                            <span class="_desc">{{ $auction->value_in_coins ?? 0 }}</span>
                                        </li> --}}
                                        <li>
                                            <span class="_name">bid start from :</span>
                                            <span class="_desc">B₹ {{ number_format($auction->bid_start_from ?? 0,2) }}</span>
                                        </li>
                                        <li>
                                            <span class="_name">per bid B₹ :</span>
                                            <span class="_desc">B₹ {{ number_format($auction->per_bid_coins ?? 0,2) }}</span>
                                        </li>
                                        <li>
                                            <span class="_name">basic/advance - auto bid allow upto :</span>
                                            <span class="_desc">B₹ {{ number_format($auction->basic_advance_auto_bid_allow_upto ?? 0,2) }}</span>
                                        </li>
                                        <li>
                                            <span class="_name">premium - auto bid allow upto :</span>
                                            <span class="_desc">B₹ {{ number_format($auction->premium_auto_bid_allow_upto ?? '',2) }}</span>
                                        </li>
                                        <li>
                                            <span class="_name">premium plus - auto bid allow upto :</span>
                                            <span class="_desc">B₹ {{ number_format($auction->premium_plus_bid_allow_upto ?? '',2) }}</span>
                                        </li>
                                        {{-- <li>
                                            <span class="_name">manual per bid coin :</span>
                                            <span class="_desc"></span>
                                        </li> --}}
                                        <li>
                                            <span class="_name">last bid will be accepted :</span>
                                            <span class="_desc">B₹ {{ number_format($auction->last_bid_accepted ?? '',2) }}</span>
                                        </li>
                                        <li>
                                            <span class="_name">new bidder allow upto :</span>
                                            <span class="_desc">B₹ {{ number_format($auction->new_bidder_allow_upto ?? '',2) }}</span>
                                        </li>
                                        <li style="flex-wrap: wrap">
                                            <span class="_name">NOTES :</span>
                                            <div class="_desc table-responsive">
                                                {!! $auction->note ?? '' !!}
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Div : Begin -->
                    <div class="_infoDisplay-cont">
                        <ul class="_infoDisplay-lists">
                         <li class="_infoDisplay-list"><p>Total Bidders : 
                            {{ !empty($auction->playAuctions)?$auction->playAuctions->count():0 }}
                            </p></li>
                          
                            <li class="_infoDisplay-list"><p>Starter : {{ $auction->users->where('membership_id',1)->count() ?? 0 }} </p></li>
                            <li class="_infoDisplay-list"><p>Basic : {{ $auction->users->where('membership_id',2)->count() ?? 0 }}</p></li>
                            <li class="_infoDisplay-list"><p>Advance : {{ $auction->users->where('membership_id',3)->count() ?? 0 }}</p></li>
                            <li class="_infoDisplay-list"><p>Premium : {{ $auction->users->where('membership_id',4)->count() ?? 0 }}</p></li>
                            <li class="_infoDisplay-list"><p>Premium+ : {{ $auction->users->where('membership_id',5)->count() ?? 0 }}</p></li>
                        </ul>
                    </div>
                    <!-- Div : Begin -->
                    <div class="_badge-cont">
                        <div class="row">
                            <div class="col-md-4">
                                <div class="_infoBadge _bg-red-light">
                                    <span class="_infoBadge-title">Total Auction Fees</span>
                                    <span class="_infoBadge-desc" >B<span class="_r-symbol">&#8377;</span>
                                    <d id="auction_fee">
                                    {{ !empty($auction->playAuctions)?number_format($auction->playAuctions->sum('auction_fee'),2):0 }}
                                    </d> 
                                </span>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="_infoBadge _bg-violet">
                                    <span class="_infoBadge-title">Total Bid Amount</span>
                                    <span class="_infoBadge-desc" >B<span class="_r-symbol">&#8377;</span> 
                                    <d id="bid_amount">{{ number_format($totalBids,2) }}</d>
                                </span>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="_infoBadge _bg-green">
                                    <span class="_infoBadge-title">Bid Gained</span>
                    <span class="_infoBadge-desc" >B<span class="_r-symbol">&#8377;</span> 
                <d id="bid_gained">{{ number_format($bid_gained??0,2) }}</d>
                </span>
                                </div>
                            </div>
                        </div>
                        
                    </div>
                    <!-- Div : Begin -->
                    <div class="_aucTable-div">
                        <div class="row _aucTable-div-header">
                            <div class="col-md-5"><p class="_title-2">Current Highest Bid Price : {{ ($auction->bids->sortByDesc('id')->first())->bid_amount ?? 0 }} Coins</p></div>
                            <div class="col-md-7">
                                <div class="row">
                                    <div class="col-md-4"><p class="_title-3">Auction Date : {{ $auction->auction_date }}</p></div>
                                    <div class="col-md-4"><p class="_title-3">Start Time : {{ $auction->default_auction_time }}</p></div>
                                    <div class="col-md-4"><p class="_title-3">End Time : 00:00</p></div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="table-responsive">
                            <table class="table table-border _table">
                                <thead>
                                    <tr>
                                        <th>Position</th>
                                        <th>Auction <br>Fee</th>
                                        <th>User <br>Name</th>
                                        <th>Bid <br>Price</th>
                                        <th>User <br>Categories</th>
                                        <th>Status</th>
                                        <th>Change To</th>
                                        <th>Reserved</th>
                                        <th>Up Level 1</th>
                                        <th>Up Level 2</th>
                                        <th>R Bonus In Coin</th>
                                        <th>Send R Bonus <br> <input type="checkbox" id="selectAllRefund"></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @php
                                        $count = 0;
                                        $s_no = 0;
                                    @endphp

                                    <!-- tr : begin  -->
                                @forelse ($playAuctions as $key => $play)
                                    <tr>
                                        <td>{{ ++$s_no }}</td>
                                        <td>B₹ {{ number_format($play->auction_fee ?? 0,2) }}</td>
                                        <td>{{ $play->user->user_name ?? '' }}</td>
                                        <td>B₹ {{ number_format(($auction->bids->where('user_id',$play->user->id)->last())->bid_amount ?? 0,2) }}</td>
                                        <td>{{ $play->user->membership->name ?? '' }}</td>
                                        <td>{{ $play->is_active?'Active':'Deactive' }}</td>
                                        <td class="_h-info">
                                            Change
                                            <div class="_h-infoCont" >
                                                <span class="_h-info-arr"></span>
                                                <div class="_h-infoCont-inner">
                                                    <form action="{{ route('auction.block.user') }}" method="post">
                                                        @csrf
                                                        <input type="hidden" name="user_id" value="{{ $play->user->id ?? '' }}">
                                                        <input type="hidden" name="auction_id" value="{{ $play->auction_id ?? '' }}">
                                                        <div class="form-group">
                                                            <select name="blockWhen"  class="form-control blockWhen">
                                                                <option value="1">Now</option>
                                                                <option value="2">When</option>
                                                                
                                                            </select>
                                                        </div>
                                                        <div class="form-group" style="display: none;" id="bidGainedBlock">
                                                            <select name="whenBlockUser" id="" class="form-control">
                                                                <option value="1">Total Auction Fee</option>
                                                                <option value="2">Total Bid Amount</option>
                                                                <option value="3">Bid Gained</option>
                                                            </select>
                                                        </div>
                                                        <div class="form-group" style="display:none" id="valueAfterBlock">
                                                            <input type="text" class="form-control" placeholder="Input Value" name="valueAfterBlock">
                                                        </div>
                                                        <div class="form-group">
                                                            <button class="btn" type="submit">Suspend</button>
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>
                                        </td>
                                        <td>

                                            <label class="_cus-checkbox">
<input type="checkbox" class="reserved" data-payload='@json($play)' data-bidAmount="{{ ($auction->bids->where('user_id',$play->user->id)->last())->bid_amount ?? '' }}" data-rank="{{ ++$count }}" data-type="{{ $play->user->membership->id }}" 
@switch($s_no)
    @case(1)
        data-bidGainedValue="{{ $bid_gained_rank->first ?? 0 }}"
        @break
    @case(2)
        data-bidGainedValue="{{ $bid_gained_rank->second ?? 0}}"
        @break
    @case(3)
        data-bidGainedValue="{{ $bid_gained_rank->third ?? 0}}"
        @break

   
           
@endswitch

>
                                                <span></span>
                                            </label>
                                        </td>

                                        <td title="{{ $play->user->uplinkOne->membership->name ??'' }}">

            @if (!empty($play->user->uplinkOne) && !empty($play->user->uplinkOne->playAuction) && $play->user->uplinkOne->membership->id == 3 && $play->user->uplinkOne->playAuction->where('created_at',yesterday())->count())
                   
                            <strong class="_text-darkGreen">
                                                {{ $play->user->uplinkOne->user_name ??'N/A' }}
                            </strong>
                    
          
    @elseif (!empty($play->user->uplinkOne) && ($play->user->uplinkOne->membership->id == 4  || $play->user->uplinkOne->membership->id == 5))
                                            <strong class="_text-darkGreen">
                                                {{ $play->user->uplinkOne->user_name ??'N/A' }}
                                            </strong>
                                                
                                            @else
                                                {{ $play->user->uplinkOne->user_name ??'N/A' }}    
                                            @endif
                                            
                                           
                                        </td>

                                        <td title="{{ $play->user->uplinkTwo->membership->name ??'' }}" >
    @if (!empty($play->user->uplinkTwo) && ($play->user->uplinkTwo->membership->id == 4  || $play->user->uplinkTwo->membership->id == 5))
                                            <strong class="_text-darkGreen">
                                                {{ $play->user->uplinkTwo->user_name ??'N/A' }}
                                            </strong>
                                                
                                            @else
                                                {{ $play->user->uplinkTwo->user_name ??'N/A' }}    
                                            @endif
                                            
                                        </td>


                                        <td class="_h-info _h-info-2">
                                            @if ($loop->first)
                                                0

                                            @else    
@if ($auction->bids->count() == true)
    @php
        
        $bidAmount = $auction->bids
                ->where('user_id',$play->user->id)
                ->last()
                ->bid_amount;
    @endphp
@else
    @php
        $bidAmount = 0;
    @endphp
@endif

<span class="refundValue" id="amount{{ $play->id }}">
    {{ !empty($play->return_coins)?$play->return_coins: $bidAmount*100 }}
</span> 
                                            @endif
                                            
                                            <div class="_h-infoCont" @if ($auction->status ==2)
                                                style="display: none" 
                                            @endif>
                                                <span class="_h-info-arr"></span>
                                                <div class="_h-infoCont-inner">
                                                                                                
                                                        <div class="form-group">
                                <input type="text" class="form-control" placeholder="Input Value" id="coinAmounInput{{ $play->id }}">
                                                        </div>
                                                        <div class="form-group">
                                                            <button class="btn _bg-green" id="returnsubmit{{ $play->id }}" onclick="returnCoinBalance('{{ $play->id }}')">Submit</button>
                                                        </div>
                                                   
                                                </div>
                                            </div>
                                        </td>
                                        <td>
                                            <label class="_cus-checkbox">
                                                @if ($loop->first)
                                                    <input type="checkbox" disabled="">    
                                                @else
 <input type="checkbox" class="send_refund" @if ($play->is_return_coin_checked)
     checked="checked" 
 @endif
  id="checkbox{{ $play->id }}" onchange="onSelectCheckBox('{{ $play->id }}')">
                                                @endif
                                                <span></span>
                                            </label>
                                        </td>
                                    </tr>
                                @empty
                                @endforelse
                                    
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <!-- Div : Begin  -->
                   <div class="text-right" @if ($auction->status == 3 || $auction->status == 2)
                      style="display: none" 
                   @endif>
                    <a href="" class="btn _btn2 _btn-small _bg-green" >
                        Send Refund Bonus
                    </a>
            </div>
                    
                </div>
            </div>


@push('script')
 <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">


  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
    var auctionFee = "";
    var bidAmount = "";
    var bidGained = "";
    var payload = "";
    var rank = "";
    var type = "";

    $(`.reserved`).change(function(event) {

        auctionFee = parseFloat($(`#auction_fee`).html());
        bidAmount = parseFloat($(`#bid_amount`).html());
        bidGained = parseFloat($(`#bid_gained`).html());
        payload = $(this).data('payload');
        rank = $(this).data('rank');
        auction_fee = parseFloat(payload.auction_fee);
        bid_amount = parseFloat($(this).data('bidamount'));
        type = $(this).data('type');
        bidGainedValue = parseFloat($(this).data('bidgainedvalue'));


    if ($(this).prop('checked') == true) {
        auctionFee-= auction_fee;
        bidAmount-= bid_amount;
        
        if(rank == 1){
            bidGained-=(auction_fee+bidGainedValue);
        }
        else if (rank<=3 && (type==1 || type ==2 || type ==3)) {
            bidGained-=(auction_fee+bidGainedValue);
        }
        else{
            bidGained-=auction_fee;
        }
    }else{
        auctionFee+= auction_fee;
        bidAmount+= bid_amount;
        
        if(rank == 1){
            bidGained+=(auction_fee+bidGainedValue);
        }else if (rank<=3 && (type==1 || type ==2 || type ==3)) {
            bidGained+=(auction_fee+bidGainedValue);
        }else{
            bidGained+=auction_fee;
        }
    }
    $(`#auction_fee`).html(auctionFee.toFixed(2));
    $(`#bid_amount`).html(bidAmount.toFixed(2));
    $(`#bid_gained`).html(bidGained.toFixed(2));
   });   

   $( function() {
    $( document ).tooltip();
  } );        


  $(".blockWhen").change(function(){
    if ($(this).val() == 2) {
        $("#bidGainedBlock,#valueAfterBlock").show();
    }else{
         $("#bidGainedBlock,#valueAfterBlock").hide();
    }
  }); 

    var allCheckBox = function(data,status){
         $.post('{{ route('auction.return.coin') }}', {
            _token:"{{ csrf_token() }}",
            data:data,
            status:status
        });
    }

    $("#selectAllRefund").change(function(){
        var data = [];
        if ($(this).prop("checked")) {
            $(".send_refund").prop('checked', true);
            $(".send_refund").each(function(){
               data.push(parseInt(this.id.replace('checkbox','')));
            });
                allCheckBox(data,1);
        }else{
            $(".send_refund").prop('checked', false);
                $(".send_refund").each(function(){
               data.push(parseInt(this.id.replace('checkbox','')));
            });
                allCheckBox(data,0);
        }

        
    });
    var ajaxCall = function(id,inputVal,isChecked){
        $.post('{{ route('auction.return.coin') }}', {
            _token:"{{ csrf_token() }}",
            playId:id,
            amount:inputVal,
            checkbox:isChecked
        });
    }

    function returnCoinBalance(id){
        var isChecked = $(`#checkbox${id}`).prop('checked');
        var inputVal = $(`#coinAmounInput${id}`).val();
        $(`#amount${id}`).html(inputVal);
        
        ajaxCall(id,inputVal,isChecked);
    }
    function onSelectCheckBox(id){
        var isChecked = $(`#checkbox${id}`).prop('checked');
        var inputVal = parseInt($(`#amount${id}`).html());
        ajaxCall(id,inputVal,isChecked);
        
        if($('.send_refund:checked').length == $('.send_refund').length){
            $('#selectAllRefund').prop('checked',true);
        }else{
            $('#selectAllRefund').prop('checked',false);
        }
    }

        if($('.send_refund:checked').length == $('.send_refund').length){
            $('#selectAllRefund').prop('checked',true);
        }else{
            $('#selectAllRefund').prop('checked',false);
        }

        @if ($auction->status == 2)
            $("input:checkbox").attr('disabled',true);
        @endif
 

</script>
@endpush
@endsection
