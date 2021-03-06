@extends('layouts.app')
@section('style')
<style>

   
._adminCard {
            background: #fff;
            padding:10px 10px;
            border-radius: 5px;
            margin-bottom: 25px;
        }
        ._adminCard-hdr {
            position: relative;
            padding-left: 45px;
            margin-bottom: 15px;
        }
        ._adminCard-hdr img {
            position: absolute;
            left: 0;
            max-width: 30px;
        }
       
        ._adminCard-hdr ._title-3{
            margin-bottom: 3px;
        }
        ._ac-ul{
            display: flex;
        }
        ._ac-ul li {
            display: inline-block;
            border: 1px solid #ddd;
            width: 48%;
            margin: 0 5px;
            font-size: 18px;
            color: #818181;
        }
        div#trans_wrapper {
          position: relative;
      }
        div#trans_wrapper  .row:nth-child(1) {
          position: absolute;
          width: 100%;
          top: -46px;
          align-items: center;
        }

        div#trans_wrapper  .row:nth-child(1) > div{
          -webkit-box-flex: 0;
          -ms-flex: 0 0 15%;
          flex: 0 0 15%;
          max-width: 15%;
        }

        .trans_wrapper table th,   .trans_wrapper table th{
          padding: 10px;
        }
        div#trans_wrapper table#trans th{
    background: #cecfd2;
    padding-left: 15px;
}

div#trans_wrapper table#trans td {
    border-left: 1px solid #f2f4f9;
    border-right: 1px solid #f2f4f9;
    padding: 1px 15px;
}

div#trans_wrapper table#trans tr:nth-child(even) td{
    background: #dddddd54;
}
._filterLeft {
    position: relative;
    z-index: 1;
}

div#trans_wrapper .row:last-child {
    margin-top: 30px;
}

.table_border tr th{
  color: #fff;
}

.table_border tr th, .table_border tr td{
  padding: 7px 10px;
    font-size: 15px;
}

.table_border tr:nth-child(even) td{
  background: #eeeeee8a;
}




