<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\AnalyticLog;
use Carbon\Carbon;


class LoginHistoryController extends Controller
{
	/**
     * instance of App\AnalyticLog
     */
    private $analytic;
    /**
     * Pagination Size
     */
    private $pagination = 15;

    public function __invoke(Request $request)
    {
    	
        if (!empty($request->search) && empty($request->start) && empty($request->end)) {
           
            $this->analytic = AnalyticLog::with(['user.playAuction','user.winner'])
            ->latest()
            ->search("user.user_name",$request->search)
            ->paginate($this->pagination); 

        }else if(!empty($request->start) && !empty($request->end) && empty($request->search)){
            
            $this->analytic = AnalyticLog::with(['user.playAuction','user.winner'])
            ->whereBetween("login_date_time",[Carbon::parse($request->start),Carbon::parse($request->end)])
            ->latest()
            ->paginate($this->pagination);

        }else if(!empty($request->start) && !empty($request->end) && !empty($request->search)){

            $this->analytic = AnalyticLog::with(['user.playAuction','user.winner'])
            ->search("user.user_name",$request->search)
            ->whereBetween("login_date_time",[Carbon::parse($request->start),Carbon::parse($request->end)])
            ->latest()
            ->paginate($this->pagination);

        }else{

            $this->analytic = AnalyticLog::with(['user.playAuction','user.winner'])
            ->latest()
            ->paginate($this->pagination);
           
        }

    	return view("analytics.login-history",['analytic' => $this->analytic]);
    }
}
