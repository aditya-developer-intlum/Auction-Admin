@extends('layouts.app')
@section('content')
<div class="_ad-body">
                <!-- Admin Body Header -->
                <div class="_ad-top-hdr">
                    <p class="_page-title">Create Auction  +</p>
                </div>
               
               
                <!-- Admin Body Main -->
                <div class="_ad-body-main">
                    <!-- Div : Begin -->
                    <div class="_aucInfo-box-outer">
                        <form class="row" action="{{ route('auction.store') }}" method="post" enctype="multipart/form-data">
                          @csrf
                          
                            <!-- Left Section  -->
                            <div class="col-md-6 _aucInfo-box-lft">                                
                                <div class="_aucInfo-box-lft-inner">
                                   @foreach ($errors->all() as $error)
                                    <div class="alert alert-danger">
                                      {{ $error }}   
                                    </div>
                                    @endforeach
                                    <div class="_aucInfo-box-lft-top row">
                                        <div class="_aucPro-fig col-md-4">
                                            <img src="images/dummy-pic-2.jpg" alt="">
                                            <div class="_custom__uploadField">								
<input type="file" name="product_image" id="file-2" class="inputfile inputfile-style" data-multiple-caption="{count} files selected">
                                                <label for="file-2"><span>+ Upload Image</span></label>                                           
                                            </div>
                                            {{ request()->end }}
                                          @error('product_image')
                                            {{ $message }}
                                          @enderror
                                            {{-- <div class="_h-info">
                                                <a href="#" class="btn _btn3">
                                                    Paste Image Link
                                                </a>
                                                <div class="_h-infoCont">
                                                    <span class="_h-info-arr"></span>
                                                    <div class="_h-infoCont-inner">
                                                                                                                
                                                            <div class="form-group">
                                                                <input type="text" class="form-control text-center" placeholder="Paste link here">
                                                            </div>
                                                            <div class="form-group">
                                                                <button class="btn _bg-green">Submit</button>
                                                            </div>
                                                        
                                                    </div>
                                                </div>
                                            </div> --}}
                                           
                                        </div>
                                        <div class="_aucPro-details col-md-8">
                                            <ul class="_aucPro-lists _aucPro-form">
                                                <li>
                                                    <span class="_name">Auction Code :</span>
                                                    <div class="_desc _ac-formGrp">
        <input type="text" class="form-control has-error" name="auction_code" @error('auction_code')style="box-shadow: 0 0 3px  #CC0000" @enderror value="{{ old("auction_code") }}">
       
                                                        <span class="_verIcon  @error('auction_code')
                _unverified
        @else
            _verified 
        @enderror " >

        @error('auction_code')
               <i class="fas fa-times"></i>
        @else
             <i class="fas fa-check"></i>
        @enderror
                                                           </span>

                                                    </div>
                                                </li>
                                                <li>
                                                    <span class="_name">Product NAME :</span>
                                                    <div class="_desc _ac-formGrp">
        <input type="text" name="product_name" class="form-control" placeholder="Redmi Note 7 Pro" @error('product_name')style="box-shadow: 0 0 3px  #CC0000" @enderror value="{{ old("product_name") }}">
                                                        <span class="_verIcon @error('product_name')
                _unverified
        @else
            _verified 
        @enderror " >

        @error('product_name')
               <i class="fas fa-times"></i>
        @else
             <i class="fas fa-check"></i>
        @enderror
    </span>                                                        
                                                    </div>
                                                </li>
                                                <li>
                                                    <span class="_name">Product Link</span>
                                                    <div class="_desc _ac-formGrp">
        <input type="text" name="product_link" class="form-control" placeholder="This Is Buy Now Button" @error('product_link')style="box-shadow: 0 0 3px  #CC0000" @enderror value="{{ old("product_link") }}">
                                                        <span class="_verIcon @error('product_link')
                _unverified
        @else
            _verified 
        @enderror " >

        @error('product_link')
               <i class="fas fa-times"></i>
        @else
             <i class="fas fa-check"></i>
        @enderror
    </span>                                                        
                                                    </div>
                                                    
                                                </li>
                                                <li>
                                                    <span class="_name">Product Categories :</span>
                                                    <div class="_desc _ac-formGrp">
        <select name="product_category[]" id="" class="form-control" @error('product_link')style="box-shadow: 0 0 3px  #CC0000" @enderror>
            @foreach ($categories as $category)
                    <option value="{{ $category->name ?? ''}}" >{{ $category->name ?? '' }}</option>
            @endforeach
        </select>
                                                        <span class="_verIcon @error('product_link')
                _unverified
        @else
            _verified 
        @enderror " >

        @error('product_link')
               <i class="fas fa-times"></i>
        @else
             <i class="fas fa-check"></i>
        @enderror
    </span>      
                                                    </div>
                                                </li>
                                                <li>
                                                    <span class="_name">Product value :</span>
                                                    <div class="_desc _ac-formGrp">
    <input type="text" name="product_value" class="form-control" placeholder="₹ 10500.00" @error('product_value')style="box-shadow: 0 0 3px  #CC0000" @enderror value="{{ old("product_value") }}">
                                                        <span class="_verIcon @error('product_value')
                _unverified
        @else
            _verified 
        @enderror " >

        @error('product_value')
               <i class="fas fa-times"></i>
        @else
             <i class="fas fa-check"></i>
        @enderror
    </span>                                                        
                                                    </div>
                                                </li>
                                                <li>
                                                    <span class="_name">value in B₹ :</span>
                                                    <div class="_desc _ac-formGrp">
    <input type="text" name="value_in_coins" class="form-control" placeholder="B₹ 1050.00" @error('value_in_coins')style="box-shadow: 0 0 3px  #CC0000" @enderror value="{{ old("value_in_coins") }}">
                                                        <span class="_verIcon @error('value_in_coins')
                _unverified
        @else
            _verified 
        @enderror " >

        @error('value_in_coins')
               <i class="fas fa-times"></i>
        @else
             <i class="fas fa-check"></i>
        @enderror
    </span>                                                        
                                                    </div>
                                                </li>
                                                {{-- <li class="_a-start">
                                                    <span class="_name">Description :</span>
                                                    <div class="_desc _ac-formGrp">
    <textarea name="desc" id="desc" class="form-control" placeholder="" @error('desc')style="box-shadow: 0 0 3px  #CC0000" @enderror>{{ old("desc") }}</textarea>
                                                        <span class="_verIcon @error('desc')
                _unverified
        @else
            _verified 
        @enderror " >

        @error('desc')
               <i class="fas fa-times"></i>
        @else
             <i class="fas fa-check"></i>
        @enderror
    </span>                                                        
                                                    </div>
                                                </li> --}}
                                            </ul>
                                        </div>  
                                        <!-- Begin -->
                                        <div class="_a-start">
                                            <span class="_name" style="margin-bottom: 10px;display: inline-block;">Description :</span>
                                            <div class="_desc _ac-formGrp">
                                            <textarea name="desc" id="desc" class="form-control" placeholder="" @error('desc')style="box-shadow: 0 0 3px  #CC0000" @enderror>{{ old("desc") }}</textarea>
                                                                                                <span class="_verIcon @error('desc')
                                                        _unverified
                                                @else
                                                    _verified 
                                                @enderror " >

                                                @error('desc')
                                                       <i class="fas fa-times"></i>
                                                @else
                                                     <i class="fas fa-check"></i>
                                                @enderror
                                            </span>                                                        
                                            </div>
                                        </div>
                                        <!-- End -->                                      
                                    </div>
                                    <!-- Bottom : Div  -->
                                    <div class="_aucInfo-box-lft-btm">
                                        <ul class="_acAddInfo-lists _acAddInfo-lists-2 _aucPro-form">
                                            <li>
                                                <span class="_addInfo-title">auction date :</span>                                                
                                                <div class="_addInfo-desc _ac-formGrp _datePicker">
    <input type="text" name="auction_date" id="datepicker" class="form-control" placeholder="Select" @error('auction_date')style="box-shadow: 0 0 3px  #CC0000" @enderror value="{{ old('auction_date') }}"> 
                                                    <span class="_verIcon @error('auction_date')
                _unverified
        @else
            _verified 
        @enderror " >

        @error('auction_date')
               <i class="fas fa-times"></i>
        @else
             <i class="fas fa-check"></i>
        @enderror
    </span>      
                                                </div>                                               
                                            </li>
                                            <li>
                                                <span class="_addInfo-title">default aucion fee :</span>
                                                <div class="_addInfo-desc _ac-formGrp">
    <input type="text" name="default_auction_fee" class="form-control" placeholder="B₹ 1050.00" @error('default_auction_fee')style="box-shadow: 0 0 3px  #CC0000" @enderror value="{{ old('default_auction_fee') }}">
                <span class="_verIcon @error('default_auction_fee')
                _unverified
        @else
            _verified 
        @enderror " >

        @error('default_auction_fee')
               <i class="fas fa-times"></i>
        @else
             <i class="fas fa-check"></i>
        @enderror
    </span>      
                                                </div> 
                                            </li>
                                            <li>
                                                <span class="_addInfo-title">auction time :</span>
                                                <div class="_addInfo-desc _ac-formGrp">
    <input type="text" name="default_auction_time"  id="default_auction_time" class="form-control" @error('default_auction_time')style="box-shadow: 0 0 3px  #CC0000" @enderror value="{{ old('default_auction_time') }}"> 
                                                    <span class="_verIcon @error('default_auction_time')
                _unverified
        @else
            _verified 
        @enderror " >

        @error('default_auction_time')
               <i class="fas fa-times"></i>
        @else
             <i class="fas fa-check"></i>
        @enderror
    </span>      
                                                </div> 
                                            </li>
                                            <li>
            <span class="_addInfo-title">aucion fee <br>after discount :</span>
                                                <div class="_addInfo-desc _ac-formGrp">
    <input type="text" name="auction_fee_after_discount"  class="form-control12" @error('auction_fee_after_discount')style="box-shadow: 0 0 3px  #CC0000" @enderror value="{{ old("auction_fee_after_discount") }}"> 

                                                    <span class="_verIcon @error('auction_fee_after_discount')
                _unverified
        @else
            _verified 
        @enderror " >

        @error('auction_fee_after_discount')
               <i class="fas fa-times"></i>
        @else
             <i class="fas fa-check"></i>
        @enderror
    </span>      
                                                </div> 
                                            </li>
                                            <li>
            <span class="_addInfo-title">brand :</span>
                                                <div class="_addInfo-desc _ac-formGrp">
    <input type="text" name="brand"  class="form-control12" @error('brand')style="box-shadow: 0 0 3px  #CC0000" @enderror value="{{ old("brand") }}"> 

                                                    <span class="_verIcon @error('brand')
                _unverified
        @else
            _verified 
        @enderror " >

        @error('brand')
               <i class="fas fa-times"></i>
        @else
             <i class="fas fa-check"></i>
        @enderror
    </span>      
                                                </div> 
                                            </li>
                                            <li>
            <span class="_addInfo-title">Product Code :</span>
                                                <div class="_addInfo-desc _ac-formGrp">
    <input type="text" name="product_code"  class="form-control12" @error('product_code')style="box-shadow: 0 0 3px  #CC0000" @enderror value="{{ old("product_code") }}"> 

            <span class="_verIcon @error('product_code')
                _unverified
        @else
            _verified 
        @enderror " >

        @error('product_code')
               <i class="fas fa-times"></i>
        @else
             <i class="fas fa-check"></i>
        @enderror
    </span>      
                                                </div> 
                                            </li>
                                        </ul>
                                    </div>

                                    <!-- Div : Begin  -->
                                    <div class="_aucWin-claim">
                                        <p class="_title-2">Auction Winning Claim</p>
                                        <div class="_aucWin-claim-table">
                                            <table class="table">
                                                <thead>
                                                    <tr>
                                                        <th>levels</th>
                                                        <th>Product</th>
                                                        <th>Value in cash</th>
                                                        <th>Value in coin</th>
                                                    </tr>                                                    
                                                </thead>
                                                <tbody>
                                                    <!-- tr : Begin  -->
                                                    <tr>
                                                        <td>winner :</td>
                                                        <td>
                                                            <div class="_ac-formGrp">
