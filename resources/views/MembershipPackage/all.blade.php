@extends('layouts.app')
@section('content')
            <!-- Admin Body  -->
            <div class="_ad-body">
              <!-- Admin Body Header -->
              <div class="_ad-top-hdr">
                  <p class="_page-title">All Packages</p>
              </div>
              <div class="_ad-body-main">
                <div class="container">
                    <div class="_heading text-center _flex _j-spaceBetween">
                        <h2 class="_title">Premium Membership Package</h2>
                       {{--  <button class="btn _btn2 _btn-small _bg-green">Edit/Save</button> --}}
                    </div>
                    <div class="row _mem-row">
                        <!-- col : Begin  -->
                        @foreach ($MembershipPackage as $_MembershipPackage)
                        <div class="col-lg-3 col-md-6 _mem-col">
                          <div class="_memBox">
                            <div class="_edit-memBox-2">
                              {{-- <button class="_edit-btn" title="Edit"><i class="fas fa-edit"></i></button>
                              <button class="_edit-btn _bg-red" title="Delete"><i class="fas fa-trash-alt"></i></button> --}}
                              @can('deleteMembershipPackage',\App\User::class)
                              <a href="" class="_edit-btn _bg-red" onclick="deleteMember('{{ $_MembershipPackage->id }}')"><i class="fas fa-trash-alt"></i></a>
                              @endcan
                              <form action="{{ route('membership-package.destroy', $_MembershipPackage->id)}}" id="delete{{ $_MembershipPackage->id }}" method="post">
                                @csrf
                                @method('DELETE')
                              </form>  
                              @can('editMembershipPackage',\App\User::class)
                              <a href="{{ route('membership-package.edit',$_MembershipPackage->id)}}" class="_edit-btn"><i class="fas fa-edit"></i></a>
                              @endcan
                            </div> 
                                {!! $_MembershipPackage->is_recommended==1 ? "<span class='_recommended'>Recommended</span>" :"" !!}
                             
                                <div class="_memeBox-head">
                                    <p class="_mem-title">{{$_MembershipPackage->price_per_month }}/Month</p>
                                </div>
                                <div class="_memeBox-tag">
                                    <div class="_memeBox-tag-inner">
                                        <p>{{ $_MembershipPackage->validity }} month</p>
                                    </div>                                
                                </div>
                                <div class="_memeBox-body">
                                    <ul class="_mem-ul">
                                        <li>{{ $_MembershipPackage->discount_coins_price }} % Discount On Coins</li>
                                        <li>{{$_MembershipPackage->benefit==0 ? "---------":"save ".$_MembershipPackage->benefit."%"}}</li>
                                       <li><span class="_text-green-2">{{ $_MembershipPackage->extra_coin }} % Extra Coin</span></li>
                                        <li>{{-- {!! 
                                                $_MembershipPackage->original_price == $_MembershipPackage->price ?
                                                "---------" :
                                                "<del>₹ $_MembershipPackage->original_price<del> - <span class='_text-ornage-2'> ₹ $_MembershipPackage->price </span>"  !!} --}}

<del>₹ {{ $_MembershipPackage->original_price }}</del> - <span class='_text-ornage-2'> ₹ {{  $_MembershipPackage->price }} </span>
                                                </li>

              
                                        <li>Pay - ₹{{ $_MembershipPackage->original_price }}</li>
                                    </ul>
                                
                                </div>
                            </div>
                        </div>

                            
                        @endforeach



                    </div>

                    <div class="_textInfo-box">
                        <p class="_title-2">Premium Membership Benefits </p>
                        <ul class="_lists">
                            <li>No need to be active everyday to get all the benefits </li>
                            <li>Get all Starter, Basic & Advance benefits.</li>
                            <li>The member can join any live auction & win any products.</li>
                            <li>The member can join any Upcoming auction any time before it's going live.</li>
                            <li>The member can assign our "Auto Bid Manager" with time interval (5secs to lsec) to increase winning chances.</li>
                            <li>Referral earnings up to 2nd level (500coins for level 1 + 250coins for level 2).</li>
                            <li>Referral first coin purchase bonus commission up to 2nd level.</li>
                            <li>Can claim winnings as product or coins or Cash.</li>
                            <li>Referral Product Winning bonus up to 2nd Level - No need to be active yesterday to get this benefit today.</li>
                            <li>Can claim Referral Product Winning bonus as Cash every time.</li>
                            <li>Get Extra 10% discount on all coin package prices and get up to 15% extra coins.</li>
                            <li>Can purchase any amount of coins with a base rate of 1 1paisa (Rs. 0.11) per coin.</li>
                            <li>Full Refund Bonus coins with No Restriction (Get full Refund of Bid Coins, if you can't win any product auction)</li>
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