</style>
@endsection
@section('content')
@can('coinDeductView',\App\Transaction::class)
<div class="_ad-body">
    <!-- Admin Body Header-->
    <div class="_ad-top-hdr">
        <p class="_page-title">Deduct Coins</p>
    </div>
    <div class="_ad-body-main">
        <div class="col-md-6">
        <h4>Coin Deduction from User </h4>         
        <div class="row">
            <div class="col-md-5">
             <div class="form-group">
            @can('coinDeductSendCoin',\App\Transaction::class)
             <input type="number" class="line_radius" name="coins" value="{{Session::get('coins')}}"  id="coins"  placeholder="Coin Amount"  >
            @endcan
            </div>
            </div>
        </div>
        @can('coinDeductSerachUser',\App\Transaction::class)
        <form action="{{route('deductCoin.index')}}" role="search">
         <div class="row">    
             <div class="col-md-5">
                <div class="form-group">
                    <select name="membership" id="" class="line_radius" >
                    <option value="">Choose Categories</option>
                    @foreach ($membership as $_membership)
                    <option value="{{ $_membership->id }}" {{ $_membership->id ==request()->membership ? 'selected':"" }} >  {{ $_membership->name  }}</option>
                    @endforeach
                    </select>
               </div>
             </div>
            <div class="col-md-0.5">
                Or
            </div>
             <div class="col-md-5">
                <div class="form-group">
                <input type="text" class="line_radius" name="username" value="{{ request()->username }}" placeholder="Enter Username">
                </div> 
             </div>
             
             <div class="col-md-1">
                 <div class="form-group">
                    <button type="submit" class="btn btn-success line_radius">Search</button>
                 </div>
             </div>
        </div>
         </form>
         @endcan
        </div>
         <!--Start User Table--->
         <div class="col-md-6 coin_search_user" >
         <form action="{{route('deductCoin.deduct')}}" method="GET" id="">
          <input type="hidden" name="deduct_coins" id="deduct_coins" value=>
          @can('coinDeductSerachUser',\App\Transaction::class)             
              <table id="user_table" class="table table-bordered wb">
              <thead>
                  <tr>
                     @can('coinDeductSendCoin',\App\Transaction::class)  
                      <th></th>
                      @endcan
                      <th>Members ID</th>
                      <th>Email Address</th>
                      <th>Coin Balance</th>
                      <th>Membership Plan</th>
                  </tr>
              </thead>
              <tbody>
                  @if($users)
                  @foreach($users as $user)
                  <tr>
                  @can('coinDeductSendCoin',\App\Transaction::class)  
                  <td> <input type="checkbox"  name="{{$user->id}}" value="{{$user->id}}" ></td>
                  @endcan
                  <td>{{$user->user_name}}</td>
                  <td>{{$user->email}}</td>
                  <td>{{$user->wallet->coins??0 }}</td>      
                  <td>{{$user->membership->name}}</td>
                  </tr>
                  @endforeach
                  @endif
              </tbody>
              
            </table>
            @endcan
            @can('coinDeductSendCoin',\App\Transaction::class)
           <div style="margin-top:25px"> 
               <button type="submit" id="penalty" class="btn btn-success">Penalty</button> 
          </div>
             @endcan
           </form>
         
          </div>
          <!--End User Table--->
          <div class="col-md-6" style="margin-top:50px">
            <div class="row">
              <!-- Col : Begin  -->
              <div class="col-md-6">
               <div class="_adminCard">
                   <div class="_adminCard-hdr">
                       <img src="images/card-icon-1.png" alt="">
                       <p class="_title-3">Coin Deduction</p>
                       <span>All Time</span>
                   </div>
                   <div class="_adminCard-body">
                       <ul class="_ac-ul">
                           <li>{{ $allTimeTotalUsers }}</li>
                           <li>{{ $allTimeTotalCoins }} Coins</li>
                       </ul>
                   </div>
               </div>
             </div>
                 <!-- Col : End  -->
                   <!-- Col : Begin  -->
              <div class="col-md-6">
               <div class="_adminCard">
                   <div class="_adminCard-hdr">
                       <img src="images/card-icon-1.png" alt="">
                       <p class="_title-3">Coin Deduction</p>
                       <span>This Month</span>
                   </div>
                   <div class="_adminCard-body">
                       <ul class="_ac-ul">
                           <li>{{ $thisMonthTotalUsers ??'No Data'}}</li>
                           <li>{{ $thisMonthTotalCoins ??'No Coins'}} Coins</li>
                       </ul>
                   </div>
               </div>
             </div>
                 <!-- Col : End  -->
               </div>
          </div>
          <div>
            <h4 style=" text-decoration: underline"><strong >Recently Penalty Coins</strong></h4>
          </div>
           <!-- row : Begin  -->
        <div class="row">
          <div class="col-md-6" style="" >
            <div class="row">
              <div class="col-md-3">
                <form action="{{route('deductCoin.index')}}" id="paginationForm"> 
                  @foreach ($_GET as $key => $value)
                  <input type="hidden" name="{{ $key }}" value="{{ $value }}">
                   @endforeach                       
                  <select name="perPage" id="paginationSize" class="form-control">
                    <option value="10" {{ request()->perPage==10?"selected":"" }}>10</option>
                    <option value="25" {{ request()->perPage==25?"selected":"" }}>25 </option>
                    <option value="50" {{ request()->perPage==50?"selected":"" }}>50</option>
                    <option value="100" {{ request()->perPage==100?"selected":"" }}>100</option>
                </select>
            </form>
              </div>
              <div class="col-md-6">
                <form action="{{route('deductCoin.index')}}" id="transactionForm">
                  @foreach ($_GET as $key => $value)
                  <input type="hidden" name="{{ $key }}" value="{{ $value }}">
                   @endforeach 
                   @can('coinDeductTransactionSearch',\App\Transaction::class)  
                  <input type="text" name="transactionSearch" value="" id="transactionSearch" placeholder="Seacrh By Transaction ID/User ID">
                   @endcan
                </form>
              </div>
            </div>



           
          </div>
          <div class="col-md-6">
              <div class="row"> 
                <div class="col-md-6">
                  @can('coinDeductTransactionFilter',\App\Transaction::class)
                    <div id="reportrange" style="background: #fff; cursor: pointer; padding: 5px 10px; border: 1px solid #ccc; width: 100%">
                        <i class="fa fa-calendar"></i>&nbsp;
                        <span></span> <i class="fa fa-caret-down"></i>
                    </div>
                  @endcan
                </div>
                
                <div class="col-md-3">
                  @can('coinDeductTransactionFilter',\App\Transaction::class)
                    <button id="date_get" class="btn _btn2 _btn-small">Date Filter</button>
                 @endcan
                  </div>

                <div class="col-md-3">
                  @can('coinDeductTransactionExport',\App\Transaction::class)
                    <form action="{{ route('deductCoin.csv_converter')}}" method="GET">
                      <input type="hidden" name="startDate" value="{{ request()->start }}" id="startDate">
                      <input type="hidden" name="endDate" value="{{ request()->end }}" id="endDate">
                          <button type="submit" class="btn _btn2 _btn-small">Export as CSV</button>
                      </form>
                  @endcan    
                </div>
            </div>
          </div>
        </div>
        <!-- Transaction Table  : Start -->
        <div  style="margin-top:17px">
          <table id="trans" class="table_border" style="width:100%;background: white !important;background-color:white;">
            <thead style="background:#17a2b8">
              <tr>
                <th>Sr No.</th>
                <th style="padding-left:50px">Date</th>
                <th>Transaction ID</th>
                <th style="padding-left:50px">Signup Date</th>
                <th>Member ID</th>
                <th style="padding-left:50px">Member Name</th>
                <th>Email Address</th>
                <th>Mobile Number</th>
                <th>Member Plan</th>
                <th>Total Coin Spent</th>
                <th>Before Coin Balance</th>
                <th>Coins Deduction</th>
                <th>Aftert Coin Balance</th>
              </tr>
            </thead>
            <tbody >
               
              @foreach ($transactions as $key=>$_transactions )                              
              <tr >
                <td>{{++$key}}</td>
                <td>{{$_transactions->created_at->format("d-m-Y")  }}</td>
                <td>{{ $_transactions->id }}</td>
                <td>{{ $_transactions->user->created_at->format('d-m-Y') }}</td>
                <td>{{$_transactions->user->id}}</td>
                <td>{{$_transactions->user->name}}</td>
                <td>{{$_transactions->user->email}}</td>
                <td>{{$_transactions->user->mobile_number}}</td>
                <td>{{$_transactions->user->membership->name}}</td>
                <td>{{ $_transactions->user->spent_coins }}</td>
                <td>{{ $_transactions->user->wallet->coins + $_transactions->coins }}</td>
                <td>{{ $_transactions->coins}}</td>
                <td>{{$_transactions->user->wallet->coins ?? 0}}</td>
              </tr>
              @endforeach 
            </tbody>
            
          </table>
          <div style="float:right">
            {{ $transactions->appends(['perPage'=>request()->perPage,'transactionSearch' => request()->transactionSearch])->links() }}
          </div>

        </div>
        <!-- Transaction Table  : end -->  
                <!-- Date Filter Form  : Start -->         
      <form action="{{route('deductCoin.index')}}" id="dateFilter" >
          <input type="hidden" name="start" id="start">
             <input type="hidden" name="end" id="end">
          </form>
                  <!-- Date Filter Form  : end -->  




            
        </div>
       </div>
       @endcan

    </div>
