<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\AnalyticLog;
use App\PlayAuction;
use Carbon\Carbon;
use App\Http\Interfaces\AnalyticInterface;

class AnalyticsController extends Controller implements AnalyticInterface
{
    /**
     * instance of App\AnalyticLog
     */
    private $analytic;
    /**
     * ids
     */
    private $ids;
    /**
     * collection of array
     */
    private $data;
    /**
     * store this month logged in user data
     */
    private $loggedInThisMonth;
    /**
     * store this week logged in user data
     */
    private $loggedInThisWeek;
    /**
     * store  yesterday logged in user data
     */
    private $loggedInYesterday;
    /**
     * store  today logged in user data
     */
    private $loggedInToday;
    /**
     * store this Month active user Data
     */
    private $activeInThisMonth;
    /**
     * store this week active user Data
     */
    private $activeInThisWeek;
    /**
     * store yesterday active user Data
     */
    private $activeYesterday;
    /**
     * store today active user Data
     */
    private $activeToday;
    /**
     * Pagination Size
     */
    private $pagination = 15;

    /**
     * Display Active \ Inactive Users
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function activeInactive(Request $request)
    {
        $this->loggedMonth()
        ->loggedWeek()
        ->loggedYesterday()
        ->loggedToday()
        ->activeMonth()
        ->activeWeek()
        ->activeYesterday()
        ->activeToday()
        ->usersInfo($request)
        ->assemble();

        return view("analytics.active-inactive",$this->data);
    }
    /**
     * Query Current Month Login User Data Form database
     *
     * @return $this
     */
    private function loggedMonth():object
    {
        $this->loggedInThisMonth = AnalyticLog::whereBetween("created_at",month())
        ->groupBy('user_id')
        ->get();
        return $this;
    }
    /**
     * Query current Week Login User Data Form database
     *
     * @return $this
     */
    private function loggedWeek():object
    {
        $this->loggedInThisWeek = AnalyticLog::whereBetween("created_at",week())
        ->groupBy('user_id')
        ->get();
        return $this;
    }
    /**
     * Query yesterday Login User Data Form database
     *
     * @return $this
     */
    private function loggedYesterday():object
    {
        $this->loggedInYesterday = AnalyticLog::whereDate("created_at",yesterday())
        ->groupBy('user_id')
        ->get();
        return $this;
    }
    /**
     * Query Today Login User Data Form database
     *
     * @return $this
     */
    private function loggedToday():object
    {
        $this->loggedInToday = AnalyticLog::whereDate("created_at",today())
        ->groupBy('user_id')
        ->get();
        return $this;
    }
    /**
     * Query Current Month Active User Data Form database
     *
     * @return $this
     */
    private function activeMonth():object
    {
        $this->activeInThisMonth = PlayAuction::whereBetween("created_at",month())
        ->groupBy('user_id')
        ->get();
        return $this;
    }
    /**
     * Query current Week Active User Data Form database
     *
     * @return $this
     */
    private function activeWeek():object
    {
        $this->activeInThisWeek = PlayAuction::whereBetween("created_at",week())
        ->groupBy('user_id')
        ->get();
        return $this;
    }
    /**
     * Query yesterday Active User Data Form database
     *
     * @return $this
     */
    private function activeYesterday():object
    {
        $this->activeYesterday = PlayAuction::whereDate("created_at",yesterday())
        ->groupBy('user_id')
        ->get();
        return $this;
    }
    /**
     * Query Today Active User Data Form database
     *
     * @return $this
     */
    private function activeToday():object
    {
        $this->activeToday = PlayAuction::whereDate("created_at",today())
        ->groupBy('user_id')
        ->get();
        return $this;
    }
    /**
     * Get Logged In Users Id
     *
     * @return $this
     */
    private function usersInfo(Request $request):object
    {
        $this->ids = AnalyticLog::select((\DB::raw('*, max(id) as id')))
        ->groupBy('user_id')
        ->pluck("id");


        if (!empty($request->search) && empty($request->start) && empty($request->end)) {
           
            $this->analytic = AnalyticLog::with(['user.playAuction','user.winner'])
            ->whereIn('id',$this->ids)
            ->latest()
            ->search("user.user_name",$request->search)
            ->paginate($this->pagination); 

        }else if(!empty($request->start) && !empty($request->end) && empty($request->search)){
            
            $this->analytic = AnalyticLog::with(['user.playAuction','user.winner'])
            ->whereBetween("login_date_time",[Carbon::parse($request->start),Carbon::parse($request->end)])
            ->whereIn('id',$this->ids)
            ->latest()
            ->paginate($this->pagination);

        }else if(!empty($request->start) && !empty($request->end) && !empty($request->search)){

            $this->analytic = AnalyticLog::with(['user.playAuction','user.winner'])
            ->search("user.user_name",$request->search)
            ->whereBetween("login_date_time",[Carbon::parse($request->start),Carbon::parse($request->end)])
            ->whereIn('id',$this->ids)
            ->latest()
            ->paginate($this->pagination);

        }else{

            $this->analytic = AnalyticLog::with(['user.playAuction','user.winner'])
            ->whereIn('id',$this->ids)
            ->latest()
            ->paginate($this->pagination);
           
        }
       
        return $this;
    }

    /**
     * assemble collection to data array 
     *
     * @return $this
     */
    final private function assemble():object
    {
        $this->data = [
            "month" => $this->loggedInThisMonth->count(),
            "week" => $this->loggedInThisWeek->count(),
            "yesterday" => $this->loggedInYesterday->count(),
            "today" => $this->loggedInToday->count(),
            "active_month" => $this->activeInThisMonth->count(),
            "active_week" => $this->activeInThisWeek->count(),
            "active_yesterday" => $this->activeYesterday->count(),
            "active_today" => $this->activeToday->count(),
            "analytic" => $this->analytic
        ];
        return $this;
    }
}
