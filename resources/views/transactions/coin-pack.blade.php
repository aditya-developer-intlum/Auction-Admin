@extends('layouts.app')

@section('menutitle','All Transaction')
@section('title','All Transaction')
@section('content')
<div class="_ad-body">
                <!-- Admin Body Header -->
                <div class="_ad-top-hdr">
                    <p class="_page-title">Coin Sold</p>
                </div>
                <!-- Admin Body Main -->
                <div class="_ad-body-main" >
                    <div class="row">
                        <div class="col-md-2">
                            <table class="table table-hover" style="background-color: white !important">
                                <tr>
                                    <th colspan="4" style="text-align: center">
                                        S.T Coin Packs <br>
                                        <span style="color:purple">(All Times)</span>
                                    </th>
                                </tr>
                                <tr>
                                    <th style="text-align: center">{{ $data->starterAllTime->sum('coins') }}</th>
                                    <th style="text-align: center">₹ {{ number_format($data->starterAllTime->sum('real_amount'),2)  }}</th>
                                </tr>
                            </table>
                        </div>
                        <div class="col-md-2">
                            <table class="table table-hover" style="background-color: white !important">
                                <tr>
                                    <th colspan="4" style="text-align: center">
                                        N. Coin Packs <br>
                                        <span style="color:purple">(All Times)</span>
                                    </th>
                                </tr>
                                <tr>
                                    <th style="text-align: center">{{ $data->normalAllTime->sum('coins') }}</th>
                                    <th style="text-align: center">₹ {{ number_format($data->normalAllTime->sum('real_amount'),2)  }}</th>
                                </tr>
                            </table>
                        </div>
                        <div class="col-md-2">
                            <table class="table table-hover" style="background-color: white !important">
                                <tr>
                                    <th colspan="4" style="text-align: center">
                                        P.M 1 Coin Packs <br>
                                        <span style="color:purple">(All Times)</span>
                                    </th>
                                </tr>
                                <tr>
                                    <th style="text-align: center">{{ $data->pm1AllTime->sum('coins') }}</th>
                                    <th style="text-align: center">₹ {{ number_format($data->pm1AllTime->sum('real_amount'),2)  }}</th>
                                </tr>
                            </table>
                        </div>
                        <div class="col-md-2">
                            <table class="table table-hover" style="background-color: white !important">
                                <tr>
                                    <th colspan="4" style="text-align: center">
                                        P.M 3 Coin Packs <br>
                                        <span style="color:purple">(All Times)</span>
                                    </th>
                                </tr>
                                <tr>
                                    <th style="text-align: center">{{ $data->pm3AllTime->sum('coins') }}</th>
                                    <th style="text-align: center">₹ {{ number_format($data->pm3AllTime->sum('real_amount'),2)  }}</th>
                                </tr>
                            </table>
                        </div>
                        <div class="col-md-2">
                            <table class="table table-hover" style="background-color: white !important">
                                <tr>
                                    <th colspan="4" style="text-align: center">
                                        P.M 6 Coin Packs <br>
                                        <span style="color:purple">(All Times)</span>
                                    </th>
                                </tr>
                                <tr>
                                    <th style="text-align: center">{{ $data->pm6AllTime->sum('coins') }}</th>
                                    <th style="text-align: center">₹ {{ number_format($data->pm6AllTime->sum('real_amount'),2)  }}</th>
                                </tr>
                            </table>
                        </div>
                        <div class="col-md-2">
                            <table class="table table-hover" style="background-color: white !important">
                                <tr>
                                    <th colspan="4" style="text-align: center">
                                        P.M 12 Coin Packs <br>
                                        <span style="color:purple">(All Times)</span>
                                    </th>
                                </tr>
                                <tr>
                                    <th style="text-align: center">{{ $data->pm12AllTime->sum('coins') }}</th>
                                    <th style="text-align: center">₹ {{ number_format($data->pm12AllTime->sum('real_amount'),2)  }}</th>
                                </tr>
                            </table>
                        </div>
                    </div>
                    
                    
                    <br>
                  <div class="row">
                        <div class="col-md-2">
                            <table class="table table-hover" style="background-color: white !important">
                                <tr>
                                    <th colspan="4" style="text-align: center">
                                        S.T Coin Packs <br>
                                        <span style="color:darkred">(This Month)</span>
                                    </th>
                                </tr>
                                <tr>
                                    <th style="text-align: center">{{ $data->starterThisMonth->sum('coins') }}</th>
                                    <th style="text-align: center">₹ {{ number_format($data->starterThisMonth->sum('real_amount'),2)  }}
                                    </th>
                                </tr>
                            </table>
                        </div>
                        <div class="col-md-2">
                            <table class="table table-hover" style="background-color: white !important">
                                <tr>
                                    <th colspan="4" style="text-align: center">
                                        N. Coin Packs <br>
                                        <span style="color:darkred">(This Month)</span>
                                    </th>
                                </tr>
                                <tr>
                                    <th style="text-align: center">{{ $data->normalThisMonth->sum('coins') }}</th>
                                    <th style="text-align: center">₹ {{ number_format($data->normalThisMonth->sum('real_amount'),2)  }}</th>
                                </tr>
                            </table>
                        </div>
                        <div class="col-md-2">
                            <table class="table table-hover" style="background-color: white !important">
                                <tr>
                                    <th colspan="4" style="text-align: center">
                                        P.M 1 Coin Packs <br>
                                        <span style="color:darkred">(This Month)</span>
                                    </th>
                                </tr>
                                <tr>
                                    <th style="text-align: center">{{ $data->pm1ThisMonth->sum('coins') }}</th>
                                    <th style="text-align: center">₹ {{ number_format($data->pm1ThisMonth->sum('real_amount'),2)  }}</th>
                                </tr>
                            </table>
                        </div>
                        <div class="col-md-2">
                            <table class="table table-hover" style="background-color: white !important">
                                <tr>
                                    <th colspan="4" style="text-align: center">
                                        P.M 3 Coin Packs <br>
                                        <span style="color:darkred">(This Month)</span>
                                    </th>
                                </tr>
                                <tr>
                                    <th style="text-align: center">{{ $data->pm3ThisMonth->sum('coins') }}</th>
                                    <th style="text-align: center">₹ {{ number_format($data->pm3ThisMonth->sum('real_amount'),2)  }}</th>
                                </tr>
                            </table>
                        </div>
                        <div class="col-md-2">
                            <table class="table table-hover" style="background-color: white !important">
                                <tr>
                                    <th colspan="4" style="text-align: center">
                                        P.M 6 Coin Packs <br>
                                        <span style="color:darkred">(This Month)</span>
                                    </th>
                                </tr>
                                <tr>
                                    <th style="text-align: center">{{ $data->pm6ThisMonth->sum('coins') }}</th>
                                    <th style="text-align: center">₹ {{ number_format($data->pm6ThisMonth->sum('real_amount'),2)  }}</th>
                                </tr>
                            </table>
                        </div>
                        <div class="col-md-2">
                            <table class="table table-hover" style="background-color: white !important">
                                <tr>
                                    <th colspan="4" style="text-align: center">
                                        P.M 12 Coin Packs <br>
                                        <span style="color:darkred">(This Month)</span>
                                    </th>
                                </tr>
                                <tr>
                                    <th style="text-align: center">{{ $data->pm12ThisMonth->sum('coins') }}</th>
                                    <th style="text-align: center">₹ {{ number_format($data->pm12ThisMonth->sum('real_amount'),2)  }}</th>
                                </tr>
                            </table>
                        </div>
                    </div>

                    <br>
                    <br>
                    <br>
                    <div class="row">
                        <div class="col-md-2">
                            <table class="table table-hover" style="background-color: white !important">
                                <tr>
                                    <th colspan="4" style="text-align: center">
                                        S.T Coin Packs <br>
                                       
                                    </th>
                                </tr>
                                <tr>
                                    <th style="text-align: center">{{ $data->starterBelow->sum('coins') }}</th>
                                    <th style="text-align: center">₹ {{ number_format($data->starterBelow->sum('real_amount'),2)  }}
                                    </th>
                                </tr>
                            </table>
                        </div>
                        <div class="col-md-2">
                            <table class="table table-hover" style="background-color: white !important">
                                <tr>
                                    <th colspan="4" style="text-align: center">
                                        N. Coin Packs <br>
                                       
                                    </th>
                                </tr>
                                <tr>
                                      <th style="text-align: center">{{ $data->normalBelow->sum('coins') }}</th>
                                    <th style="text-align: center">₹ {{ number_format($data->normalBelow->sum('real_amount'),2)  }}</th>
                                </tr>
                            </table>
                        </div>
                        <div class="col-md-2">
                            <table class="table table-hover" style="background-color: white !important">
                                <tr>
                                    <th colspan="4" style="text-align: center">
                                        P.M 1 Coin Packs <br>
                                       
                                    </th>
                                </tr>
                                <tr>
                                    <th style="text-align: center">{{ $data->pm1Below->sum('coins') }}</th>
                                    <th style="text-align: center">₹ {{ number_format($data->pm1Below->sum('real_amount'),2)  }}</th>
                                </tr>
                            </table>
                        </div>
                        <div class="col-md-2">
                            <table class="table table-hover" style="background-color: white !important">
                                <tr>
                                    <th colspan="4" style="text-align: center">
                                        P.M 3 Coin Packs <br>
                                       
                                    </th>
                                </tr>
                                 <tr>
                                    <th style="text-align: center">{{ $data->pm3Below->sum('coins') }}</th>
                                    <th style="text-align: center">₹ {{ number_format($data->pm3Below->sum('real_amount'),2)  }}</th>
                                </tr>
                            </table>
                        </div>
                        <div class="col-md-2">
                            <table class="table table-hover" style="background-color: white !important">
                                <tr>
                                    <th colspan="4" style="text-align: center">
                                        P.M 6 Coin Packs <br>
                                       
                                    </th>
                                </tr>
                                 <tr>
                                    <th style="text-align: center">{{ $data->pm6Below->sum('coins') }}</th>
                                    <th style="text-align: center">₹ {{ number_format($data->pm6Below->sum('real_amount'),2)  }}</th>
                                </tr>
                            </table>
                        </div>
                        <div class="col-md-2">
                            <table class="table table-hover" style="background-color: white !important">
                                <tr>
                                    <th colspan="4" style="text-align: center">
                                        P.M 12 Coin Packs <br>
                                       
                                    </th>
                                </tr>
                                <tr>
                                    <th style="text-align: center">{{ $data->pm12Below->sum('coins') }}</th>
                                    <th style="text-align: center">₹ {{ number_format($data->pm12Below->sum('real_amount'),2)  }}</th>
                                </tr>
                            </table>
                        </div>
                    </div>

    
                    
                    <!-- Div : Begin -->
                    
                    </div>
