<?php

namespace App\Http\Controllers;

use App\User;
use App\Message;
use App\ChatRoom;
use App\Models\Jenjang;
use App\Models\Mapel;
use App\Models\Materi;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Events\MessageSent;
use App\Events\RoomCreated;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Mail;

class ChatsController extends Controller
{

    private $data = array();

    public function __construct()
	{
	    $this->middleware('auth');

	}

	public function index()
	{
		//tampil chat aktif
		$user = Auth::user();
        if ($user->level == 1) {
            return redirect('/guru');
        }

		$chatrooms = ChatRoom::where('siswa_id', $user->id)->get();

        $this->data = array(
            'chatrooms' => $chatrooms,
            'siswaId' => $user->id
        );

        return view('chatrooms', ['data' => $this->data]);

	}

	/**
	 * Show chats
	 *
	 * @return \Illuminate\Http\Response
	 */
	public function chat($roomId)
	{
        $data['roomId'] = $roomId;
        return view('chat')->with('data', $data);
	}

	public function addchat()
	{
        $jenjang = Jenjang::all();
        $mapel = Mapel::all();

        $data = array(
            'jenjang' => $jenjang,
            'mapel' => $mapel
        );

	    return view('addchatform')->with('data', $data);
	}

	/**
	 * Fetch all messages
	 *
	 * @return Message
	 */
	public function fetchMessages($roomId)
	{
        // return Message::with('user')->get();
        return Message::with('user')->where('chatroom', $roomId)->get();

	}

	/**
	 * Persist message to database
	 *
	 * @param  Request $request
	 * @return Response
	 */
	public function sendMessage(Request $request)
	{
        $user = Auth::user();
        $roomId = $request->input('roomid');
        //
        $message = $user->messages()->create([
            'message' => $request->input('message'),
            'chatroom' => $request->input('roomid')
        ]);

        // $message = $user->messages()->create([
        //     'message' => 'test',
        //     'chatroom' => 10
        // ]);

        broadcast(new MessageSent($user, $message, $roomId))->toOthers();

        return ['status' => 'Message Sent!'];
	}

    public function storeCRoom(Request $request)
    {
        $user = Auth::user();
        $guru = User::where('level', 1)->inRandomOrder()->first();

        $chatroom = new ChatRoom([
            'judul' => $request->get('judul'),
            'siswa_id' => $user->id,
            'guru_id' => $guru->id, //acak, gawe fungsi nggo ngacak id guru
            'jenjang_id' => $request->get('jenjang'),
            'mapel_id' => $request->get('mapel')
        ]);

        $chatroom->save();
        Log::info('Yo opo save');
        broadcast(new RoomCreated($user, $chatroom, $guru->id))->toOthers();

        return redirect('/'); //yg benar redireck ke chatroom
    }

    public function fetchRooms()
	{
        $user = Auth::user();

        return ChatRoom::where('siswa_id', $user->id)->get();
	}

    public function cobabutton()
    {
        return view('cobabutton');
    }

    public function cobabroadcast()
    {
        $user = Auth::user();
        //
        $message = $user->messages()->create([
            'message' => 'aaaaaa',
            'chatroom' => 2
        ]);

        broadcast(new MessageSent($user, $message, 2))->toOthers();
    }

    public function endsession($roomId)
    {
        // semua messages dikirim ke email guru dan siswa
        $messages = Message::with('user')->where('chatroom', $roomId)->get();
        $user = Auth::user();

        //email to current user
        $to_name = $user->name;
        // $to_email = $user->email;
        $to_email = 'dan10san2s@gmail.com';
        $data = array('name'=>$user->name, "body" => $messages);
        Mail::send('emails.mail', $data, function($message) use ($to_name, $to_email) {
            $message->to($to_email, $to_name)
                    ->subject('Rekap Chat');
                    // ->setContentType('text/plain');
            $message->from('acmedia@gmail.com','ACMEDIA');
        });

        // messages di tabel messages dihapus
        Message::where('chatroom', $roomId)->delete();
        ChatRoom::where('id', $roomId)->delete();

        return redirect('/chataktif');
    }

    public function cobaemail()
    {
        $messages = Message::where('chatroom', 2)->get();

        // print_r($messages);

        // foreach ($messages as $m) {
        //     // code...
        //     echo $m->user->name;
        // }

        $to_name = 'Siswa';
        $to_email = 'dan10san2s@gmail.com';
        $data = array('name'=>"Sam Jose", "body" => $messages);

        Mail::send('emails.mail', $data, function($message) use ($to_name, $to_email) {
            $message->to($to_email, $to_name)
                    ->subject('Artisans Web Testing Mail');
                    // ->setContentType('text/plain');
            $message->from('nafism05@gmail.com','Artisans Web');;
        });
    }
}
