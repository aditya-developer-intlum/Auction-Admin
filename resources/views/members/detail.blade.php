@extends("layouts.app")
@section('content')
<div class="_ad-body">
                <!-- Admin Body Header -->
                <div class="_ad-top-hdr">
                    <p class="_page-title">Total Member's Tree - Level Wise </p>
                </div>
                <!-- Admin Body Main -->
                <div class="_ad-body-main">
                    <div class="container">
                        {{-- <div class="_heading text-center">
                            <h2 class="_title">New Members - Signups </h2>                            
                        </div> --}}

                        <!-- Count -->
                        {{-- <div class="row _uD-row _uD-row-2">    
                            <!-- Col : Begin  -->                       
                            <div class="col-md-2 _ud-col">
                                <div class="_ud-col-inner">
                                    <div class="_uD-card _bD-indigo">  
                                        <p class="_title-2">New Members</p>                                    
                                        <p class="_title-3">(All Time)</p>
                                        <p class="_title _text-indigo">108</p>
                                    </div>                                   
                                </div>
                            </div>
                             <!-- Col : Begin  -->                       
                             <div class="col-md-2 _ud-col">
                                <div class="_ud-col-inner">
                                    <div class="_uD-card _bD-indigo">  
                                        <p class="_title-2">New Members</p>                                    
                                        <p class="_title-3">(This Month)</p>
                                        <p class="_title _text-green-2">55</p>
                                    </div>                                   
                                </div>
                            </div>
                             <!-- Col : Begin  -->                       
                             <div class="col-md-2 _ud-col">
                                <div class="_ud-col-inner">
                                    <div class="_uD-card _bD-indigo">  
                                        <p class="_title-2">New Members</p>                                    
                                        <p class="_title-3">(This Week)</p>
                                        <p class="_title _text-ornage-2">21</p>
                                    </div>                                   
                                </div>
                            </div>
                             <!-- Col : Begin  -->                       
                             <div class="col-md-2 _ud-col">
                                <div class="_ud-col-inner">
                                    <div class="_uD-card _bD-indigo">  
                                        <p class="_title-2">New Members</p>                                    
                                        <p class="_title-3">(Yesterday) </p>
                                        <p class="_title _text-orange">21</p>
                                    </div>                                   
                                </div>
                            </div>
                             <!-- Col : Begin  -->                       
                             <div class="col-md-2 _ud-col">
                                <div class="_ud-col-inner">
                                    <div class="_uD-card _bD-indigo">  
                                        <p class="_title-2">New Members</p>                                    
                                        <p class="_title-3">(Today)</p>
                                        <p class="_title _text-indigo">11</p>
                                    </div>                                   
                                </div>
                            </div>
                        </div> --}}

                        <!-- Table  -->
                        <!-- <div class="table-responsive _mB-30">
                            <table class="table table-border _table">
                                <thead>
                                    <tr>
                                        <th>New Members</th>     
                                        <th>All Times</th>
                                        <th>This Month</th>
                                        <th>This Week</th>
                                        <th> Yesterday</th>
                                        <th>Today</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td><strong class="_text-orange">Total Members</strong></td>
                                        <td><strong class="_text-orange">160</strong></td>
                                        <td><strong class="_text-orange">55</strong></td>
                                        <td><strong class="_text-orange">21</strong></td>
                                        <td><strong class="_text-orange">21</strong></td>
                                        <td><strong class="_text-orange">11</strong></td>
                                    </tr>
                                    <tr>
                                        <td>Starter Members</td>
                                        <td>20</td>
                                        <td>20</td>
                                        <td>15</td>
                                        <td>15</td>
                                        <td>8</td>
                                    </tr>
                                    <tr>
                                        <td>Basic Members</td>
                                        <td>20</td>
                                        <td>20</td>
                                        <td>15</td>
                                        <td>15</td>
                                        <td>8</td>
                                    </tr>
                                    <tr>
                                        <td>Advance Members</td>
                                        <td>20</td>
                                        <td>20</td>
                                        <td>15</td>
                                        <td>15</td>
                                        <td>8</td>
                                    </tr>
                                    <tr>
                                        <td>Premium (PM 1) Members</td>
                                        <td>20</td>
                                        <td>20</td>
                                        <td>15</td>
                                        <td>15</td>
                                        <td>8</td>
                                    </tr>
                                    <tr>
                                        <td>Premium (PM 3) Members</td>
                                        <td>20</td>
                                        <td>20</td>
                                        <td>15</td>
                                        <td>15</td>
                                        <td>8</td>
                                    </tr>
                                    <tr>
                                        <td>Premium (PM 6) Members</td>
                                        <td>20</td>
                                        <td>20</td>
                                        <td>15</td>
                                        <td>15</td>
                                        <td>8</td>
                                    </tr>
                                    <tr>
                                        <td>Premium (PM 12) Members</td>
                                        <td>20</td>
                                        <td>20</td>
                                        <td>15</td>
                                        <td>15</td>
                                        <td>8</td>
                                    </tr>
                                    <tr>
                                        <td>Premium Plus Members</td>
                                        <td>20</td>
                                        <td>20</td>
                                        <td>15</td>
                                        <td>15</td>
                                        <td>8</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div> -->


                        <!-- Table  -->
                        <!-- <div class="_table-outer">
                            <div class="_table-outer-header row">
                                <div class="col-lg-3 col-md-12">
                                    <form action="" class="_form">
                                        <input type="search" class="form-control" placeholder="Search by user id">
                                    </form>
                                </div>
                                <div class="col-lg-9 col-md-12 text-right">
                                    <button class="btn _btn2 _btn-small">Export as CSV</button>
                                    <div class="_btn-grps">
                                        <button class="btn _btn2 _btn-small-2">Today </button>
                                        <button class="btn _btn2 _btn-small-2">Yesterday</button>
                                        <button class="btn _btn2 _btn-small-2">This Month</button>
                                        <button class="btn _btn2 _btn-small-2">1 Last Month</button>
                                        <button class="btn _btn2 _btn-small-2">Custom Range </button>
                                    </div>
                                </div>
                            </div>
                            Table
                            <div class="table-responsive _tableScroll _mB-30">
                                <table class="table table-border _table _largeTable">
                                    <thead>
                                        <tr>
                                            <th class="_arrow-th">Sr.No</th>
                                            <th>Date</th>
                                            <th>Level Box</th>
                                            <th>Member ID</th>
                                            <th>Member Name</th>
                                            <th>Member Status</th>
                                            <th>Contact No</th>
                                            <th>Email Address</th>
                                            <th>City</th>
                                            <th>Country</th>
                                            <th>Coin Balance</th>
                                            <th class="_arrow-th">Downline - 1 <br>(T. Members)</th>
                                            <th>Downline - 2 <br>(T. Members)</th>
                                            <th>UpLine - 1 <br>(Member ID) </th>
                                            <th>Member Plan</th>
                                            <th>Join date</th>
                                            <th>UpLine - 2 <br>(Member ID) </th>
                                            <th>Member Plan</th>
                                            <th>Join date</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>01</td>
                                            <td>10-10-2019</td>
                                            <td>1</td>
                                            <td>Rm2345</td>
                                            <td>Rajiv</td>
                                            <td>Premium</td>
                                            <td>2346878111</td>
                                            <td>abc@gamil.com</td>
                                            <td>Kolkata</td>
                                            <td>India</td>
                                            <td>100</td>
                                            <td>10</td>
                                            <td>8</td>
                                            <td>samar123</td>
                                            <td>Basic</td>
                                            <td>12-10-2019</td>
                                            <td>samar123</td>
                                            <td>Basic</td>
                                            <td>12-10-2019</td>
                                        </tr>
                                        <tr>
                                            <td>01</td>
                                            <td>10-10-2019</td>
                                            <td>1</td>
                                            <td>Rm2345</td>
                                            <td>Rajiv</td>
                                            <td>Premium</td>
                                            <td>2346878111</td>
                                            <td>abc@gamil.com</td>
                                            <td>Kolkata</td>
                                            <td>India</td>
                                            <td>100</td>
                                            <td>10</td>
                                            <td>8</td>
                                            <td>samar123</td>
                                            <td>Basic</td>
                                            <td>12-10-2019</td>
                                            <td>samar123</td>
                                            <td>Basic</td>
                                            <td>12-10-2019</td>
                                        </tr>
                                        <tr>
                                            <td>01</td>
                                            <td>10-10-2019</td>
                                            <td>1</td>
                                            <td>Rm2345</td>
                                            <td>Rajiv</td>
                                            <td>Premium</td>
                                            <td>2346878111</td>
                                            <td>abc@gamil.com</td>
                                            <td>Kolkata</td>
                                            <td>India</td>
                                            <td>100</td>
                                            <td>10</td>
                                            <td>8</td>
                                            <td>samar123</td>
                                            <td>Basic</td>
                                            <td>12-10-2019</td>
                                            <td>samar123</td>
                                            <td>Basic</td>
                                            <td>12-10-2019</td>
                                        </tr>
                                        <tr>
                                            <td>01</td>
                                            <td>10-10-2019</td>
                                            <td>1</td>
                                            <td>Rm2345</td>
                                            <td>Rajiv</td>
                                            <td>Premium</td>
                                            <td>2346878111</td>
                                            <td>abc@gamil.com</td>
                                            <td>Kolkata</td>
                                            <td>India</td>
                                            <td>100</td>
                                            <td>10</td>
                                            <td>8</td>
                                            <td>samar123</td>
                                            <td>Basic</td>
                                            <td>12-10-2019</td>
                                            <td>samar123</td>
                                            <td>Basic</td>
                                            <td>12-10-2019</td>
                                        </tr>
                                        <tr>
                                            <td>01</td>
                                            <td>10-10-2019</td>
                                            <td>1</td>
                                            <td>Rm2345</td>
                                            <td>Rajiv</td>
                                            <td>Premium</td>
                                            <td>2346878111</td>
                                            <td>abc@gamil.com</td>
                                            <td>Kolkata</td>
                                            <td>India</td>
                                            <td>100</td>
                                            <td>10</td>
                                            <td>8</td>
                                            <td>samar123</td>
                                            <td>Basic</td>
                                            <td>12-10-2019</td>
                                            <td>samar123</td>
                                            <td>Basic</td>
                                            <td>12-10-2019</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div> -->
                        <!-- Team Downline  -->
                        <div class="_faqContainer  _p-45">
                            <div class="_layer-1 row">
                                <div class="col-md-4 offset-md-4 _dl-col">
                                @if ($member->uplink2)
                            
                                    <div class="_dwnCard _downArrow mx-auto" id="uplevel2">
                                        <span class="_icon"><img src="{{ asset("storage/{$member->uplinkTwo->avatar}") }}" alt=""></span>
                                        <p class="_title-3 _text-white">UpLine 2 - {{ $member->uplinkTwo->user_name ?? '' }}</p>
                                        <p class="_text-white">Joined : {{ $member->uplinkTwo->created_at->format('d/m/Y') }}</p>
                                    </div>
                                @endif
                                @if ($member->uplink1)
                                    <div class="_dwnCard _downArrow mx-auto" id="uplevel1">
                                        <span class="_icon"><img src="images/card-icon-1.png" alt=""></span>
                                        <p class="_title-3 _text-white">UpLine 1 - {{ $member->uplinkOne->user_name ?? '' }}</p>
                                        <p class="_text-white">Joined : {{ $member->uplinkOne->created_at->format('d/m/Y') }}</p>
                                    </div>
                                @endif
                                    <div class="_dwnCard _downArrow mx-auto" id="you">
                                        <span class="_icon"><img src="images/card-icon-1.png" alt=""></span>
                                        <p class="_title-3 _text-white">You</p>
                                        <p class="_title-3 _text-white">{{ $member->user_name ?? '' }}</p>
                                         <p class="_text-white">Downline 1 : {{ $downline1->count() ?? 0 }}</p>
                                          <p class="_text-white">Downline 2 : {{ $downline2->count() ?? 0 }}</p>
                                        <p class="_text-white">Joined : {{ $member->created_at->format('d/m/Y') }}</p>
                                    </div>
                                </div>

                                <div class="col-md-4 ml-auto _dl-col" id="cardDetail">
                                    
                                </div> 
                            </div>
                            <div class="_layer-2">                       
                                <div class="_heading text-center _mB-30">
                                    <h2 class="_title _text-indigo _mB-0">Downline 1</h2>
                                    <p class="_title-4">Total member : {{ $downline1->count()??0 }}</p>
                                </div>
                                <!-- Dowline List Box Begin  -->
                                <div class="_box-outer _downArrow">
                                    <div class="row _dwnB-row">
                                        @foreach ($downline1 as $_downline1)
                                        <!-- col: Begin -->
                                        <div class="col-md-3 _dwnB-col" onclick="slice('{{ $_downline1->id }}')">
                                            <div class="_dwnCard-outer">
                                                <div class="_dwnCard">
                                                    <span class="_icon"><img src="images/card-icon-1.png" alt=""></span>
                                                    <p class="_title-4 _text-yellow"> {{ $_downline1->user_name ?? '' }}</p>
                                                    <p class="_text-white">Joined : {{ $_downline1->created_at->format('d/m/Y') }}</p>
                                                    <p class="_text-white">Downline 1 : </p>
                                                </div>

                                                <div class="_dwnCard mx-auto text-left _dwnCard-popup">
                                                    <figure class="_profileImg">
                                                        <img src="{{ asset("storage/{$_downline1->avatar}") }}" alt="">
                                                    </figure>
                                                    <p class="_title-4 _text-white">User Name : {{ $_downline1->user_name ?? '' }}</p>
                                                    <p class="_title-4 _text-white">Full Name : {{ $_downline1->name ?? '' }}</p>
                                                    <p class="_title-4 _text-white">City : {{ $_downline1->city ?? '' }}</p>
                                                    <p class="_title-4 _text-white">Joining Date : {{ $_downline1->created_at->format('d/m/Y') }}</p>
                                                    <p class="_title-4 _text-white">Introducer ID : {{ $member->user_name }}</p>
                                                </div>
                                            </div>                                            
                                        </div>
                                        <!-- col : End -->
                                        @endforeach
                                     
                                    </div>
                                </div>                                              
                            </div>
                            
                            <div class="_layer-3">                       
                                <div class="_heading text-center _mB-30">
                                    <h2 class="_title _text-indigo _mB-0">Downline 2</h2>
                                    <p class="_title-4" >Total member : <d id="totalDownline2">{{ $downline2->count()??0 }}</d>    </p>
                                </div>
                                <!-- Dowline List Box Begin  -->
                                <div class="_box-outer">
                                    <div class="row _dwnB-row" id="downline2">
                                    @foreach ($downline1 as $down)
                                           
                                        @foreach ($down->downlink as $_downline2)

                                         <!-- col: Begin -->
                                        <div class="col-md-3 _dwnB-col" >
                                            <div class="_dwnCard-outer">
                                                <div class="_dwnCard" >
                                                    <span class="_icon"><img src="images/card-icon-1.png" alt=""></span>
                                                    <p class="_title-4 _text-yellow"> {{ $_downline2->user_name ?? '' }}</p>
                                                    <p class="_text-white">Joined : 
                                                        {{ $_downline2->created_at->format('d/m/Y') ?? '' }}</p>
                                                  
                                                </div>
                                                <div class="_dwnCard mx-auto text-left _dwnCard-popup">
                                                    <figure class="_profileImg">
                                                        <img src="{{ asset("storage/{$_downline2->avatar}") }}" alt="">
                                                    </figure>
                                                    <p class="_title-4 _text-white">User Name : {{ $_downline2->user_name ?? '' }}</p>
                                                    <p class="_title-4 _text-white">Full Name : {{ $_downline2->name ?? '' }}</p>
                                                    <p class="_title-4 _text-white">City : {{ $_downline2->city ?? '' }}</p>
                                                    <p class="_title-4 _text-white">Joining Date : {{ $_downline2->created_at->format('d/m/Y') }}</p>
                                                    <p class="_title-4 _text-white">Introducer ID : {{ $down->user_name }}</p>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- col : End -->
                                    @endforeach
                                @endforeach
                                    </div>
                                        </div>                                              
                                    </div>
                                </div>                         
                            </div>              
                        </div>
            </div>
    
        
