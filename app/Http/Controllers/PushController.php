<?php
namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Notifications\PushDemo;
use App\User;
use Auth;
use Notification;
use Illuminate\Support\Facades\Log;

class PushController extends Controller
{
    /**
     * Store the PushSubscription.
     *
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function store(Request $request){
        /*$this->validate($request,[
            'endpoint'    => 'required',
            'keys.auth'   => 'required',
            'keys.p256dh' => 'required'
        ]);
        $endpoint = $request->endpoint;
        $token = $request->keys['auth'];
        $key = $request->keys['p256dh'];
        Log::info('key:'.$key);
        $user = Auth::user();
        $user->updatePushSubscription($endpoint, $key, $token);

        return response()->json(['success' => true],200);*/
        return response()->json([$request->test]);
    }
    /**
     * Send Push Notifications to all users.
     *
     * @return \Illuminate\Http\Response
     */
    public function push(){
        $user = User::where('id', 3)->get();
        // $user = User::all();
        Notification::send($user,new PushDemo);
        // return redirect()->back();
        return response()->json('Notification sent.', 201);
    }
}