<div class="container-fluid">
    <div class="col-md-12">
        
                    <div class="_aucTable-div-2">  
                        <div class="row" style="padding-bottom:20px">
                        <div class="col-md-4">
                            <form action="" class="form-inline">
                                <div class="col-md-6 form-group">
                                        @foreach ($_GET as $key => $value)
                                            @if ($key == 'search')
                                                @continue
                                            @endif
                                            <input type="hidden" name="{{ $key }}" value="{{ $value }}">
                                        @endforeach

                                    <input type="text" class="form-control" placeholder="Filter by transaction id" name="search" value="{{ request()->search }}">
                                </div>
                                <div class="form-group">
                                    <button class="btn btn-success" type="submit">Search</button>
                                </div>
                            </form>    
                        </div>    
                        
                        <div class="col-md-3"></div>
                        <div class="col-md-1">
                            <form action="{{ route('transaction.coin.sold.export') }}">
                                @foreach ($_GET as $key => $value)
                                    <input type="hidden" name="{{ $key }}" value="{{ $value }}">
                                @endforeach
                                <button class="btn btn-dark" type="submit">Export</button>
                            </form>
                        </div>
                        <div class="col-md-3">
                           <div id="reportrange" style="background: #fff; cursor: pointer; padding: 5px 10px; border: 1px solid #ccc; width: 100%">
    <i class="fa fa-calendar"></i>&nbsp;
    <span></span> <i class="fa fa-caret-down"></i>