<input type="text" class="form-control" placeholder="%" name="product_winner" @error('product_winner')style="box-shadow: 0 0 3px  #CC0000" @enderror value="{{ old("product_winner") }}">
                                                                <span class="_verIcon @error('product_winner')
                _unverified
        @else
            _verified 
        @enderror " >

        @error('product_winner')
               <i class="fas fa-times"></i>
        @else
             <i class="fas fa-check"></i>
        @enderror
    </span>                                                        
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <div class="_ac-formGrp">
<input type="text" class="form-control" placeholder="&#8377;" name="product_up_level1" @error('product_up_level1')style="box-shadow: 0 0 3px  #CC0000" @enderror value="{{ old("product_up_level1") }}">
                            <span class="_verIcon @error('product_up_level1')
                _unverified
        @else
            _verified 
        @enderror " >

        @error('product_up_level1')
               <i class="fas fa-times"></i>
        @else
             <i class="fas fa-check"></i>
        @enderror
    </span>                                                        
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <div class="_ac-formGrp">
<input type="text" class="form-control" placeholder="C" name="product_up_level2" @error('product_up_level2')style="box-shadow: 0 0 3px  #CC0000" @enderror value="{{ old("product_up_level2") }}">
            <span class="_verIcon @error('product_up_level2')
                _unverified
        @else
            _verified 
        @enderror " >

        @error('product_up_level2')
               <i class="fas fa-times"></i>
        @else
             <i class="fas fa-check"></i>
        @enderror
    </span>                                                        
                                                            </div>
                                                        </td>                                                        
                                                    </tr>
                                                    <!-- tr : Begin  -->
                                                    <tr>
                                                        <td>Up Level 1 :</td>
                                                        <td>
                                                            <div class="_ac-formGrp">
