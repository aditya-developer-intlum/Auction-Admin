<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class AccountSummeryController extends Controller
{
    public function __invoke()
    {
    	return view('acount-summery.index');
    }
}
