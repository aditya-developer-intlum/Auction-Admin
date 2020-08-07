<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Setting;
use App\Transaction;
use Carbon\Carbon;
use App\Exports\TransactionFirstCoinPurchaseBonusExport;
use Maatwebsite\Excel\Facades\Excel;

class TransactionFirstCoinPurchaseBonusController extends Controller
{
    private static $ul1 = 6;
    private static $ul2 = 7;
    private $allTFCP,$allUl1,$allUl2;
    private $allMonth,$monthUl1,$monthUl2;
    private $belowTable,$belowTableUl1,$belowTableUl2;
    private $transactions;
    private $data;

    public function __invoke(Request $request)
    {
    	$this->upline1($request)
    	->upline2($request)->dateRange($request)
        ->all()
        ->month()
        ->belowTable($request)
        ->transaction($request)
        ->merge();
        
    	return view("transactions.first-coin-purchase-bonus",$this->data);
    }
    public function __get($props)
    {
    	return Setting::first();
    }
    private function dateRange(Request $request)
    {
        $this->start = $request->start? Carbon::parse($request->start):date('Y-m-d',strtotime('- 1month'));
        $this->end = $request->end? Carbon::parse($request->end)->addDay(1): date('Y-m-d',strtotime(' + 1day'));
        return $this;
    }
    private function upline1(Request $request)
    {
    	if ($request->has('first_coin_purchase_upline1')) {
    		$request->validate(['first_coin_purchase_upline1'=> 'required|numeric']);
    		$this->setting->update(['first_coin_purchase_upline1' => $request->first_coin_purchase_upline1]);
    	}
    	return $this;
    }
    private function upline2(Request $request)
    {
    	if ($request->has('first_coin_purchase_upline2')) {
    		$request->validate(['first_coin_purchase_upline2'=> 'required|numeric']);
    		$this->setting->update(['first_coin_purchase_upline2' => $request->first_coin_purchase_upline2]);
    		
    	}
    	return $this;
    }
    private function all()
    {
        $this->allTFCP = Transaction::whereIn('type',[self::$ul1,self::$ul2])->get();
        $this->allUl1 = $this->allTFCP->where('type',self::$ul1);
        $this->allUl2 = $this->allTFCP->where('type',self::$ul2);
        return $this;
    }
    private function month()
    {
        $this->allMonth = $this->allTFCP->whereBetween('created_at',month());
        $this->monthUl1 = $this->allTFCP->whereBetween('created_at',month())->where('type',self::$ul1);
        $this->monthUl2 = $this->allTFCP->whereBetween('created_at',month())->where('type',self::$ul2);
        return $this;
    }
    private function belowTable(Request $request)
    {

        $this->belowTable = Transaction::with('user')
        ->whereBetween('created_at',[$this->start,$this->end])
        ->when($request->search,function($query,$search){

            $query->where('transaction_id','like',"%{$search}%");
        })
        ->whereIn('type',[self::$ul1,self::$ul2])
        ->get();

        $this->belowTableUl1 = $this->belowTable->where('type',self::$ul1);
        $this->belowTableUl2 = $this->belowTable->where('type',self::$ul2);
        return $this;
    }
    private function transaction(Request $request)
    {
        $this->transactions = Transaction::with('user')
        ->whereBetween('created_at',[$this->start,$this->end])
        ->when($request->search,function($query,$search){

            $query->where('transaction_id','like',"%{$search}%");
        })
        ->whereIn('type',[self::$ul1,self::$ul2])
        ->paginate(15);
        return $this;
    }
    private function merge()
    {
        $this->data = [
            'allTFCP' => $this->allTFCP,
            'allUl1' => $this->allUl1,
            'allUl2' => $this->allUl2,
            'allMonth' => $this->allMonth,
            'monthUl1' => $this->monthUl1,
            'monthUl2' => $this->monthUl2,
            'belowTable' => $this->belowTable,
            'belowTableUl1' => $this->belowTableUl1,
            'belowTableUl2' => $this->belowTableUl2,
            'transactions' => $this->transactions,
            'setting' => $this->setting
        ];
        return $this;
    }
    public function export(Request $request)
    {
        $this->dateRange($request)
        ->belowTable($request);

        return Excel::download(new TransactionFirstCoinPurchaseBonusExport($this->belowTable), 'first coin purchase bonus report.xlsx');
    }

}
