@extends('layouts.app')
@section('content')
                <!-- Admin Body  -->
                <div class="_ad-body">
                    <!-- Admin Body Header -->
                    <div class="_ad-top-hdr">
                        <p class="_page-title">Coin Packages - Modify</p>
                    </div>
                    <!-- Admin Body Main -->
                    <div class="_ad-body-main">
                        <div class="container">
                            <div class="_heading text-center">
                                <h2 class="_title">Special Trial Coin Package</h2>                            
                            </div> 
                            <div class="_priceDiv-cont">
                                <ul class="_price-ul">
                                    <!-- Price list  -->
                                    @foreach ($specialTrialCoinPackage as $_specialTrialCoinPackage)                                   
                                    <li class="_ptrice-li">
                                        <div class="_priceDiv">
                                            <div class="_edit-memBox-2">
                                             @can('editCoinPackage',\App\User::class)   
                                             <button class="_edit-btn" onclick="location.href='{{route('coins.edit',$_specialTrialCoinPackage->id)}}'" title="Edit"><i class="fas fa-edit"></i></button>
                                             @endcan
                                             @can('deleteCoinPackage',\App\User::class)   
                                             <a href="" class="_edit-btn _bg-red" onclick="deleteMember('{{ $_specialTrialCoinPackage->id }}')"><i class="fas fa-trash-alt"></i></a>
                                             @endcan
                                            <form action="{{route('coins.destroy',$_specialTrialCoinPackage->id)}}" id="delete{{ $_specialTrialCoinPackage->id }}" method="POST">
                                                @csrf
                                                @method('DELETE')
                                            </form>
                                        </div>
                                            <div class="_priceDiv-head">{{$_specialTrialCoinPackage->package_name }}</div>
                                            <div class="_priceDiv-body">
                                                @if($_specialTrialCoinPackage->package_price== $_specialTrialCoinPackage->package_original_price)
                                                <p class="_price-price _text-darkGreen"><span class="_r-symbol">₹</span> {{ $_specialTrialCoinPackage->package_original_price }}</p> 
                                                @else
                                               <p class="_price-price">  <span class="_lineTrough"><span class="_r-symbol">₹</span>
                                                 {{ $_specialTrialCoinPackage->package_original_price }}</span> 
                                                 {{ ($_specialTrialCoinPackage->package_original_price - $_specialTrialCoinPackage->package_price)/$_specialTrialCoinPackage->package_original_price*100}}% Off  
                                                 <strong class="  _text-darkGreen"><span class="_r-symbol">₹</span> {{ $_specialTrialCoinPackage->package_price }}</strong></p>                                                                               
                                                @endif


                                                <p class="_price-price" style="background: #FFF;"><strong>{{ $_specialTrialCoinPackage->value_coin }} Coins</strong></p>
                                                <a href="#" class="btn _btn _bg-blue _btn-block">Buy This Pack</a><br>                                            
                                            </div>
                                        </div>
                                    </li> 
                                    @endforeach
                                </ul>
                            </div>
    
                            <!-- Normal Coin Package  -->
                            <div class="_heading text-center">
                                <h2 class="_title">Normal Coin Package</h2>                            
                            </div>                                                           
                            <div class="_priceDiv-cont">
                                <ul class="_price-ul">
                                    @foreach ($normalCoinPackage as $_normalCoinPackage)
                                    <!-- Price list  -->
                                    <li class="_ptrice-li">
                                        <div class="_priceDiv  _bg-white">
                                            <div class="_edit-memBox-2">
                                            @can('editCoinPackage',\App\User::class)   
                                            <button class="_edit-btn" title="Edit" onclick="location.href='{{ route('coins.edit',$_normalCoinPackage->id) }}'" ><i class="fas fa-edit"></i></button>
                                            @endcan
                                            @can('deleteCoinPackage',\App\User::class)   
                                            <a href="" class="_edit-btn _bg-red" onclick="deleteMember('{{ $_normalCoinPackage->id }}')"><i class="fas fa-trash-alt"></i></a>
                                            @endcan
                                            <form action="{{route('coins.destroy',$_normalCoinPackage->id)}}" id="delete{{ $_normalCoinPackage->id }}" method="POST">
                                                @csrf
                                                @method('DELETE')
                                                {{-- <button type="submit" onclick="deleteMember('{{ $_specialTrialCoinPackage->id }}')" class="_edit-btn _bg-red" title="Delete"><i class="fas fa-trash-alt"></i></button> --}}

                                            </form>
                                        </div>
                                            <div class="_priceDiv-head">{{ $_normalCoinPackage->package_name }}</div>
                                            <div class="_priceDiv-body">
     
                                                <ul>
                                                    @if($_normalCoinPackage->package_price== $_normalCoinPackage->package_original_price)
                                                    <p class="_price-price _text-darkGreen"><span class="_r-symbol">₹</span> {{ $_normalCoinPackage->package_original_price }}</p> 
                                                    @else
                                                   <p class="_price-price">  <span class="_lineTrough"><span class="_r-symbol">₹</span> {{ $_normalCoinPackage->package_original_price }}</span> {{ ($_normalCoinPackage->package_original_price - $_normalCoinPackage->package_price)/$_normalCoinPackage->package_original_price*100}}% Off  <strong class="  _text-darkGreen"><span class="_r-symbol">₹</span> {{ $_normalCoinPackage->package_price }}</strong></p>                                                                               
                                                    @endif
                                                   
                                                    
                                                    {{-- <li class="_price-price"><span class="_r-symbol">₹</span> 150.00</li> --}}

                                                    <li>P. Member Pay <span class="_text-darkGreen"><span class="_r-symbol">₹</span> {{ $_normalCoinPackage->p_member_pay }}</span></li>
                                                    <li>Value {{ $_normalCoinPackage->value_coin }} Coin</li>
                                                    <li>Extra {{ $_normalCoinPackage->extra_coin }} Coin</li>   
                                                    <li class="_price-total">Total :{{ $_normalCoinPackage->total_coins }} Coin</li>                              
                                                    <li>P.Members Get Upto Extra <strong>{{ $_normalCoinPackage->p_member_get_extra }} Coins </strong> </li>       
                                                </ul>                                    
                                                <p><strong>You can Save <span class="_r-symbol">₹</span> {{ $_normalCoinPackage->you_can_save }} </strong></p>
                                               
                                            </div>
                                        </div>
                                    </li> 
                                    @endforeach                                    
                                </ul>
                            </div>

                            <!-- Premium Coin Package 1st Month  -->
                            <div class="_heading text-center">
                            <h2 class="_title">Premium Coin Package (1 Month)</h2>                            
                            </div>                                                           
                            <div class="_priceDiv-cont">
                                <ul class="_price-ul">
                                    @foreach ($premiumCoinPackage_1 as $_premiumCoinPackage)
                                    <!-- Price list  -->
                                    <li class="_ptrice-li">
                                        <div class="_priceDiv  _bg-white">
                                            <div class="_edit-memBox-2">
                                                @can('editCoinPackage',\App\User::class)   
                                                <button class="_edit-btn" title="Edit" onclick="location.href='{{ route('coins.edit',$_premiumCoinPackage->id) }}'" ><i class="fas fa-edit"></i></button>
                                                @endcan
                                                @can('deleteCoinPackage',\App\User::class)   
                                                <a href="" class="_edit-btn _bg-red" onclick="deleteMember('{{ $_premiumCoinPackage->id }}')"><i class="fas fa-trash-alt"></i></a>
                                                @endcan
                                                <form action="{{route('coins.destroy',$_premiumCoinPackage->id)}}" id="delete{{ $_premiumCoinPackage->id }}" method="POST">
                                                @csrf
                                                @method('DELETE')
                                                {{-- <button type="submit" onclick="deleteMember('{{ $_specialTrialCoinPackage->id }}')" class="_edit-btn _bg-red" title="Delete"><i class="fas fa-trash-alt"></i></button> --}}

                                            </form>
                                        </div>
                                            <div class="_priceDiv-head">{{ $_premiumCoinPackage->package_name }}</div>
                                            <div class="_priceDiv-body">
        
                                                <ul>
                                                    @if($_premiumCoinPackage->package_price== $_premiumCoinPackage->package_original_price)
                                                    <p class="_price-price _text-darkGreen"><span class="_r-symbol">₹</span> {{ $_premiumCoinPackage->package_original_price }}</p> 
                                                    @else
                                                   <p class="_price-price">  <span class="_lineTrough"><span class="_r-symbol">₹</span>
                                                     {{ $_premiumCoinPackage->package_original_price }}</span> 
                                                     {{ ($_premiumCoinPackage->package_original_price - $_premiumCoinPackage->package_price)/$_premiumCoinPackage->package_original_price*100}}% Off  
                                                     <strong class="  _text-darkGreen"><span class="_r-symbol">₹</span> {{ $_premiumCoinPackage->package_price }}</strong></p>                                                                               
                                                    @endif

                                                    <li>P. Member Pay <span class="_text-darkGreen"><span class="_r-symbol">₹</span> {{ $_premiumCoinPackage->p_member_pay }}</span></li>
                                                    <li>Value {{ $_premiumCoinPackage->value_coin }} Coins</li>
                                                    <li>Extra {{ $_premiumCoinPackage->extra_coin }} Coins</li>   
                                                    <li>P.M Extra {{ $_premiumCoinPackage->p_member_get_extra }} Coins of ₹ {{ $_premiumCoinPackage->package_price - $_premiumCoinPackage->p_member_pay }}  </li>       
                                                    <li class="_price-total">Total :{{ $_premiumCoinPackage->total_coins }} Coins </li>                              
                                                </ul>                                    
                                                <p><strong>You Saved <span class="_r-symbol">₹</span> {{ $_premiumCoinPackage->you_can_save }} </strong></p>
                                               
                                            </div>
                                        </div>
                                    </li> 
                                    @endforeach                                    
                                </ul>
                            </div>

                            <!-- Premium Coin Package 3 Month  -->
                            <div class="_heading text-center">
                                <h2 class="_title">Premium Coin Package (3 Months)</h2>                            
                                </div>                                                           
                                <div class="_priceDiv-cont">
                                    <ul class="_price-ul">
                                        @foreach ($premiumCoinPackage_3 as $_premiumCoinPackage)
                                        <!-- Price list  -->
                                        <li class="_ptrice-li">
                                            <div class="_priceDiv  _bg-white">
                                                <div class="_edit-memBox-2">
                                                   @can('editCoinPackage',\App\User::class)                                                   
                                                    <button class="_edit-btn" title="Edit" onclick="location.href='{{ route('coins.edit',$_premiumCoinPackage->id) }}'" ><i class="fas fa-edit"></i></button>
                                                   @endcan
                                             @can('deleteCoinPackage',\App\User::class)   
                                             <a href="" class="_edit-btn _bg-red" onclick="deleteMember('{{ $_premiumCoinPackage->id }}')"><i class="fas fa-trash-alt"></i></a>
                                             @endcan   
                                             <form action="{{route('coins.destroy',$_premiumCoinPackage->id)}}" id="delete{{ $_premiumCoinPackage->id }}" method="POST">
                                                    @csrf
                                                    @method('DELETE')
                                                    {{-- <button type="submit" onclick="deleteMember('{{ $_specialTrialCoinPackage->id }}')" class="_edit-btn _bg-red" title="Delete"><i class="fas fa-trash-alt"></i></button> --}}
    
                                                </form>
                                            </div>
                                                <div class="_priceDiv-head">{{ $_premiumCoinPackage->package_name }}</div>
                                                <div class="_priceDiv-body">
            
                                                    <ul>
                                                    
                                                        @if($_premiumCoinPackage->package_price== $_premiumCoinPackage->package_original_price)
                                                        <p class="_price-price _text-darkGreen"><span class="_r-symbol">₹</span> {{ $_premiumCoinPackage->package_original_price }}</p> 
                                                        @else
                                                        <p class="_price-price">  <span class="_lineTrough"><span class="_r-symbol">₹</span>
                                                            {{ $_premiumCoinPackage->package_original_price }}</span> 
                                                            {{ ($_premiumCoinPackage->package_original_price - $_premiumCoinPackage->package_price)/$_premiumCoinPackage->package_original_price*100}}% Off  
                                                            <strong class="  _text-darkGreen"><span class="_r-symbol">₹</span> {{ $_premiumCoinPackage->package_price }}</strong></p>                                                                               
                                                        @endif
    
                                                        <li>P. Member Pay <span class="_text-darkGreen"><span class="_r-symbol">₹</span> {{ $_premiumCoinPackage->p_member_pay }}</span></li>
                                                        <li>Value {{ $_premiumCoinPackage->value_coin }} Coins</li>
                                                        <li>Extra {{ $_premiumCoinPackage->extra_coin }} Coins</li>   
                                                        <li>P.M Extra {{ $_premiumCoinPackage->p_member_get_extra }} Coins of ₹ {{ $_premiumCoinPackage->package_price - $_premiumCoinPackage->p_member_pay }}  </li>       
                                                        <li class="_price-total">Total :{{ $_premiumCoinPackage->total_coins }} Coins </li>                              
                                                    </ul>                                    
                                                    <p><strong>You Saved <span class="_r-symbol">₹</span> {{ $_premiumCoinPackage->you_can_save }} </strong></p>
                                                    
                                                </div>
                                            </div>
                                        </li> 
                                        @endforeach                                    
                                    </ul>
                                </div>

                                <!-- Premium Coin Package 6 Month  -->
                        <div class="_heading text-center">
                            <h2 class="_title">Premium Coin Package (6 Months)</h2>                            
                            </div>                                                           
                            <div class="_priceDiv-cont">
                                <ul class="_price-ul">
                                    @foreach ($premiumCoinPackage_6 as $_premiumCoinPackage)
                                    <!-- Price list  -->
                                    <li class="_ptrice-li">
                                        <div class="_priceDiv  _bg-white">
                                            <div class="_edit-memBox-2">
                                                @can('editCoinPackage',\App\User::class)   
                                                <button class="_edit-btn" title="Edit" onclick="location.href='{{ route('coins.edit',$_premiumCoinPackage->id) }}'" ><i class="fas fa-edit"></i></button>
                                                @endcan
                                             @can('deleteCoinPackage',\App\User::class)   
                                             <a href="" class="_edit-btn _bg-red" onclick="deleteMember('{{ $_premiumCoinPackage->id }}')"><i class="fas fa-trash-alt"></i></a>
                                             @endcan
                                             <form action="{{route('coins.destroy',$_premiumCoinPackage->id)}}" id="delete{{ $_premiumCoinPackage->id }}" method="POST">
                                                @csrf
                                                @method('DELETE')
                                                {{-- <button type="submit" onclick="deleteMember('{{ $_specialTrialCoinPackage->id }}')" class="_edit-btn _bg-red" title="Delete"><i class="fas fa-trash-alt"></i></button> --}}

                                            </form>
                                        </div>
                                            <div class="_priceDiv-head">{{ $_premiumCoinPackage->package_name }}</div>
                                            <div class="_priceDiv-body">
        
                                                <ul>
                                                
                                                    @if($_premiumCoinPackage->package_price== $_premiumCoinPackage->package_original_price)
                                                    <p class="_price-price _text-darkGreen"><span class="_r-symbol">₹</span> {{ $_premiumCoinPackage->package_original_price }}</p> 
                                                    @else
                                                    <p class="_price-price">  <span class="_lineTrough"><span class="_r-symbol">₹</span>
                                                        {{ $_premiumCoinPackage->package_original_price }}</span> 
                                                        {{ ($_premiumCoinPackage->package_original_price - $_premiumCoinPackage->package_price)/$_premiumCoinPackage->package_original_price*100}}% Off  
                                                        <strong class="  _text-darkGreen"><span class="_r-symbol">₹</span> {{ $_premiumCoinPackage->package_price }}</strong></p>                                                                               
                                                    @endif

                                                    <li>P. Member Pay <span class="_text-darkGreen"><span class="_r-symbol">₹</span> {{ $_premiumCoinPackage->p_member_pay }}</span></li>
                                                    <li>Value {{ $_premiumCoinPackage->value_coin }} Coins</li>
                                                    <li>Extra {{ $_premiumCoinPackage->extra_coin }} Coins</li>   
                                                    <li>P.M Extra {{ $_premiumCoinPackage->p_member_get_extra }} Coins of ₹ {{ $_premiumCoinPackage->package_price - $_premiumCoinPackage->p_member_pay }}  </li>       
                                                    <li class="_price-total">Total :{{ $_premiumCoinPackage->total_coins }} Coins </li>                              
                                                </ul>                                    
                                                <p><strong>You Saved <span class="_r-symbol">₹</span> {{ $_premiumCoinPackage->you_can_save }} </strong></p>
                                               
                                            </div>
                                        </div>
                                    </li> 
                                    @endforeach                                    
                                </ul>
                            </div>


                           
    
                       </div>
                    </div>                          

                </div>


                @push('script')
  <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
    <script>
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