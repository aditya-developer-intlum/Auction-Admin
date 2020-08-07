@extends('layouts.app')
@section('content')

                <!-- Admin Body  -->
                <div class="_ad-body">
                    <!-- Admin Body Header -->
                    <div class="_ad-top-hdr">
                        <p class="_page-title">Edit Package</p>
                    </div>
                    <!-- Admin Body Main -->
                    <div class="_ad-body-main">
                        <div class="row _pCoin-row">
                            @if($coinPackage->is_first==1)
                            <!-- Col : Begin  -->
                            <div class="col-lg-6 col-md-12 _pCoin-col">
                                <!-- Div : Begin -->
                                <div class="_card">
                                    <div class="_heading text-center _mB-30">
                                        <h2 class="_title">Special Trial Coin Package</h2>                            
                                    </div>
                                <form class="_packg-form" action="{{route('coins.update',$coinPackage->id)}}" method="POST">
                                    @csrf
                                    @method('PUT')
                                        <!-- Row Begin -->
                                        <input type="hidden" name="type" value="is_first" >
                                        <div class="row form-group">
                                            <div class="col-lg-4 col-md-4"><span class="_name">PACKAGE NAME :</span></div>
                                            <div class="col-lg-8 col-md-8">
                                                <div class="_packgForm-grp">
                                                <input type="text" name="special_trial_package_name" @error('special_trial_package_name') style="box-shadow: 0 0 3px  #CC0000"@enderror value="{{ $coinPackage->package_name}}" class="form-control" placeholder="">                                                                                                    
                                                <span class="_verIcon @error('special_trial_package_name')_unverified @else _verified @enderror ">@error('special_trial_package_name')<i class="fas fa-times"></i> @else <i class="fas fa-check"></i> @enderror </span>                                                        
                                            </div>
                                            </div>                                        
                                        </div>
                                        <!-- Row Begin -->
                                        <div class="row form-group">
                                            <div class="col-lg-4 col-md-4"><span class="_name">PACKAGE PRICE :</span></div>
                                            <div class="col-lg-8 col-md-8">
                                                <div class="_packgForm-grp">
                                                <input type="text" name="special_trial_package_price" @error('special_trial_package_price')style="box-shadow: 0 0 3px  #CC0000" @enderror value="{{ $coinPackage->package_original_price }}" class="form-control" placeholder="">
                                                    <span class="_frm-info">&#8377</span> 
                                                    <span class="_verIcon @error('special_trial_package_price')_unverified @else _verified @enderror ">@error('special_trial_package_price')<i class="fas fa-times"></i> @else <i class="fas fa-check"></i> @enderror </span>                                                        
                                                </div>
                                            </div>                                        
                                        </div>
                                        <!-- Row Begin -->
                                        <div class="row form-group">
                                            <div class="col-lg-4 col-md-4"><span class="_name">PRICE AFTER DISCOUNT :</span></div>
                                            <div class="col-lg-8 col-md-8">
                                                <div class="_packgForm-grp">
                                                <input type="text" name="special_trial_price_after_discount" value="{{ $coinPackage->package_price }}" @error('special_trial_price_after_discount') style="box-shadow: 0 0 3px  #CC0000" @enderror class="form-control" placeholder="">
                                                    <span class="_frm-info">&#8377</span>   
                                                    <span class="_verIcon @error('special_trial_price_after_discount')_unverified @else _verified @enderror ">@error('special_trial_price_after_discount')<i class="fas fa-times"></i> @else <i class="fas fa-check"></i> @enderror </span>                                                        
                                                                                                    
                                                </div>
                                            </div>                                        
                                        </div>
                                        <div class="row form-group">
                                            <div class="col-lg-4 col-md-4"><span class="_name">VALUE COINS :</span></div>
                                            <div class="col-lg-8 col-md-8">
                                                <div class="_packgForm-grp">
                                                <input type="text" name="special_trial_value_coins" value="{{$coinPackage->value_coin}}"  @error('special_trial_value_coins')style="box-shadow: 0 0 3px  #CC0000" @enderror class="form-control" placeholder="">
                                                    <span class="_frm-info _frm-info-right _text-green-2">COINS</span> 
                                                    <span class="_verIcon @error('special_trial_value_coins')_unverified @else _verified @enderror ">@error('special_trial_value_coins')<i class="fas fa-times"></i> @else <i class="fas fa-check"></i> @enderror </span>      

                                                </div>
                                            </div>                                        
                                        </div>
                                        <div class="text-center _mT-30">
                                            <button type="submit" class="btn _btn2 _btn-small _bg-green">Create Package</button>
                                        </div>
                                    </form>
                                </div>
                                <!-- Div : Begin  -->
                            </div>
                            @elseif($coinPackage->is_p_member=='1')
                            <!-- Col : Begin  -->
                            <div class="col-lg-6 col-md-12 _pCoin-col">
                                <!-- Div : Begin -->
                                 <div class="_card">
                                    <div class="_heading text-center _mB-30">
                                        <h2 class="_title">Premium Coin Package</h2>                            
                                    </div>
                                <form class="_packg-form" method="post" action="{{ route('coins.update',$coinPackage->id)}}">
                                    @csrf
                                    @method('PUT')
                                        <!-- Row Begin -->
                                         <input type="hidden" name="type" value="is_p_member"> 
                                        <div class="row form-group">
                                            <div class="col-lg-4 col-md-4"><span class="_name">PACK CATEGORY :</span></div>
                                            <div class="col-lg-8 col-md-8">
                                                <div class="_packgForm-grp">
                                                    <select type="text" name="premium_pack_category" @error('premium_pack_category') style="box-shadow: 0 0 3px  #CC0000" @enderror class="form-control" placeholder="">
                                                        <option value="">Select</option>
                                                        <option value="1" @if( $coinPackage->p_member_validity=="1") selected @endif >M1</option>
                                                        <option value="3" @if( $coinPackage->p_member_validity =="3") selected @endif >M3</option>
                                                        <option value="6" @if( $coinPackage->p_member_validity =="6") selected @endif>M6</option>
                                                        <option value="12"@if( $coinPackage->p_member_validity =="12") selected @endif>M12</option>                                                        --}}
                                                    </select>   
                                                    <span class="_verIcon @error('premium_pack_category')_unverified @else _verified @enderror" >@error('premium_pack_category'))<i class="fas fa-times"></i>@else<i class="fas fa-check"></i> @enderror</span> 
                                                                                                                                                    
                                                </div>
                                                
                                            </div>                                        
                                        </div>
                                        <!-- Row Begin -->
                                        <div class="row form-group">
                                            <div class="col-lg-4 col-md-4"><span class="_name">PACKAGE NAME :</span></div>
                                            <div class="col-lg-8 col-md-8">
                                                <div class="_packgForm-grp">
                                                <input type="text" name="premium_package_name" value="{{$coinPackage->package_name}}" @error('premium_package_name')style="box-shadow: 0 0 3px  #CC0000" @enderror class="form-control" placeholder="">
                                                    <span class="_frm-info">&#8377</span>   
                                                    <span class="_verIcon @error('premium_package_name')_unverified @else _verified @enderror" >@error('premium_package_name')<i class="fas fa-times"></i>@else<i class="fas fa-check"></i> @enderror</span> 

                                                </div>
                                            </div>                                        
                                        </div>
                                            <!-- Row Begin -->
                                        <div class="row form-group">
                                            <div class="col-lg-4 col-md-4"><span class="_name">PACKAGE PRICE :</span></div>
                                            <div class="col-lg-8 col-md-8">
                                                <div class="_packgForm-grp">
                                                <input type="text" name="premium_package_price" value="{{$coinPackage->package_original_price}}" @error('premium_package_price')style="box-shadow: 0 0 3px  #CC0000" @enderror class="form-control" placeholder="">
                                                    <span class="_frm-info">&#8377</span>   
                                                    <span class="_verIcon @error('premium_package_price')_unverified @else _verified @enderror" >@error('premium_package_price')<i class="fas fa-times"></i>@else<i class="fas fa-check"></i> @enderror</span> 

                                                </div>
                                            </div>                                        
                                        </div>
                                        <!-- Row Begin -->
                                        <div class="row form-group">
                                            <div class="col-lg-4 col-md-4"><span class="_name">PRICE AFTER DISCOUNT :</span></div>
                                            <div class="col-lg-8 col-md-8">
                                                <div class="_packgForm-grp">
                                                <input type="text" name="premium_price_after_discount" value="{{$coinPackage->package_price}}" @error('premium_price_after_discount')style="box-shadow: 0 0 3px  #CC0000"@enderror class="form-control" placeholder="">
                                                    <span class="_frm-info">&#8377</span>   
                                                    <span class="_verIcon @error('premium_price_after_discount')_unverified @else _verified @enderror" >@error('premium_price_after_discount'))<i class="fas fa-times"></i>@else<i class="fas fa-check"></i> @enderror</span> 

                                                </div>
                                            </div>                                        
                                        </div>
                                        <!-- Row Begin -->
                                        <div class="row form-group">
                                            <div class="col-lg-4 col-md-4"><span class="_name">P MEMBER PAY :</span></div>
                                            <div class="col-lg-8 col-md-8">
                                                <div class="_packgForm-grp">
                                                <input type="text" name="premium_p_member_pay" value="{{ $coinPackage->p_member_pay }}" @error('premium_p_member_pay') style="box-shadow: 0 0 3px  #CC0000" @enderror class="form-control" placeholder="">
                                                    <span class="_frm-info">&#8377</span> 
                                                    <span class="_verIcon @error('premium_p_member_pay')_unverified @else _verified @enderror" >@error('premium_p_member_pay'))<i class="fas fa-times"></i>@else<i class="fas fa-check"></i> @enderror</span> 

                                                </div>
                                            </div>                                        
                                        </div>
                                        <!-- Row Begin -->
                                        <div class="row form-group">
                                            <div class="col-lg-4 col-md-4"><span class="_name">VALUE COINS :</span></div>
                                            <div class="col-lg-8 col-md-8">
                                                <div class="_packgForm-grp">
                                                <input type="text" name="premium_value_coins" value="{{ $coinPackage->value_coin }}" @error('premium_value_coins')style="box-shadow: 0 0 3px  #CC0000" @enderror class="form-control" placeholder="">
                                                    <span class="_frm-info _frm-info-right _text-green-2">COINS</span>
                                                    <span class="_verIcon @error('premium_value_coins')_unverified @else _verified @enderror" >@error('premium_value_coins'))<i class="fas fa-times"></i>@else<i class="fas fa-check"></i> @enderror</span> 

                                                </div>
                                            </div>                                        
                                        </div>
                                        <!-- Row Begin -->
                                        <div class="row form-group">
                                            <div class="col-lg-4 col-md-4"><span class="_name">EXTRA COINS :</span></div>
                                            <div class="col-lg-8 col-md-8">
                                                <div class="_packgForm-grp">
                                                <input type="text" name="premium_extra_coins" value="{{ $coinPackage->extra_coin }}" @error('premium_extra_coins') style="box-shadow: 0 0 3px  #CC0000"@enderror class="form-control" placeholder="">
                                                    <span class="_frm-info _frm-info-right _text-green-2">COINS</span>
                                                    <span class="_verIcon @error('premium_extra_coins')_unverified @else _verified @enderror" >@error('premium_extra_coins'))<i class="fas fa-times"></i>@else<i class="fas fa-check"></i> @enderror</span> 

                                                </div>
                                            </div>                                        
                                        </div>
                                        <!-- Row Begin -->
                                        <div class="row form-group">
                                            <div class="col-lg-4 col-md-4"><span class="_name">TOTAL COINS :</span></div>
                                            <div class="col-lg-8 col-md-8">
                                                <div class="_packgForm-grp">
                                                <input type="text" name="premium_total_coins" value="{{ $coinPackage->total_coins}}" @error('premium_total_coins')style="box-shadow: 0 0 3px  #CC0000"  @enderror class="form-control" placeholder="">
                                                    <span class="_frm-info _frm-info-right _text-green-2">COINS</span>
                                                    <span class="_verIcon @error('premium_total_coins')_unverified @else _verified @enderror" >@error('premium_total_coins'))<i class="fas fa-times"></i>@else<i class="fas fa-check"></i> @enderror</span> 

                                                </div>
                                            </div>                                        
                                        </div>
                                        <!-- Row Begin -->
                                        <div class="row form-group">
                                            <div class="col-lg-4 col-md-4"><span class="_name">P MEMBER EXTRA COINS :</span></div>
                                            <div class="col-lg-8 col-md-8">
                                                <div class="_packgForm-grp">
                                                <input type="text" name="premium_p_member_exta_coins" value="{{  $coinPackage->p_member_get_extra }}" @error('premium_p_member_exta_coins')style="box-shadow: 0 0 3px  #CC0000"  @enderror class="form-control" placeholder="">
                                                    <span class="_frm-info _frm-info-right _text-green-2">COINS</span>      
                                                    <span class="_verIcon @error('premium_p_member_exta_coins')_unverified @else _verified @enderror" >@error('premium_p_member_exta_coins'))<i class="fas fa-times"></i>@else<i class="fas fa-check"></i> @enderror</span> 

                                                </div>
                                            </div>                                        
                                        </div>
                                        <!-- Row Begin -->
                                        <div class="row form-group">
                                            <div class="col-lg-4 col-md-4"><span class="_name">YOU CAN SAVE :</span></div>
                                            <div class="col-lg-8 col-md-8">
                                                <div class="_packgForm-grp">
                                                <input type="text" name="premium_you_can_save" value="{{$coinPackage->you_can_save}}" @error('premium_you_can_save') style="box-shadow: 0 0 3px  #CC0000" @enderror class="form-control" placeholder="">
                                                    <span class="_frm-info">&#8377</span>    
                                                    <span class="_verIcon @error('premium_you_can_save')_unverified @else _verified @enderror" >@error('premium_you_can_save'))<i class="fas fa-times"></i>@else<i class="fas fa-check"></i> @enderror</span> 

                                                </div>
                                            </div>                                        
                                        </div>
                                        <!-- Row Begin -->
                                        {{-- <div class="row form-group">
                                            <div class="col-lg-4 col-md-4"><span class="_name">Pay Now :</span></div>
                                            <div class="col-lg-8 col-md-8">
                                                <div class="_packgForm-grp">
                                                    <input type="text" name="premium_pay_now" class="form-control" placeholder="">
                                                    <span class="_frm-info">&#8377</span>                                                                                                         
                                                </div>
                                            </div>                                        
                                        </div> --}}
                                        <div class="text-center _mT-30">
                                            <button type="submit" class="btn _btn2 _btn-small _bg-green">Create Package</button>
                                        </div>
                                    </form>
                                </div> 
                                <!-- Div : Begin  -->
                            </div>
                            @else

                           <!-- Col : Begin  -->
                           <div class="col-lg-6 col-md-12 _pCoin-col">
                            <!-- Div : Begin -->
                            <div class="_card">
                                <div class="_heading text-center _mB-30">
                                    <h2 class="_title">Normal Coin Package</h2>                            
                                </div>
                            <form class="_packg-form" method="post" action="{{ route('coins.update',$coinPackage->id)}}">
                                <input type="hidden" name="normal" value="n">
                                    @csrf
                                    @method('PUT')
                                    <!-- Row Begin -->
                                    <div class="row form-group">
                                        <div class="col-lg-4 col-md-4"><span class="_name">PACKAGE NAME :</span></div>
                                        <div class="col-lg-8 col-md-8">
                                            <div class="_packgForm-grp">
                                            <input type="text" name="package_name" @error('package_name') style="box-shadow: 0 0 3px  #CC0000"@enderror value="{{ $coinPackage->package_name}}" class="form-control" placeholder="">                                                                                                    
                                            <span class="_verIcon @error('package_name')_unverified @else _verified @enderror ">@error('package_name')<i class="fas fa-times"></i>@else <i class="fas fa-check"></i> @enderror </span>                                                        
                                        </div>
                                        </div>                                        
                                    </div>
                                    <!-- Row Begin -->
                                    <div class="row form-group">
                                        <div class="col-lg-4 col-md-4"><span class="_name">PACKAGE PRICE :</span></div>
                                        <div class="col-lg-8 col-md-8">
                                            <div class="_packgForm-grp">
                                            <input type="text" name="package_price" @error('package_price') style="box-shadow: 0 0 3px  #CC0000"@enderror value="{{ $coinPackage->package_original_price}}" class="form-control" placeholder="">
                                                <span class="_frm-info">&#8377</span>  
                                                <span class="_verIcon @error('package_price')_unverified @else _verified @enderror">@error('package_price')<i class="fas fa-times"></i>@else<i class="fas fa-check"></i> @enderror</span>                                                                                                  
                                            </div>
                                        </div>                                        
                                    </div>
                                    <!-- Row Begin -->
                                    <div class="row form-group">
                                        <div class="col-lg-4 col-md-4"><span class="_name">PRICE AFTER DISCOUNT :</span></div>
                                        <div class="col-lg-8 col-md-8">
                                            <div class="_packgForm-grp">
                                            <input type="text" name="price_after_discount" @error('price_after_discount')style="box-shadow: 0 0 3px  #CC0000" @enderror value="{{ $coinPackage->package_price}}" class="form-control" placeholder="">
                                                <span class="_frm-info">&#8377</span> 
                                                <span class="_verIcon @error('price_after_discount')_unverified @else _verified @enderror">@error('price_after_discount')<i class="fas fa-times"></i>@else<i class="fas fa-check"></i> @enderror</span>                                                                                                  
                                                                                                  
                                            </div>
                                        </div>                                        
                                    </div>
                                    <!-- Row Begin -->
                                    <div class="row form-group">
                                        <div class="col-lg-4 col-md-4"><span class="_name">P MEMBER PAY :</span></div>
                                        <div class="col-lg-8 col-md-8">
                                            <div class="_packgForm-grp">
                                            <input type="text" name="p_member_pay" @error('p_member_pay') style="box-shadow: 0 0 3px  #CC0000" @enderror value="{{ $coinPackage->p_member_pay}}" class="form-control" placeholder="">
                                                <span class="_frm-info">&#8377</span>  
                                                <span class="_verIcon @error('p_member_pay')_unverified @else _verified @enderror">@error('p_member_pay')<i class="fas fa-times"></i>@else<i class="fas fa-check"></i> @enderror</span>                                                                                                  

                                            </div>
                                        </div>                                        
                                    </div>
                                    <!-- Row Begin -->
                                    <div class="row form-group">
                                        <div class="col-lg-4 col-md-4"><span class="_name">VALUE COINS :</span></div>
                                        <div class="col-lg-8 col-md-8">
                                            <div class="_packgForm-grp">
                                            <input type="text" name="value_coins" @error('value_coins') style="box-shadow: 0 0 3px  #CC0000" @enderror value="{{ $coinPackage->value_coin}}" class="form-control" placeholder="">
                                                <span class="_frm-info _frm-info-right _text-green-2">COINS</span> 
                                                <span class="_verIcon @error('value_coins')_unverified @else _verified @enderror">@error('value_coins')<i class="fas fa-times"></i>@else<i class="fas fa-check"></i> @enderror</span>                                                                                                  

                                            </div>
                                        </div>                                        
                                    </div>
                                    <!-- Row Begin -->
                                    <div class="row form-group">
                                        <div class="col-lg-4 col-md-4"><span class="_name">EXTRA COINS :</span></div>
                                        <div class="col-lg-8 col-md-8">
                                            <div class="_packgForm-grp">
                                            <input type="text" name="extra_coins" @error('extra_coins') style="box-shadow: 0 0 3px  #CC0000"@enderror value="{{ $coinPackage->extra_coin}}" class="form-control" placeholder="">
                                                <span class="_frm-info _frm-info-right _text-green-2">COINS</span>       
                                                <span class="_verIcon @error('extra_coins')_unverified @else _verified @enderror">@error('extra_coins')<i class="fas fa-times"></i>@else<i class="fas fa-check"></i> @enderror</span>                                                                                                  

                                            </div>
                                        </div>                                        
                                    </div>
                                    <!-- Row Begin -->
                                    <div class="row form-group">
                                        <div class="col-lg-4 col-md-4"><span class="_name">TOTAL COINS :</span></div>
                                        <div class="col-lg-8 col-md-8">
                                            <div class="_packgForm-grp">
                                            <input type="text" name="total_coins" @error('total_coins')style="box-shadow: 0 0 3px  #CC0000" @enderror value="{{ $coinPackage->total_coins}}" class="form-control" placeholder="">
                                                <span class="_frm-info _frm-info-right _text-green-2">COINS</span>     
                                                <span class="_verIcon @error('total_coins')_unverified @else _verified @enderror">@error('total_coins')<i class="fas fa-times"></i>@else<i class="fas fa-check"></i> @enderror</span>                                                                                                  

                                            </div>
                                        </div>                                        
                                    </div>
                                    <!-- Row Begin -->
                                    <div class="row form-group">
                                        <div class="col-lg-4 col-md-4"><span class="_name">P MEMBER EXTRA COINS :</span></div>
                                        <div class="col-lg-8 col-md-8">
                                            <div class="_packgForm-grp">
                                            <input type="text" name="p_member_exta_coins" @error('p_member_exta_coins') style="box-shadow: 0 0 3px  #CC0000" @enderror value="{{ $coinPackage->p_member_get_extra}}" class="form-control" placeholder="">
                                                <span class="_frm-info _frm-info-right _text-green-2">COINS</span>   
                                                <span class="_verIcon @error('p_member_exta_coins')_unverified @else _verified @enderror">@error('p_member_exta_coins')<i class="fas fa-times"></i>@else<i class="fas fa-check"></i> @enderror</span>                                                                                                  

                                            </div>
                                        </div>                                        
                                    </div>
                                    <!-- Row Begin -->
                                    <div class="row form-group">
                                        <div class="col-lg-4 col-md-4"><span class="_name">YOU CAN SAVE :</span></div>
                                        <div class="col-lg-8 col-md-8">
                                            <div class="_packgForm-grp">
                                            <input type="text" name="you_can_save" @error('you_can_save') style="box-shadow: 0 0 3px  #CC0000" @enderror value="{{ $coinPackage->you_can_save}}" class="form-control" placeholder="">
                                                <span class="_frm-info">&#8377</span>     
                                                <span class="_verIcon @error('you_can_save')_unverified @else _verified @enderror">@error('you_can_save')<i class="fas fa-times"></i>@else<i class="fas fa-check"></i> @enderror</span>                                                                                                  

                                            </div>
                                        </div>                                        
                                    </div>
                                    <!-- Row Begin -->
                                    {{-- <div class="row form-group">
                                        <div class="col-lg-4 col-md-4"><span class="_name">Pay Now :</span></div>
                                        <div class="col-lg-8 col-md-8">
                                            <div class="_packgForm-grp">
                                                <input type="text" name="pay_now" class="form-control" placeholder="">
                                                <span class="_frm-info">&#8377</span>                                                                                                         
                                            </div>
                                        </div>                                        
                                    </div> --}}
                                    <div class="text-center _mT-30">
                                        <button type="submit" class="btn _btn2 _btn-small _bg-green">Create Package</button>
                                    </div>
                                </form>
                            </div>
                            <!-- Div : Begin  -->
                        </div>


                    </div>       

                            @endif
                               
                    </div>
                </div>


                @push('script')
                <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
                @if (Session::has('Success'))
                Swal.fire(
                      'Deleted!',
                      'Your file has been deleted.',
                      'success'
                    )
                 @endif   
                @endpush
@endsection