<input type="text" class="form-control" placeholder="C" name="value_in_cash_winner" @error('value_in_cash_winner')style="box-shadow: 0 0 3px  #CC0000" @enderror value="{{ old("value_in_cash_winner") }}">
        <span class="_verIcon @error('value_in_cash_winner')
                _unverified
        @else
            _verified 
        @enderror " >

        @error('value_in_cash_winner')
               <i class="fas fa-times"></i>
        @else
             <i class="fas fa-check"></i>
        @enderror
    </span>                                                        
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <div class="_ac-formGrp">
<input type="text" class="form-control" placeholder="&#8377;" name="value_in_cash_up_level1" @error('value_in_cash_up_level1')style="box-shadow: 0 0 3px  #CC0000" @enderror value="{{ old("value_in_cash_up_level1") }}">
<span class="_verIcon @error('value_in_cash_up_level1')
                _unverified
        @else
            _verified 
        @enderror " >

        @error('value_in_cash_up_level1')
               <i class="fas fa-times"></i>
        @else
             <i class="fas fa-check"></i>
        @enderror
    </span>                                                        
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <div class="_ac-formGrp">
<input type="text" class="form-control" placeholder="C" name="value_in_cash_up_level2" @error('value_in_cash_up_level2')style="box-shadow: 0 0 3px  #CC0000" @enderror value="{{ old("value_in_cash_up_level2") }}">
<span class="_verIcon @error('value_in_cash_up_level2')
                _unverified
        @else
            _verified 
        @enderror " >

        @error('value_in_cash_up_level2')
               <i class="fas fa-times"></i>
        @else
             <i class="fas fa-check"></i>
        @enderror
    </span>                                                        
                                                            </div>
                                                        </td>                                                        
                                                    </tr>
                                                    <!-- tr : Begin  -->
                                                    <tr>
                                                        <td>Up Level 2 :</td>
                                                        <td>
                                                            <div class="_ac-formGrp">
