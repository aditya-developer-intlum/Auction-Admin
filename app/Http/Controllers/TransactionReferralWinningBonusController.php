<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class TransactionReferralWinningBonusController extends Controller
{
    public function __invoke(Request $request)
    {
    	return view("transactions.referral-winning-bonus");
    }
}