</div>
@push('script')
<script>
$(document).ready(function(){
    $("#coins").keyup(function(){
        $("#deduct_coins").val($('#coins').val());
    });
    $('#user_table').DataTable();
    // $('#trans').DataTable();
});
</script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
<script>
@if(Session::has('error'))
Swal.fire({
    icon: 'error',
    title: 'Oops...',
    text: '{{ Session::get('error') }}',
    // footer: '<a href>Why do I have this issue?</a>'
  })
@endif
@if(Session::has('success'))

let timerInterval
var u_count = '{{Session::get('total_deduct_users')}}';
Swal.fire({
  title: '{{Session::get('success')}}',
  html: 'I will close in <b></b> Seconds.',
  timer: u_count * 1000,
  timerProgressBar: true,
  onBeforeOpen: () => {
    Swal.showLoading()
    // let count=1;
    timerInterval = setInterval(() => {
      const content = Swal.getContent()
      if (content) {
        const b = content.querySelector('b')
        if (b) {
          b.textContent = u_count+ " user sec:-" + Swal.getTimerLeft()/1000
        }
        u_count--;
      }
    }, 1000)
  },
  onClose: () => {
    clearInterval(timerInterval)
  }
}).then((result) => {
  /* Read more about handling dismissals below */
  if (result.dismiss === Swal.DismissReason.timer) {
    console.log('I was closed by the timer')
  }
})

@endif
</script>
<script type="text/javascript">
  var urlParams = new URLSearchParams(window.location.search);
  
      $(function() {
   
          var start = moment().subtract(29, 'days');
      //    alert(start)
          var end = moment();
          
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
            
          }   
          $('#reportrange').daterangepicker({
              startDate: start,
              endDate: end,
              ranges: {
                 'Today': [moment(), moment()],
                 'Yesterday': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
                 'Last 7 Days': [moment().subtract(6, 'days'), moment()],
                 'Last 30 Days': [moment().subtract(29, 'days'), moment()],
                 'This Month': [moment().startOf('month'), moment().endOf('month')],
                 'Last Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
              }
          }, cb);
         
          cb(start, end);
  
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
<script>
  $(document).ready(function(){
    $('#paginationSize').change(function(){
      $('#paginationForm').submit();
    });
    $('#transactionSearch').blur(function(){
      $('#transactionForm').submit();
    });
  });
</script>
  

    


    
@endpush

 
@endsection