<input type="text" class="form-control" placeholder="C" name="value_in_coin_winner" @error('value_in_coin_winner')style="box-shadow: 0 0 3px  #CC0000" @enderror value="{{ old("value_in_coin_winner") }}">
<span class="_verIcon @error('value_in_coin_winner')
                _unverified
        @else
            _verified 
        @enderror " >

        @error('value_in_coin_winner')
               <i class="fas fa-times"></i>
        @else
             <i class="fas fa-check"></i>
        @enderror
    </span>                                                        
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <div class="_ac-formGrp">
<input type="text" class="form-control" placeholder="&#8377;" name="value_in_coin_up_level1" @error('value_in_coin_up_level1')style="box-shadow: 0 0 3px  #CC0000" @enderror value="{{ old("value_in_coin_up_level1") }}">
                                                                <span class="_verIcon @error('value_in_coin_up_level1')
                _unverified
        @else
            _verified 
        @enderror " >

        @error('value_in_coin_up_level1')
               <i class="fas fa-times"></i>
        @else
             <i class="fas fa-check"></i>
        @enderror
    </span>                                                        
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <div class="_ac-formGrp">
<input type="text" class="form-control" placeholder="C" name="value_in_coin_up_level2" @error('value_in_coin_up_level2')style="box-shadow: 0 0 3px  #CC0000" @enderror value="{{ old("value_in_coin_up_level2") }}">
                                                                <span class="_verIcon @error('value_in_coin_up_level2')
                _unverified
        @else
            _verified 
        @enderror " >

        @error('value_in_coin_up_level2')
               <i class="fas fa-times"></i>
        @else
             <i class="fas fa-check"></i>
        @enderror
    </span>                                                        
                                                            </div>
                                                        </td>                                                        
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>

                                    
                                    
                                </div>                                
                            </div>
                            <div class="col-md-6 _aucInfo-box-right">
                                <div class="_aucInfo-box-right-inner">
                                    <ul class="_aucPro-lists _aucPro-lists-2 _aucPro-form">
                                        {{-- <li>
                                            <span class="_name">Value in coins :</span>
                                            <div class="_desc _ac-formGrp">
<input type="text" class="form-control" placeholder="" value="{{ old("value_in_coins") }}" @error('value_in_coins')style="box-shadow: 0 0 3px  #CC0000" @enderror name="value_in_coins">
                                                <span class="_verIcon @error('value_in_coins')
                _unverified
        @else
            _verified 
        @enderror " >

        @error('value_in_coins')
               <i class="fas fa-times"></i>
        @else
             <i class="fas fa-check"></i>
        @enderror
    </span>                                                        
                                            </div>
                                        </li> --}}
                                        <li>
                                            <span class="_name">bid start from :</span>
                                            <div class="_desc _ac-formGrp">
