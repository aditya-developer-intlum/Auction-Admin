<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Transaction;
use App\CoinPackage;
use App\Exports\TransactionColdSoldExport;
use Maatwebsite\Excel\Facades\Excel;

class TransactionCoinPackController extends Controller
{
	private $starterIds;
	private $normalIds;
	private $pm1Ids;
	private $pm3Ids;
	private $pm6Ids;
	private $pm12Ids;
	private $starterAllTime;
	private $normalAllTime;
	private $pm1AllTime;
	private $pm3AllTime;
	private $pm6AllTime;
	private $pm12AllTime;
	private $starterThisMonth;
	private $normalThisMonth;
	private $pm1ThisMonth;
	private $pm3ThisMonth;
	private $pm6ThisMonth;
	private $pm12ThisMonth;
    private $starterBelow;
    private $normalBelow;
    private $pm1Below;
    private $pm3Below;
    private $pm6Below;
    private $pm12Below;
	private $data;
    private $transaction;

	/**
     * Display Coin Sold Report
     *
     * @return Object
     */
    public function __invoke(Request $request)
    {
       
    	$this->generateQuery($request)
        ->getAllIds()
    	->allTime()
    	->thisMonth()
        ->belowTable($request)
    	->get();


    	return view("transactions.coin-pack",[
            'data' => (object)$this->data,
            'transactions' => $this->transaction->paginate(15)
        ]);
    }
    /**
     * Generating Query
     * Table coin purchase all time.
     *
     * @return \Illuminate\Http\Response
     */
    private function generateQuery(Request $request)
    {
        $start = $request->start ?? date('Y-m-d',strtotime('- 1month'));
        $end = $request->end ?? date('Y-m-d');

        $this->transaction = Transaction::with('coinPackage','user')
        ->whereBetween('created_at',[$start,$end])
        ->when($request->search,function($query,$search){

            $query->where('transaction_id','like',"%{$search}%");
        })
        ->whereDescription('Coin Purchage');

        return $this;
    }
    /**
     * Get Ids from CoinPackage table
     *
     * @return Object
     */
    private function getAllIds()
    {
    	$this->starterIds = CoinPackage::whereIsFirst(true)
    	->pluck('id')->toArray();

    	$this->normalIds = CoinPackage::whereIsFirst(false)
    	->where('is_p_member',false)
    	->pluck('id')
    	->toArray();

    	$this->pm1Ids = CoinPackage::where('is_p_member',true)
    	->where('p_member_validity',1)
    	->pluck('id')->toArray();

    	$this->pm3Ids = CoinPackage::where('is_p_member',true)
    	->where('p_member_validity',3)
    	->pluck('id')->toArray();

    	$this->pm6Ids = CoinPackage::where('is_p_member',true)
    	->where('p_member_validity',6)
    	->pluck('id')->toArray();

    	$this->pm12Ids = CoinPackage::where('is_p_member',true)
    	->where('p_member_validity',12)
    	->pluck('id')->toArray();

    	return $this;
    }
    /**
     * Get Filter Data From Transaction 
     * Table coin purchase all time.
     *
     * @return \Illuminate\Http\Response
     */
    private function allTime()
    {
    	/*All Time*/
    	$this->starterAllTime   = Transaction::whereIn('package_id',$this->starterIds)->get();

    	$this->normalAllTime   	= Transaction::whereIn('package_id',$this->normalIds)->get();

    	$this->pm1AllTime   	= Transaction::whereIn('package_id',$this->pm1Ids)->get();

    	$this->pm3AllTime   	= Transaction::whereIn('package_id',$this->pm3Ids)->get();

    	$this->pm6AllTime   	= Transaction::whereIn('package_id',$this->pm6Ids)->get();

    	$this->pm12AllTime   	= Transaction::whereIn('package_id',$this->pm12Ids)->get();


    	return $this;
    }
    /**
     * Get Filter Data From Transaction 
     * Table coin purchase Current Month.
     *
     * @return \Illuminate\Http\Response
     */
    private function thisMonth()
    {
    	/*This Month*/
    	$this->starterThisMonth = Transaction::whereIn('package_id',$this->starterIds)
    	->whereBetween('created_at',month())->get();

    	$this->normalThisMonth 	= Transaction::whereIn('package_id',$this->normalIds)
    	->whereBetween('created_at',month())->get();

    	$this->pm1ThisMonth 	= Transaction::whereIn('package_id',$this->pm1Ids)
    	->whereBetween('created_at',month())->get();

    	$this->pm3ThisMonth 	= Transaction::whereIn('package_id',$this->pm3Ids)
    	->whereBetween('created_at',month())->get();

    	$this->pm6ThisMonth 	= Transaction::whereIn('package_id',$this->pm6Ids)
    	->whereBetween('created_at',month())->get();

    	$this->pm12ThisMonth 	= Transaction::whereIn('package_id',$this->pm12Ids)
    	->whereBetween('created_at',month())->get();

    	return $this;

    }
    /**
     * Get Filter Data From Transaction 
     * Table coin purchase Current Month.
     *
     * @return \Illuminate\Http\Response
     */
    private function belowTable(Request $request)
    {
        /*This Month*/
        $start = $request->start ?? date('Y-m-d',strtotime('- 1month'));
        $end = $request->end ?? date('Y-m-d');

        /*Starter Below Query*/
       $this->starterBelow = Transaction::with('coinPackage','user')
        ->whereBetween('created_at',[$start,$end])
        ->when($request->search,function($query,$search){

            $query->where('transaction_id','like',"%{$search}%");
        })
        ->whereDescription('Coin Purchage')->whereIn('package_id',$this->starterIds)
        ->get();

        /*Normal Coin Below*/
        $this->normalBelow = Transaction::with('coinPackage','user')
        ->whereBetween('created_at',[$start,$end])
        ->when($request->search,function($query,$search){

            $query->where('transaction_id','like',"%{$search}%");
        })
        ->whereDescription('Coin Purchage')->whereIn('package_id',$this->normalIds)
        ->get();

        /*Premium 1 month coin query*/

        $this->pm1Below = Transaction::with('coinPackage','user')
        ->whereBetween('created_at',[$start,$end])
        ->when($request->search,function($query,$search){

            $query->where('transaction_id','like',"%{$search}%");
        })
        ->whereDescription('Coin Purchage')->whereIn('package_id',$this->pm1Ids)
        ->get();

        /*Premium 3 month coin query*/
        $this->pm3Below = Transaction::with('coinPackage','user')
        ->whereBetween('created_at',[$start,$end])
        ->when($request->search,function($query,$search){

            $query->where('transaction_id','like',"%{$search}%");
        })
        ->whereDescription('Coin Purchage')->whereIn('package_id',$this->pm3Ids)
        ->get();

        /*Premium 6 month coin query*/
        $this->pm6Below = Transaction::with('coinPackage','user')
        ->whereBetween('created_at',[$start,$end])
        ->when($request->search,function($query,$search){

            $query->where('transaction_id','like',"%{$search}%");
        })
        ->whereDescription('Coin Purchage')->whereIn('package_id',$this->pm6Ids)
        ->get();

        /*Premium 12 month coin query*/
        $this->pm12Below = Transaction::with('coinPackage','user')
        ->whereBetween('created_at',[$start,$end])
        ->when($request->search,function($query,$search){

            $query->where('transaction_id','like',"%{$search}%");
        })
        ->whereDescription('Coin Purchage')->whereIn('package_id',$this->pm12Ids)
        ->get();

       
        return $this;

    }
    /**
     * Pack all property in data array
     *
     * @return \Illuminate\Http\Response
     */
    private function get()
    {
    	$this->data = [
    		'starterAllTime' => $this->starterAllTime,
    		'normalAllTime' => $this->normalAllTime,
    		'pm1AllTime' => $this->pm1AllTime,
    		'pm3AllTime' => $this->pm3AllTime,
    		'pm6AllTime' => $this->pm6AllTime,
    		'pm12AllTime' => $this->pm12AllTime,
    		'starterThisMonth' => $this->starterThisMonth,
    		'normalThisMonth' => $this->normalThisMonth,
    		'pm1ThisMonth' => $this->pm1ThisMonth,
    		'pm3ThisMonth' => $this->pm3ThisMonth,
    		'pm6ThisMonth' => $this->pm6ThisMonth,
    		'pm12ThisMonth' => $this->pm12ThisMonth,
            'starterBelow' => $this->starterBelow,
            'normalBelow' => $this->normalBelow,
            'pm1Below' => $this->pm1Below,
            'pm3Below' => $this->pm3Below,
            'pm6Below' => $this->pm6Below,
            'pm12Below' => $this->pm12Below,
    	];
    	return $this;
    }
    public function Export(Request $request)
    {
        $this->generateQuery($request);

        $transactions = $this->transaction->get();

        return Excel::download(new TransactionColdSoldExport($transactions), 'CoinSold.xlsx');
    }
}
