<?php

namespace App\Http\Controllers\Guru;

use App\Http\Controllers\Controller;
use App\User;
use App\Message;
use App\ChatRoom;
use App\Rating;
use App\Models\Jenjang;
use App\Models\Mapel;
use App\Models\Materi;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Events\MessageSent;

class ChatsController extends Controller
{
    public function __construct()
	{
	  $this->middleware('auth');
	}

	public function index()
	{

        //tampil chat aktif
		$user = Auth::user();

		$chatrooms = ChatRoom::where('guru_id', $user->id)->get();

        $data = array(
            'chatrooms' => $chatrooms,
            'guruId' => $user->id
        );

        return view('guru/chatrooms', ['data' => $data]);

	}

    public function chat($chatroom)
	{
	    return view('chat');
	}

    public function fetchRooms()
	{
        $user = Auth::user();

        return ChatRoom::where('guru_id', $user->id)->get();
	}

    public function ratingsaya()
    {
        $rating = Rating::where('guru_id', Auth::id())->get();
        $count = Rating::where('guru_id', Auth::id())->count();
        $ratinga = 0;

        foreach($rating as $r){
            $ratinga += $r->star;
        }

        $ratingb = $ratinga/$count;

        $data['rating'] = $ratingb;
        $data['rfloor'] = floor($ratingb);

        return view('guru/rating_guru')->with('data', $data);
    }
}
