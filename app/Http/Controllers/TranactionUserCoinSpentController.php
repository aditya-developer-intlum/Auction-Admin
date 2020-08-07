<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class TranactionUserCoinSpentController extends Controller
{
    public function __invoke(Request $request)
    {
    	return view('transactions.user-coin-spent');
    }
}