@push('script')
<script>
@if ($member->uplink1)
    $("#uplevel1").click(function(){
        $("._dwnCard").removeClass('_rightArrow');
        $(this).addClass('_rightArrow');

        $("#cardDetail").html(`<div class="_dwnCard mx-auto text-left">
                                        <figure class="_profileImg">
                                            <img src="{{ asset("storage/{$member->uplinkOne->avatar}") }}" alt="">
                                        </figure>
                                        <p class="_title-4 _text-white">User Name : {{ $member->uplinkOne->user_name ?? '' }}</p>
                                        <p class="_title-4 _text-white">Full Name : {{ $member->uplinkOne->name ?? '' }}</p>
                                        <p class="_title-4 _text-white">City : {{ $member->uplinkOne->city ?? '' }}</p>
                                        <p class="_title-4 _text-white">Joining Date : {{ $member->uplinkOne->created_at->format('d/m/Y') }}</p>
                                        <p class="_title-4 _text-white">Introducer ID : {{ $member->uplinkOne->uplinkOne->user_name ?? 'N/A' }}</p>
                                    </div>`);  
    });
@endif
@if ($member->uplink2)
    $("#uplevel2").click(function(){
        $("._dwnCard").removeClass('_rightArrow');
        $(this).addClass('_rightArrow');
        $("#cardDetail").html(`<div class="_dwnCard mx-auto text-left">
                                        <figure class="_profileImg">
                                            <img src="{{ asset("storage/{$member->uplinkTwo->avatar}") }}" alt="">
                                        </figure>
                                        <p class="_title-4 _text-white">User Name : {{ $member->uplinkTwo->user_name ?? '' }}</p>
                                        <p class="_title-4 _text-white">Full Name : {{ $member->uplinkTwo->name ?? '' }}</p>
                                        <p class="_title-4 _text-white">City : {{ $member->uplinkTwo->city ?? '' }}</p>
                                        <p class="_title-4 _text-white">Joining Date : {{ $member->uplinkTwo->created_at->format('d/m/Y') }}</p>
                                        <p class="_title-4 _text-white">Introducer ID : {{ $member->uplinkTwo->uplinkOne->user_name ?? 'N/A' }}</p>
                                    </div>`);  
    });
