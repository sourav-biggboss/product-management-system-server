<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\Notification;

class NotificationController extends Controller
{

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function index(int $id = null)
    {

        $notification = Notification::select('*');
        
        if ($id != null) {
            $notification = $notification->where('id',$id);
        }
        return $notification->get();
    }

    
    /**
     * Create the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {

        $request->validate([
            'title' => 'required|string|max:100',
            'message' => 'required|string|max:225',
        ]);

        $notification = new Notification;
        $notification->title = $request->title;
        $notification->message = $request->message;
        if (!$notification->save()) {
            return response()->json([
                'status' => 'failed'
            ]);
        }
        return response()->json([
            'status' => 'success'
        ]);
    }

}