</div>
                        </div>
                        <div class="col-md-1">
                            <form action="">
                                <input type="hidden" name="start">
                                <input type="hidden" name="end">
                                <button class="btn btn-dark" type="submit">Filter</button>
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
                <th>Coin Pack Name</th>
                <th>Total Coins</th>
                <th>Price</th>
                <th>Sold To</th>
                <th>Member Plan</th>
                <th>Per Coin Price</th>
                
            </tr>
        </thead>
        <tbody>
        @foreach ($transactions as $key => $transaction)
            
            <tr>
               <td>{{ $transactions->firstItem() + $key }}</td>
               <td>{{ $transaction->created_at->format('d-m-Y') }}</td>
               <td>{{ $transaction->transaction_id }}</td>
               <td>{{ $transaction->coinpackage->package_name }}</td>
               <td style="color:darkred">{{ number_format($transaction->coins) }}</td>
               <td style="color:green">₹ {{ number_format($transaction->real_amount,2) }}</td>
               <td> {{ $transaction->user->user_name}}</td>
               <td>{{ $transaction->user->membership->name }}</td>
               <td style="color:green">₹ 0.12</td>
            </tr>

        @endforeach


           
        </tbody>
        
    </table>{{ $transactions->appends($_GET)->links() }}
                        </div>
                        
                    </div>
                    
    </div>
    
</div>
                    <div class="dataTables_info" id="kt_table_1_info" role="status" aria-live="polite">
                        
                    </div>   
                    <div id="pagination" style="text-align: right; float: right">
                        
                    </div>            
        
                    <!-- Div : Begin  -->   
                </div>
            </div> 

@push('script')
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>

<script>
$(function() {

    if(localStorage.getItem("transaction_coin_sold_start") && localStorage.getItem("transaction_coin_sold_end")){
        var start = moment(localStorage.getItem("transaction_coin_sold_start"));
        var end = moment(localStorage.getItem("transaction_coin_sold_end"));
        
    }else{
        var start = moment().subtract(29, 'days');
        var end = moment();    
    }
    

    function cb(start, end) {
        $('#reportrange span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'));
        
        $("INPUT[name=start]").val(start.format('YYYY-M-D'));
        $("INPUT[name=end]").val(end.format('YYYY-M-D'));
        localStorage.setItem('transaction_coin_sold_start',start);
        localStorage.setItem('transaction_coin_sold_end',end);
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

});
</script>
       
@endpush
@endsection
