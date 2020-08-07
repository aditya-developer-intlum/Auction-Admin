<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class TransactionReferralSignUpBonusController extends Controller
{
    public function __invoke(Request $request)
    {
    	return view("transactions.referral-sign-up-bonus");
    }
}