<input type="text" class="form-control" placeholder="" name="bid_start_from" @error('bid_start_from')style="box-shadow: 0 0 3px  #CC0000" @enderror value="{{ old("bid_start_from") }}">
                                                <span class="_verIcon @error('bid_start_from')
                _unverified
        @else
            _verified 
        @enderror " >

        @error('bid_start_from')
               <i class="fas fa-times"></i>
        @else
             <i class="fas fa-check"></i>
        @enderror
    </span>                                                        
                                            </div>
                                        </li>
                                        <li>
                                            <span class="_name">per bid coins :</span>
                                            <div class="_desc _ac-formGrp">
<input type="text" class="form-control" placeholder="" name="per_bid_coins" @error('per_bid_coins')style="box-shadow: 0 0 3px  #CC0000" @enderror value="{{ old("per_bid_coins") }}">
                                                <span class="_verIcon @error('per_bid_coins')
                _unverified
        @else
            _verified 
        @enderror " >

        @error('per_bid_coins')
               <i class="fas fa-times"></i>
        @else
             <i class="fas fa-check"></i>
        @enderror
    </span>                                                        
                                            </div>
                                        </li>
                                        <li>
                                            <span class="_name">basic/advance - auto bid allow upto :</span>
                                            <div class="_desc _ac-formGrp">
<input type="text" class="form-control" placeholder="" name="basic_advance_auto_bid_allow_upto" @error('basic_advance_auto_bid_allow_upto')style="box-shadow: 0 0 3px  #CC0000" @enderror value="{{ old("basic_advance_auto_bid_allow_upto") }}">
                                                <span class="_verIcon @error('basic_advance_auto_bid_allow_upto')
                _unverified
        @else
            _verified 
        @enderror " >

        @error('basic_advance_auto_bid_allow_upto')
               <i class="fas fa-times"></i>
        @else
             <i class="fas fa-check"></i>
        @enderror
    </span>                                                        
                                            </div>
                                        </li>
                                        <li>
                                            <span class="_name">premium - auto bid allow upto :</span>
                                            <div class="_desc _ac-formGrp">
<input type="text" class="form-control" placeholder="" name="premium_auto_bid_allow_upto" @error('premium_auto_bid_allow_upto')style="box-shadow: 0 0 3px  #CC0000" @enderror value="{{ old("premium_auto_bid_allow_upto") }}">
                                                <span class="_verIcon @error('premium_auto_bid_allow_upto')
                _unverified
        @else
            _verified 
        @enderror " >

        @error('premium_auto_bid_allow_upto')
               <i class="fas fa-times"></i>
        @else
             <i class="fas fa-check"></i>
        @enderror
    </span>                                                        
                                            </div>
                                        </li>
                                        <li>
                                            <span class="_name">premium plus - auto bid allow upto :</span>
                                            <div class="_desc _ac-formGrp">
