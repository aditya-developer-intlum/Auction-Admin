@extends('layouts.app')

@section('menutitle','All Transaction')
@section('title','All Transaction')
@section('content')
<div class="_ad-body">
                <!-- Admin Body Header -->
                <div class="_ad-top-hdr">
                    <p class="_page-title">Referral Winning Bonus</p>
                </div>
                <!-- Admin Body Main -->
                <div class="_ad-body-main" >
                    <div class="row">
                        <div class="col-md-3">
                            
                        </div>
                        <div class="col-md-2">
                            <div  style="background: #f65757;padding-bottom: 10px;border-radius: 10px 10px 0px 0px;text-align:center" >
                                <strong style="color: white">Claim as Product</strong>    
                            </div>
                            
                        </div>
                        <div class="col-md-2">
                             <div  style="background: #f65757;padding-bottom: 10px;border-radius: 10px 10px 0px 0px;text-align:center" >
                                <strong style="color: white">Claim as Coins</strong>    
                            </div>
                        </div>
                        <div class="col-md-2">
                             <div  style="background: #f65757;padding-bottom: 10px;border-radius: 10px 10px 0px 0px;text-align:center" >
                                <strong style="color: white">Claim as Cash</strong>    
                            </div>
                        </div>
                        <div class="col-md-2">
                            
                        </div>
                    </div>
                    <div class="row" style="padding-bottom: 20px">
                        <div class="col-md-3">
                            <strong>Winning Claim (Winner): </strong>
                        </div>
                        <div class="col-md-2">
                            
                            <input type="text" class="form-control" placeholder="100% (Product)">
                        </div>
                        <div class="col-md-2">
                            <input type="text" class="form-control" placeholder="125% value coins">
                        </div>
                        <div class="col-md-2">
                            <input type="text" class="form-control" placeholder="90% (cash)">
                        </div>
                        <div class="col-md-2">
                            
                            <button class="btn btn-success" type="submit">Update</button>
                        </div>
                    </div>
                    <div class="row" style="padding-bottom: 20px">
                        <div class="col-md-3">
                            <strong>Referral Winning Bonus (Upline-1): </strong>
                        </div>
                        <div class="col-md-2">
                            
                            <input type="text" class="form-control" placeholder="30% of value coins">
                        </div>
                        <div class="col-md-2">
                            <input type="text" class="form-control" placeholder="40% of value coins">
                        </div>
                        <div class="col-md-2">
                            <input type="text" class="form-control" placeholder="20% of value cash">
                        </div>
                        <div class="col-md-2">
                            
                            <button class="btn btn-success" type="submit">Update</button>
                        </div>
                    </div>
                    <div class="row" style="padding-bottom: 30px">
                        <div class="col-md-3">
                            <strong>Referral Winning Bonus (Upline-2): </strong>
                        </div>
                        <div class="col-md-2">
                            
                            <input type="text" class="form-control" placeholder="15% of value coins">
                        </div>
                        <div class="col-md-2">
                            <input type="text" class="form-control" placeholder="20% of value coins">
                        </div>
                        <div class="col-md-2">
                            <input type="text" class="form-control" placeholder="10% of value cash">
                        </div>
                        <div class="col-md-2">
                            
                            <button class="btn btn-success" type="submit">Update</button>
                        </div>
                    </div>
                    <div class="row" style="padding-bottom: 20px;padding-top: 20px;border-top: 2px solid black"> 
                        <div class="col-md-4">
                            <table class="table table-hover" style="background-color: white !important">
                                <tr>
                                    <th colspan="4" style="text-align: center">
                                      T.R. Winning Bonus (Cash) <br>
                                        <span style="color:purple">(All Times)</span>
                                    </th>
                                </tr>
                                <tr>
                                    <th style="text-align: center">500</th>
                                    <th style="text-align: center">700000 coins</th>
                                </tr>
                            </table>
                        </div>
                        <div class="col-md-4">
                            <table class="table table-hover" style="background-color: white !important">
                                <tr>
                                    <th colspan="4" style="text-align: center">
                                     R.Winning Bonus (Cash)(UL-1) <br>
                                        <span style="color:purple">(All Times)</span>
                                    </th>
                                </tr>
                                <tr>
                                    <th style="text-align: center">500</th>
                                    <th style="text-align: center">700000 coins</th>
                                </tr>
                            </table>
                        </div>
                        <div class="col-md-4">
                            <table class="table table-hover" style="background-color: white !important">
                                <tr>
                                    <th colspan="4" style="text-align: center">
                                       R.Winnig Bonus (Cash)(UL-2) <br>
                                        <span style="color:purple">(All Times)</span>
                                    </th>
                                </tr>
                                <tr>
                                    <th style="text-align: center">500</th>
                                    <th style="text-align: center">₹ 25,000.00<th>
                                </tr>
                            </table>
                        </div>
                    </div>
                    <!-- all time part 2 -->
                    <div class="row" style="padding-bottom: 10px;border-bottom:2px solid black"> 
                        <div class="col-md-4">
                            <table class="table table-hover" style="background-color: white !important">
                                <tr>
                                    <th colspan="4" style="text-align: center">
                                      T.R. Winning Bonus (Coins) <br>
                                        <span style="color:purple">(All Times)</span>
                                    </th>
                                </tr>
                                <tr>
                                    <th style="text-align: center">500</th>
                                    <th style="text-align: center">700000 coins</th>
                                </tr>
                            </table>
                        </div>
                        <div class="col-md-4">
                            <table class="table table-hover" style="background-color: white !important">
                                <tr>
                                    <th colspan="4" style="text-align: center">
                                     R.Winning Bonus (Coins)(UL-1) <br>
                                        <span style="color:purple">(All Times)</span>
                                    </th>
                                </tr>
                                <tr>
                                    <th style="text-align: center">500</th>
                                    <th style="text-align: center">700000 coins</th>
                                </tr>
                            </table>
                        </div>
                        <div class="col-md-4">
                            <table class="table table-hover" style="background-color: white !important">
                                <tr>
                                    <th colspan="4" style="text-align: center">
                                       R.Winnig Bonus (Coins)(UL-2) <br>
                                        <span style="color:purple">(All Times)</span>
                                    </th>
                                </tr>
                                <tr>
                                    <th style="text-align: center">500</th>
                                    <th style="text-align: center">₹ 25,000.00<th>
                                </tr>
                            </table>
                        </div>
                    </div>
                    <!-- all time end -->
    <br>
                    <!-- this month start -->
                    <div class="row" style="padding-bottom: 20px"> 
                        <div class="col-md-4">
                            <table class="table table-hover" style="background-color: white !important">
                                <tr>
                                    <th colspan="4" style="text-align: center">
                                      T.R. Winning Bonus (Cash) <br>
                                        <span style="color:darkred">(This Month)</span>
                                    </th>
                                </tr>
                                <tr>
                                    <th style="text-align: center">500</th>
                                    <th style="text-align: center">700000 coins</th>
                                </tr>
                            </table>
                        </div>
                        <div class="col-md-4">
                            <table class="table table-hover" style="background-color: white !important">
                                <tr>
                                    <th colspan="4" style="text-align: center">
                                     R.Winning Bonus (Cash)(UL-1) <br>
                                        <span style="color:darkred">(This Month)</span>
                                    </th>
                                </tr>
                                <tr>
                                    <th style="text-align: center">500</th>
                                    <th style="text-align: center">700000 coins</th>
                                </tr>
                            </table>
                        </div>
                        <div class="col-md-4">
                            <table class="table table-hover" style="background-color: white !important">
                                <tr>
                                    <th colspan="4" style="text-align: center">
                                       R.Winnig Bonus (Cash)(UL-2) <br>
                                        <span style="color:darkred">(This Month)</span>
                                    </th>
                                </tr>
                                <tr>
                                    <th style="text-align: center">500</th>
                                    <th style="text-align: center">₹ 25,000.00<th>
                                </tr>
                            </table>
                        </div>
                    </div>
                    <!-- all time part 2 -->
                    <div class="row" style="padding-bottom: 20px;border-bottom:2px solid black"> 
                        <div class="col-md-4">
                            <table class="table table-hover" style="background-color: white !important">
                                <tr>
                                    <th colspan="4" style="text-align: center">
                                      T.R. Winning Bonus (Coins) <br>
                                        <span style="color:darkred">(This Month)</span>
                                    </th>
                                </tr>
                                <tr>
                                    <th style="text-align: center">500</th>
                                    <th style="text-align: center">700000 coins</th>
                                </tr>
                            </table>
                        </div>
                        <div class="col-md-4">
                            <table class="table table-hover" style="background-color: white !important">
                                <tr>
                                    <th colspan="4" style="text-align: center">
                                     R.Winning Bonus (Coins)(UL-1) <br>
                                        <span style="color:darkred">(This Month)</span>
                                    </th>
                                </tr>
                                <tr>
                                    <th style="text-align: center">500</th>
                                    <th style="text-align: center">700000 coins</th>
                                </tr>
                            </table>
                        </div>
                        <div class="col-md-4">
                            <table class="table table-hover" style="background-color: white !important">
                                <tr>
                                    <th colspan="4" style="text-align: center">
                                       R.Winnig Bonus (Coins)(UL-2) <br>
                                        <span style="color:darkred">(This Month)</span>
                                    </th>
                                </tr>
                                <tr>
                                    <th style="text-align: center">500</th>
                                    <th style="text-align: center">₹ 25,000.00<th>
                                </tr>
                            </table>
                        </div>
                    </div>
                    <!-- this month end -->
                    <br>
                    <!-- below table start -->
                    <div class="row" style="padding-bottom: 20px"> 
                        <div class="col-md-4">
                            <table class="table table-hover" style="background-color: white !important">
                                <tr>
                                    <th colspan="4" style="text-align: center">
                                      T.R. Winning Bonus (Cash) <br>
                                        <span style="color:green">(Below Table)</span>
                                    </th>
                                </tr>
                                <tr>
                                    <th style="text-align: center">500</th>
                                    <th style="text-align: center">700000 coins</th>
                                </tr>
                            </table>
                        </div>
                        <div class="col-md-4">
                            <table class="table table-hover" style="background-color: white !important">
                                <tr>
                                    <th colspan="4" style="text-align: center">
                                     R.Winning Bonus (Cash)(UL-1) <br>
                                        <span style="color:green">(Below Table)</span>
                                    </th>
                                </tr>
                                <tr>
                                    <th style="text-align: center">500</th>
                                    <th style="text-align: center">700000 coins</th>
                                </tr>
                            </table>
                        </div>
                        <div class="col-md-4">
                            <table class="table table-hover" style="background-color: white !important">
                                <tr>
                                    <th colspan="4" style="text-align: center">
                                       R.Winnig Bonus (Cash)(UL-2) <br>
                                        <span style="color:green">(Below Table)</span>
                                    </th>
                                </tr>
                                <tr>
                                    <th style="text-align: center">500</th>
                                    <th style="text-align: center">₹ 25,000.00<th>
                                </tr>
                            </table>
                        </div>
                    </div>
                    <!-- all time part 2 -->
                    <div class="row" style="padding-bottom: 20px;border-bottom:2px solid black"> 
                        <div class="col-md-4">
                            <table class="table table-hover" style="background-color: white !important">
                                <tr>
                                    <th colspan="4" style="text-align: center">
                                      T.R. Winning Bonus (Coins) <br>
                                        <span style="color:green">(Below Table)</span>
                                    </th>
                                </tr>
                                <tr>
                                    <th style="text-align: center">500</th>
                                    <th style="text-align: center">700000 coins</th>
                                </tr>
                            </table>
                        </div>
                        <div class="col-md-4">
                            <table class="table table-hover" style="background-color: white !important">
                                <tr>
                                    <th colspan="4" style="text-align: center">
                                     R.Winning Bonus (Coins)(UL-1) <br>
                                        <span style="color:green">(Below Table)</span>
                                    </th>
                                </tr>
                                <tr>
                                    <th style="text-align: center">500</th>
                                    <th style="text-align: center">700000 coins</th>
                                </tr>
                            </table>
                        </div>
                        <div class="col-md-4">
                            <table class="table table-hover" style="background-color: white !important">
                                <tr>
                                    <th colspan="4" style="text-align: center">
                                       R.Winnig Bonus (Coins)(UL-2) <br>
                                        <span style="color:green">(Below Table)</span>
                                    </th>
                                </tr>
                                <tr>
                                    <th style="text-align: center">500</th>
                                    <th style="text-align: center">₹ 25,000.00<th>
                                </tr>
                            </table>
                        </div>
                    </div>
                    <!-- below table end -->
                    

                    
                    
                    <!-- Div : Begin -->
                    
                    </div>
