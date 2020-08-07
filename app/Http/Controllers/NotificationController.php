<?php

namespace App\Http\Controllers;

use App\Notification;
use App\NotificationCategory;
use App\NotificationSubCategory;
use Illuminate\Http\Request;

class NotificationController extends Controller
{
    private $notification;
    private $type;

    public function __construct(Request $request)
    {
        if ($request->segment(1) == 'notification') {
            $this->type = 1;
        }else{
            $this->type = 2;
        }
        return $this;
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        if($this->type==1){
           // $this->authorize('viewAllDefaultNotification',Notification::class);          
            }else{
          //  $this->authorize('viewAllSegmentedNotification',Notification::class);          
            }        $notifications = Notification::whereType($this->type)->get();
        return view("notification.view",compact('notifications'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        if($this->type==1){
       // $this->authorize('addDefaultNotification',Notification::class);          
        }else{
       // $this->authorize('addSegmentedNotification',Notification::class);          
        }
        $notificationCategories = NotificationCategory::whereType($this->type)->get();
        return view("notification.add",compact('notificationCategories'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->notification = new Notification;
        $this->check($request)
        ->props($request)
        ->save();
        return back()->withSuccess("Default Notification is Created");
    }
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function check(Request $request):object
    {
        $request->validate([
            "notification_category" => ["required"],
            "notification_sub_category" => ["required"],
            "dashboard_notification" => ["required"],     
        ]);
        return $this;
    }
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function props(Request $request):object
    {
        $this->notification->notification_category_id = $request->notification_category;
        $this->notification->notification_sub_category_id = $request->notification_sub_category;
        $this->notification->dashboard_notification = $request->dashboard_notification;
        $this->notification->email_subject = $request->email_subject;
        $this->notification->email_description = $request->email_description;
        $this->notification->type= $this->type;
        return $this;
    }
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function save():void
    {
        $this->notification->save();
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Notification  $notification
     * @return \Illuminate\Http\Response
     */
    public function show(Notification $notification)
    {
        if($this->type==1){
          //  $this->authorize('viewDefaultNotification',Notification::class);          
            }else{
         //   $this->authorize('viewSegmentedNotification',Notification::class);          
            }
        return view("notification.show",compact('notification'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Notification  $notification
     * @return \Illuminate\Http\Response
     */
    public function edit(Notification $notification)
    {
        if($this->type==1){
         //   $this->authorize('editDefaultNotification',Notification::class);          
            }else{
         //   $this->authorize('editSegmentedNotification',Notification::class);          
            }
        $notificationCategories = NotificationCategory::whereType($this->type)->get();
        return view("notification.edit",compact('notification','notificationCategories'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Notification  $notification
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Notification $notification)
    {
        $this->notification = $notification;
        $this->check($request)
        ->props($request)
        ->save();
        return back()->withSuccess("Default Notification is Updated");
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Notification  $notification
     * @return \Illuminate\Http\Response
     */
    public function destroy(Notification $notification)
    {
        if($this->type==1){
         //   $this->authorize('deleteDefaultNotification',Notification::class);          
            }else{
         //   $this->authorize('deleteSegmentedNotification',Notification::class);          
            }
        $notification->delete();
        return back()->withSuccess("Notification is Deleted");
    }
    public function subcategory(Request $request)
    {
        return NotificationSubCategory::where("notification_category_id",$request->category)
        ->get();
    }
}
