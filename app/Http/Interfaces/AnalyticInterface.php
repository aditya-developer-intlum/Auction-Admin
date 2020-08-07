<?php

namespace App\Http\Interfaces;
use Illuminate\Http\Request;

interface AnalyticInterface
{
    /**
    * Query Current Month Login User Data Form database
    *
    * @return $this
    */
    public function activeInactive(Request $request);
}