<input type="text" class="form-control" placeholder="" name="premium_plus_bid_allow_upto" @error('premium_plus_bid_allow_upto')style="box-shadow: 0 0 3px  #CC0000" @enderror value="{{ old("premium_plus_bid_allow_upto") }}">
                                                <span class="_verIcon @error('premium_plus_bid_allow_upto')
                _unverified
        @else
            _verified 
        @enderror " >

        @error('premium_plus_bid_allow_upto')
               <i class="fas fa-times"></i>
        @else
             <i class="fas fa-check"></i>
        @enderror
    </span>                                                        
                                            </div>
                                        </li>
                                        {{-- <li>
                                            <span class="_name">manual per bid coin :</span>
                                            <div class="_desc _ac-formGrp">
                                                <input type="text" class="form-control" placeholder="">
                                                <span class="_verIcon @error('auction_code')
                _unverified
        @else
            _verified 
        @enderror " >

        @error('auction_code')
               <i class="fas fa-times"></i>
        @else
             <i class="fas fa-check"></i>
        @enderror
        </span>                                                        
                                            </div>
                                        </li> --}}
                                        <li>
                                            <span class="_name">last bid will be accepted :</span>
                                            <div class="_desc _ac-formGrp">
    <input type="text" class="form-control" placeholder="" name="last_bid_accepted" @error('last_bid_accepted')style="box-shadow: 0 0 3px  #CC0000" @enderror value="{{ old("last_bid_accepted") }}">
                                                <span class="_verIcon @error('last_bid_accepted')
                _unverified
        @else
            _verified 
        @enderror " >

        @error('last_bid_accepted')
               <i class="fas fa-times"></i>
        @else
             <i class="fas fa-check"></i>
        @enderror
    </span>                                                        
                                            </div>
                                        </li>
                                        <li>
                                            <span class="_name">new bidder allow upto :</span>
                                            <div class="_desc _ac-formGrp">
    <input type="text" class="form-control" placeholder="" name="new_bidder_allow_upto" @error('new_bidder_allow_upto')style="box-shadow: 0 0 3px  #CC0000" @enderror value="{{ old("new_bidder_allow_upto") }}">
                                                <span class="_verIcon @error('new_bidder_allow_upto')
                _unverified
        @else
            _verified 
        @enderror " >

        @error('new_bidder_allow_upto')
               <i class="fas fa-times"></i>
        @else
             <i class="fas fa-check"></i>
        @enderror
    </span>                                                        
                                            </div>
                                        </li>
                                        
                                    </ul>
        <div class="_a-start">
            <span class="_name" style="display:inline-block; margin-bottom: 10px">NOTES :</span>
            <div class="_desc _ac-formGrp">
            <textarea class="form-control" id="note" placeholder="" name="note" @error('note')style="box-shadow: 0 0 3px  #CC0000" @enderror>{{ old("note") }}</textarea>
                    
                    <span class="_verIcon @error('note')
                        _unverified
                @else
                    _verified 
                @enderror " >

                @error('note')
                       <i class="fas fa-times"></i>
                @else
                     <i class="fas fa-check"></i>
                @enderror
            </span>                                                        
        </div>
    </div>
                                    <!-- Div : Begin  -->
                                    <div class="_btn-grps">
            <button class="btn _btn2 _btn-small _bg-green-2" type="submit" name="status" value="0">Save Auction</button>

              <button class="btn _btn2 _btn-small _bg-blue-2" type="submit" value="2" name="status">Publish Auction</button>
                                        
    
                                    </div>
                                    
                                </div>
                            </div>
                            
                        </form>
                    </div>
                  
                </div>
            </div>
             <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
         
@push('script')
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script>
        $(document).ready(function() {
            $(`#desc,#note`).summernote();
            $(`.popover-content .note-children-container`).hide();
        });
        @if (Session::has('success'))
            Swal.fire({
              icon: 'success',
              title: 'Success',
              text: '{{ Session::get('success') }}',
            });
        @endif

    
    $( function() {
        $( "#datepicker" ).datepicker();
    });
     $( function() {
        $( "#default_auction_time" ).timepicker();
    });


    </script>
@endpush
@endsection