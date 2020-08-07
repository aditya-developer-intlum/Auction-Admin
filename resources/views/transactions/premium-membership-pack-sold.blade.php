@extends('layouts.app')

@section('menutitle','All Transaction')
@section('title','All Transaction')
@section('content')
<div class="_ad-body">
                <!-- Admin Body Header -->
                <div class="_ad-top-hdr">
                    <p class="_page-title">Premium Membership Pack Sold</p>
                </div>
                <!-- Admin Body Main -->
                <div class="_ad-body-main" >
                    <div class="row">
                        <div class="col-md-2">
                            <table class="table table-hover" style="background-color: white !important">
                                <tr>
                                    <th colspan="4" style="text-align: center">
                                        All P.Membership <br>
                                        <span style="color:purple">(All Times)</span>
                                    </th>
                                </tr>
                                <tr>
                                    <th style="text-align: center">{{ number_format($all->count('id')) }}</th>
                                    <th style="text-align: center">₹ {{ number_format($all->sum('real_amount'),2) }}</th>
                                </tr>
                            </table>
                        </div>
                        <div class="col-md-2">
                            <table class="table table-hover" style="background-color: white !important">
                                <tr>
                                    <th colspan="4" style="text-align: center">
                                        P.Membership(P.M 1) <br>
                                        <span style="color:purple">(All Times)</span>
                                    </th>
                                </tr>
                                <tr>
                                     <th style="text-align: center">{{ number_format($pm1->count('id')) }}</th>
                                    <th style="text-align: center">₹ {{ number_format($pm1->sum('real_amount'),2) }}</th>
                                </tr>
                            </table>
                        </div>
                        <div class="col-md-2">
                            <table class="table table-hover" style="background-color: white !important">
                                <tr>
                                    <th colspan="4" style="text-align: center">
                                        P.Membership(P.M 3) <br>
                                        <span style="color:purple">(All Times)</span>
                                    </th>
                                </tr>
                                <tr>
                                     <th style="text-align: center">{{ number_format($pm3->count('id')) }}</th>
                                    <th style="text-align: center">₹ {{ number_format($pm3->sum('real_amount'),2) }}</th>
                                </tr>
                            </table>
                        </div>
                        <div class="col-md-3">
                            <table class="table table-hover" style="background-color: white !important">
                                <tr>
                                    <th colspan="4" style="text-align: center">
                                        P.Membership(P.M 6)<br>
                                        <span style="color:purple">(All Times)</span>
                                    </th>
                                </tr>
                                <tr>
                                    <th style="text-align: center">{{ number_format($pm6->count('id')) }}</th>
                                    <th style="text-align: center">₹ {{ number_format($pm6->sum('real_amount'),2) }}</th>
                                </tr>
                            </table>
                        </div>
                        <div class="col-md-3">
                            <table class="table table-hover" style="background-color: white !important">
                                <tr>
                                    <th colspan="4" style="text-align: center">
                                        P.Membership(P.M 12) <br>
                                        <span style="color:purple">(All Times)</span>
                                    </th>
                                </tr>
                                <tr>
                                    <th style="text-align: center">{{ number_format($pm12->count('id')) }}</th>
                                    <th style="text-align: center">₹ {{ number_format($pm12->sum('real_amount'),2) }}</th>
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
                                       All P.Membership <br>
                                        <span style="color:darkred">(This Month)</span>
                                    </th>
                                </tr>
                                <tr>
                                    <th style="text-align: center">{{ number_format($all->whereBetween('created_at',month())->count('id')) }}</th>
                                    <th style="text-align: center">₹ {{ number_format($all->whereBetween('created_at',month())->sum('real_amount'),2) }}</th>
                                </tr>
                            </table>
                        </div>
                        <div class="col-md-2">
                            <table class="table table-hover" style="background-color: white !important">
                                <tr>
                                    <th colspan="4" style="text-align: center">
                                        P.Membership(P.M 1) <br>
                                        <span style="color:darkred">(This Month)</span>
                                    </th>
                                </tr>
                                <tr>
                                   <th style="text-align: center">{{ number_format($pm1->whereBetween('created_at',month())->count('id')) }}</th>
                                    <th style="text-align: center">₹ {{ number_format($pm1->whereBetween('created_at',month())->sum('real_amount'),2) }}</th>
                                </tr>
                            </table>
                        </div>
                        <div class="col-md-2">
                            <table class="table table-hover" style="background-color: white !important">
                                <tr>
                                    <th colspan="4" style="text-align: center">
                                        P.Membership(P.M 3) <br>
                                        <span style="color:darkred">(This Month)</span>
                                    </th>
                                </tr>
                                <tr>
                                   <th style="text-align: center">{{ number_format($pm3->whereBetween('created_at',month())->count('id')) }}</th>
                                    <th style="text-align: center">₹ {{ number_format($pm3->whereBetween('created_at',month())->sum('real_amount'),2) }}</th>
                                </tr>
                            </table>
                        </div>
                        <div class="col-md-3">
                            <table class="table table-hover" style="background-color: white !important">
                                <tr>
                                    <th colspan="4" style="text-align: center">
                                        P.Membership(P.M 6) <br>
                                        <span style="color:darkred">(This Month)</span>
                                    </th>
                                </tr>
                                <tr>
                                    <th style="text-align: center">{{ number_format($pm6->whereBetween('created_at',month())->count('id')) }}</th>
                                    <th style="text-align: center">₹ {{ number_format($pm6->whereBetween('created_at',month())->sum('real_amount'),2) }}</th>
                                </tr>
                            </table>
                        </div>
                        <div class="col-md-3">
                            <table class="table table-hover" style="background-color: white !important">
                                <tr>
                                    <th colspan="4" style="text-align: center">
                                        P.Membership(P.M 12) <br>
                                        <span style="color:darkred">(This Month)</span>
                                    </th>
                                </tr>
                                <tr>
                                    <th style="text-align: center">{{ number_format($pm12->whereBetween('created_at',month())->count('id')) }}</th>
                                    <th style="text-align: center">₹ {{ number_format($pm12->whereBetween('created_at',month())->sum('real_amount'),2) }}</th>
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
                                        All P.Membership <br>
                                       Packs
                                    </th>
                                </tr>
                                 <tr>
                                    <th style="text-align: center">{{ number_format($allBelow->count('id')) }}</th>
                                    <th style="text-align: center">₹ {{ number_format($allBelow->sum('real_amount'),2) }}</th>
                                </tr>
                            </table>
                        </div>
                        <div class="col-md-2">
                            <table class="table table-hover" style="background-color: white !important">
                                <tr>
                                    <th colspan="4" style="text-align: center">
                                        P.Membership(P.M 1) <br>
                                       Packs
                                    </th>
                                </tr>
                                <tr>
                                    <th style="text-align: center">{{ number_format($pm1Below->count('id')) }}</th>
                                    <th style="text-align: center">₹ {{ number_format($pm1Below->sum('real_amount'),2) }}</th>
                                </tr>
                            </table>
                        </div>
                        <div class="col-md-2">
                            <table class="table table-hover" style="background-color: white !important">
                                <tr>
                                    <th colspan="4" style="text-align: center">
                                        P.Membership(P.M 3) <br>
                                       Packs
                                    </th>
                                </tr>
                                <tr>
                                    <th style="text-align: center">{{ number_format($pm3Below->count('id')) }}</th>
                                    <th style="text-align: center">₹ {{ number_format($pm3Below->sum('real_amount'),2) }}</th>
                                </tr>
                            </table>
                        </div>
                        <div class="col-md-3">
                            <table class="table table-hover" style="background-color: white !important">
                                <tr>
                                    <th colspan="4" style="text-align: center">
                                        P.Membership(P.M 6) <br>
                                       Packs
                                    </th>
                                </tr>
                                 <tr>
                                    <th style="text-align: center">{{ number_format($pm6Below->count('id')) }}</th>
                                    <th style="text-align: center">₹ {{ number_format($pm6Below->sum('real_amount'),2) }}</th>
                                </tr>
                            </table>
                        </div>
                        <div class="col-md-3">
                            <table class="table table-hover" style="background-color: white !important">
                                <tr>
                                    <th colspan="4" style="text-align: center">
                                        P.Membership(P.M 12) <br>
                                        Packs
                                       
                                    </th>
                                </tr>
                                <tr>
                                    <th style="text-align: center">{{ number_format($pm12Below->count('id')) }}</th>
                                    <th style="text-align: center">₹ {{ number_format($pm12Below->sum('real_amount'),2) }}</th>
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
                            <form action="{{ route('transaction.premium.pack.sold.export') }}">

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
                <th>Validity</th>
                <th>Price</th>
                <th>Sold To</th>
                <th>Member Plan</th>
                
            </tr>
        </thead>
        <tbody>
            @foreach ($transactions as $key => $transaction)
                <tr>
                   <td>{{ $transactions->firstItem() + $key }}</td>
                   <td>{{ $transaction->created_at->format('d-m-Y') }}</td>
                   <td>{{ $transaction->transaction_id }}</td>
                   <td>{{ $transaction->membership->name }}</td>
                   <td style="color:darkred">{{ $transaction->membership->validity }} Month</td>
                   <td style="color:green">₹ {{ number_format($transaction->real_amount,2) }}</td>
                   <td>{{ $transaction->user->user_name }}</td>
                   <td>{{ $transaction->user->membership->name }}</td>
                </tr>
            @endforeach


           
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
$(function() {

    if(localStorage.getItem("transaction_premium_membership_start") && localStorage.getItem("transaction_premium_membership_end")){
        var start = moment(localStorage.getItem("transaction_premium_membership_start"));
        var end = moment(localStorage.getItem("transaction_premium_membership_end"));
        
    }else{
        var start = moment().subtract(29, 'days');
        var end = moment();    
    }
    

    function cb(start, end) {
        $('#reportrange span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'));
        
        $("INPUT[name=start]").val(start.format('YYYY-M-D'));
        $("INPUT[name=end]").val(end.format('YYYY-M-D'));
        localStorage.setItem('transaction_premium_membership_start',start);
        localStorage.setItem('transaction_premium_membership_end',end);
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
