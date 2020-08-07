<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Transaction;
use Carbon\Carbon;
use App\Exports\TransactionAdminCoinGiftExport;
use Maatwebsite\Excel\Facades\Excel;

class TransactionAdminCoinGiftController extends Controller
{
	private static $type = 16;
	private static $paginate = 15;
    private $start,$end;
    private $thisMonth,$allTime,$belowTable;
    private $transactions,$data;

    public function __invoke(Request $request)
    {
        $this->range($request)
        ->allTime()
        ->thisMonth()
        ->coinGift($request)
        ->belowTable($request)
        ->merge();

    	return view("transactions.admin-coin-gift",$this->data);
    }
    private function range(Request $request)
    {
        $this->start = $request->start? Carbon::parse($request->start) : date('Y-m-d',strtotime('- 1month'));
        $this->end = $request->end? Carbon::parse($request->end)->addDay(1) : date('Y-m-d',strtotime(' +1 day'));

        return $this;
    }
    private function allTime()
    {
        $this->allTime = Transaction::whereType(self::$type)
        ->get();
        return $this;
    }
    private function thisMonth()
    {
        $this->thisMonth = $this->allTime->whereBetween('created_at',month());
        return $this;
    }
    private function coinGift(Request $request)
    {
        $this->transactions = Transaction::with('user','transactionType')
        ->whereBetween('created_at',[$this->start,$this->end])
        ->whereType(self::$type)
        ->when($request->search,function($query,$search){

            $query->where('transaction_id','like',"%{$search}%");
        })->paginate(self::$paginate);
        return $this;
    }
    private function belowTable(Request $request)
    {
        $this->belowTable = Transaction::whereBetween('created_at',[$this->start,$this->end])
        ->whereType(self::$type)
        ->when($request->search,function($query,$search){

            $query->where('transaction_id','like',"%{$search}%");
        })->get();
        return $this;
    }
    private function merge()
    {
        $this->data = [
            'allTime' => $this->allTime,
            'thisMonth' => $this->thisMonth,
            'transactions'=>$this->transactions,
            'belowTable' => $this->belowTable
        ];
        return $this;
    }
    public function export(Request $request)
    {
        $this->range($request)
        ->belowTable($request);
        
        return Excel::download(new TransactionAdminCoinGiftExport($this->belowTable), 'admin coin gift.xlsx');
    }

}