<div class="container-fluid">
    <div class="col-md-12">
        
                    <div class="_aucTable-div-2">  
                        <div class="row" style="padding-bottom:20px">
                        <div class="col-md-1">
                            <form action="{{ url()->full() }}" id="paginationForm">

                                
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
                            </form>
                        </div>
                        
                        

                        
                        </div>
                        <div class="table-responsive _mB-30">
                            <table id="example" class="table table-border _table" >

                            
        <thead >

            <tr>
                <th width="1%">S.No</th>
                <th width="8%">Date</th>
                <th>Transaction ID</th>
                <th>Transaction Type</th>
                <th>Transaction For</th>
                <th>Referral Winning Bonus</th>
                <th>Member ID</th>
                <th>Member Plan</th>
                
            </tr>
        </thead>
        <tbody>
      
            <tr>
               <td>1</td>
               <td>10-12-2019</td>
               <td>123456789</td>
               <td>Referral Signup Bonus (UL1) Cash</td>
               <td>reenaditya</td>
               <td style="color:darkred">C 500</td>
               <td> reenaditya</td>
               <td>Starter</td>
            </tr>


           
        </tbody>
        
    </table>
                        </div>
                    </div>
    </div>
</div>
                    <div class="dataTables_info" id="kt_table_1_info" role="status" aria-live="polite"></div>   
                    <div id="pagination" style="text-align: right; float: right"></div>            
                    <!-- Div : Begin  -->   
    
                </div>
            </div>
        <form action="{{ url()->full() }}" id="dateFilter" >
          
                <input type="hidden" name="start" id="start">
                <input type="hidden" name="end" id="end">
            </form>

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
                  'Success!',
                  'You are Succesfully created a New member.',
                  'success'
                )
        @endif 
        @if (Session::has('delete'))
        Swal.fire(
              'Deleted!',
              'Your file has been deleted.',
              'success'
            )
       @endif    
       @if (Session::has('update'))
       Swal.fire(
             'Updated!',
             'You are Succesfully updated Memeber',
             'success'
           )
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
            $("#dateFilter").submit();
          
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
