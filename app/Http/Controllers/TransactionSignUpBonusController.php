<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Transaction;
use App\Setting;
use App\Exports\TransactionSignUpBonusExport;
use Maatwebsite\Excel\Facades\Excel;

class TransactionSignUpBonusController extends Controller
{
    private $start;
    private $end;
    private $transaction;
    private $transactions;
    private $transactionBelow;

    public function __invoke(Request $request)
    {
        $this->range($request)
        ->transaction($request)
        ->transactionBelow($request)
        ->signUpData($request);

    	return view("transactions.sign-up-bonus",[
            'transactions' => $this->transactions,
            'transaction' => $this->transaction,
            'transactionBelow' => $this->transactionBelow,
            'setting' => Setting::first()
        ]);
    }
    private function range(Request $request): Object
    {
        $this->start = $request->start ?? date('Y-m-d',strtotime('- 1month'));
        $this->end = $request->end ?? date('Y-m-d');
        return $this;
    }
    private function transaction(Request $request): object
    {
        $this->transaction = Transaction::with('user')
        ->whereDescription('Sign up Bonus')
        ->get();

        return $this;
    }
    private function transactionBelow(Request $request)
    {
        $this->transactionBelow = Transaction::with('user')
        ->whereDescription('Sign up Bonus')
        ->whereBetween('created_at',[$this->start,$this->end])
        ->when($request->search,function($query,$search){

            $query->where('transaction_id','like',"%{$search}%");
        })
        ->get();
        return $this;
    }
    private function signUpData(Request $request): object
    {
        $this->transactions = Transaction::with('user')
        ->whereDescription('Sign up Bonus')
        ->whereBetween('created_at',[$this->start,$this->end])
        ->when($request->search,function($query,$search){

            $query->where('transaction_id','like',"%{$search}%");
        })
        ->paginate(15);

        return $this;
    }

    public function update(Request $request)
    {
    	$request->validate(['referral_user_bonus' => 'required']);
    	
    	$setting = Setting::first();
    	$setting->referral_user_bonus = $request->referral_user_bonus;
    	$setting->save();
    	return back()->withSuccess("Referral User Bonus is Updated to {$request->referral_user_bonus}");
    }
    public function export(Request $request)
    {
        $this->range($request)
        ->transactionBelow($request);

        return Excel::download(new TransactionSignUpBonusExport($this->transactionBelow), 'Sign Up Bonus.xlsx');
    }
}