@endif
    $("#you").click(function(){
        $("._dwnCard").removeClass('_rightArrow');
        $(this).addClass('_rightArrow');
         $("#cardDetail").html(`<div class="_dwnCard mx-auto text-left" >
                                        <figure class="_profileImg">
                                            <img src="{{ asset("storage/{$member->avatar}") }}" alt="">
                                        </figure>
                                        <p class="_title-4 _text-white">User Name : {{ $member->user_name ?? '' }}</p>
                                        <p class="_title-4 _text-white">Full Name : {{ $member->name ?? '' }}</p>
                                        <p class="_title-4 _text-white">City : {{ $member->city ?? '' }}</p>
                                        <p class="_title-4 _text-white">Joining Date : {{ $member->created_at->format('d/m/Y') }}</p>
                                        <p class="_title-4 _text-white">Introducer ID : {{ $member->uplinkOne->user_name ?? '' }}</p>
                                    </div>`);  
    })
    


   function slice(id){
        $.get(`{{ url("admin/members/segmented-detail/") }}/${id}`, function(data) {
            $("#downline2").empty();
                $("#totalDownline2").html(  data.downlink.length);
            data.downlink.forEach(function(val){
            $("#downline2").append(`
                <div class="col-md-3 _dwnB-col" >
                                            <div class="_dwnCard-outer">
                                                <div class="_dwnCard" >
                                                    <span class="_icon"><img src="images/card-icon-1.png" alt=""></span>
                                                    <p class="_title-4 _text-yellow">UpLine ${ val.user_name }</p>
                                                    <p class="_text-white">Joined : 
                                                        ${ moment(val.created_at).format('DD/MM/YYYY')}</p>
                                                  
                                                </div>
                                                <div class="_dwnCard mx-auto text-left _dwnCard-popup">
                                                    <figure class="_profileImg">
                                                        <img src="{{ asset("storage/") }}/${val.avatar}" alt="">
                                                    </figure>
                                                    <p class="_title-4 _text-white">User Name : ${ val.user_name}</p>
                                                    <p class="_title-4 _text-white">Full Name : ${ val.name }</p>
                                                    <p class="_title-4 _text-white">City : ${ val.city }</p>
                                                    <p class="_title-4 _text-white">Joining Date : ${ moment(val.created_at).format('DD/MM/YYYY') }</p>
                                                    <p class="_title-4 _text-white">Introducer ID : ${ data.user_name }</p>
                                                </div>
                                            </div>
                                        </div>`);
            });

        });
   }       
</script>
@endpush
@endsection