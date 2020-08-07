@extends('layouts.app')
@section('content')
<div class="_ad-body">
                <!-- Admin Body Header -->
                <div class="_ad-top-hdr">
                    <p class="_page-title">Memebership Package Update</p>
                </div>
                <!-- Admin Body Main -->
                <div class="_ad-body-main">
                    <!-- Div : Begin -->
                    <div class="_aucInfo-box-outer">
                        <div class="row">
                            <!-- Left Section  -->
                            <div class="col-md-6 _aucInfo-box-right">
                                <div class="_aucInfo-box-right-inner">
                                    @if(session()->has('success'))
                                    <div class="alert alert-success">
                                        {{ session()->get('success') }}
                                    </div>
                                    @endif

                                <form action="{{route('membership-package.update',$MembershipPackage->id)}}" method="POST">
                                    @method('PATCH') 
                                    @csrf
                                    <ul class="_aucPro-lists _aucPro-lists-2 _aucPro-form">
                                        <li>
                                            <span class="_name">PACKAGE NAME :</span>
                                            <div class="_desc _ac-formGrp">
                                            <input type="text" class="form-control" name="name" @error('name') style="box-shadow: 0 0 3px  #CC0000"@enderror  value="{{ $MembershipPackage->name }}" placeholder="">
                                                <span class="_verIcon @error('name') _unverified @else _verified @enderror"> @error('name') <i class="fas fa-times"></i> @else  <i class="fas fa-check"></i> @enderror</span>                                                        
                                            </div>
                                        </li>
                                        <li>
                                            <span class="_name">PACKAGE VALIDITY:</span>
                                            <div class="_desc _ac-formGrp">
                                                <input type="number" class="form-control" @error('validity') style="box-shadow: 0 0 3px  #CC0000" @enderror value="{{ $MembershipPackage->validity }}"  name="validity" placeholder="">
                                                <span class="_verIcon  @error('validity') _unverified @else _verified @enderror">@error('validity') <i class="fas fa-times"></i>  @else <i class="fas fa-check"></i>@enderror</span>                                                        
                                            </div>
                                        </li>
                                        <li>
                                            <span class="_name">PRICE PER MONTH :</span>
                                            <div class="_desc _ac-formGrp">
                                                <input type="number" class="form-control"  @error('price_per_month') style="box-shadow: 0 0 3px  #CC0000" @enderror value="{{ $MembershipPackage->price_per_month }}"  name="price_per_month" placeholder="">
                                                <span class="_verIcon @error('price_per_month') _unverified @else _verified @enderror">@error('price_per_month') <i class="fas fa-times"></i>   @else <i class="fas fa-check"></i>@enderror</span>                                                        
                                            </div>
                                        </li>
                                        <li>
                                            <span class="_name">PRICE AFTER DISCOUNT (Per Month) :</span>
                                            <div class="_desc _ac-formGrp">
                                            <input type="number" class="form-control"  @error('price_after_discount') style="box-shadow: 0 0 3px  #CC0000" @enderror value="{{ $MembershipPackage->price }}" name="price_after_discount"placeholder="">
                                                <span class="_verIcon @error('price_after_discount') _unverified @else _verified @enderror">@error('price_after_discount') <i class="fas fa-times"></i>   @else <i class="fas fa-check"></i>@enderror</span>                                                        
                                            </div>
                                        </li>
                                        <li>
                                            <span class="_name">DISCOUNT ON COINS PRICE :</span>
                                            <div class="_desc _ac-formGrp">
                                            <input type="number" class="form-control"  @error('discount_on_coins_price') style="box-shadow: 0 0 3px  #CC0000" @enderror value="{{ $MembershipPackage->discount_coins_price }}" name="discount_on_coins_price" placeholder="">
                                                <span class="_verIcon  @error('discount_on_coins_price')_unverified @else _verified @enderror  ">@error('discount_on_coins_price') <i class="fas fa-times"></i>   @else <i class="fas fa-check"></i>@enderror</span>                                                        
                                            </div>
                                        </li>
                                        <li>
                                            <span class="_name">EXTRA COINS :</span>
                                            <div class="_desc _ac-formGrp">
                                            <input type="number" class="form-control"  @error('extra_coins') style="box-shadow: 0 0 3px  #CC0000" @enderror value="{{ $MembershipPackage->extra_coin }}"  name="extra_coins" placeholder="">
                                                <span class="_verIcon @error('extra_coins')_unverified @else _verified @enderror">@error('extra_coins')  <i class="fas fa-times"></i>   @else <i class="fas fa-check"></i>@enderror</i></span>                                                        
                                            </div>
                                        </li>
                                        <li>
                                            <span class="_name">TOTAL PRICE :</span>
                                            <div class="_desc _ac-formGrp">
                                            <input type="number" class="form-control"  @error('total_price') style="box-shadow: 0 0 3px  #CC0000 @enderror" value="{{ $MembershipPackage->original_price }}" name="total_price" placeholder="">
                                                <span class="_verIcon  @error('total_price')_unverified @else _verified @enderror">@error('total_price') <i class="fas fa-times"></i>   @else <i class="fas fa-check"></i>@enderror</i></span>                                                        
                                            </div>
                                        </li>
                                        <li>
                                            <span class="_name">TOTAL DISCOUNTED PRICE :</span>
                                            <div class="_desc _ac-formGrp">
                                            <input type="number" class="form-control"  @error('total_discounted_price') style="box-shadow: 0 0 3px  #CC0000" @enderror value="{{ $MembershipPackage->benefit }}" name="total_discounted_price" placeholder="">
                                                <span class="_verIcon  @error('total_discounted_price')_unverified @else _verified @enderror">@error('total_discounted_price') <i class="fas fa-times"></i>   @else <i class="fas fa-check"></i>@enderror</span>                                                        
                                            </div>
                                        </li>
                                        <span class="_name">Recommended :</span>
                                        <input type="checkbox"  name="recommended"> 

                                    </ul>
                                    <div class="_btn-grps">
                                        <button type="submit" class="btn _btn2 _btn-small _bg-green-2" >UPDATE</button>
                                    </div>
                                </form>
                                   
                                    <!-- Div : Begin  -->

                                    
                                </div>
                            </div>
                        </div>
                    </div>                  
                </div>
            </div>
@endsection