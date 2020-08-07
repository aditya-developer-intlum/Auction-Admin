<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Session\Store;
use App\AnalyticLog;
use Carbon\Carbon;
use Auth;

class SessionTimeOut
{
    protected $session;
    protected $timeout = 7200;
    public function __construct(Store $session){
        $this->session = $session;
    }
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
         $isLoggedIn = $request->path() != 'admin/logout';
        if(! session('lastActivityTime'))
            $this->session->put('lastActivityTime', time());
        elseif(time() - $this->session->get('lastActivityTime') > $this->timeout){
            if(Auth::check()){
                $analytic = AnalyticLog::latest()->where("user_id",$request->user()->id)->first();
                $analytic->logout_date_time = Carbon::now();
                $analytic->save();
            }
       
            $this->session->forget('lastActivityTime');
            auth()->logout();
            return  redirect()->route("login");
        }
        $isLoggedIn ? $this->session->put('lastActivityTime', time()) : $this->session->forget('lastActivityTime');
        return $next($request);
    }
}
