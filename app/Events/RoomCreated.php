<?php

namespace App\Events;

use App\User;
use App\ChatRoom;
use Illuminate\Broadcasting\Channel;
use Illuminate\Queue\SerializesModels;
use Illuminate\Broadcasting\PrivateChannel;
use Illuminate\Broadcasting\PresenceChannel;
use Illuminate\Foundation\Events\Dispatchable;
use Illuminate\Broadcasting\InteractsWithSockets;
use Illuminate\Contracts\Broadcasting\ShouldBroadcast;
use Illuminate\Support\Facades\Log;

class RoomCreated implements ShouldBroadcast
{
    use Dispatchable, InteractsWithSockets, SerializesModels;

    /**
     * Create a new event instance.
     *
     * @return void
     */

    public $user;
    public $chatroom;
    private $guruChannel;

    public function __construct(User $user, ChatRoom $chatroom, $guruChannel)
    {
        $this->user = $user;
        $this->chatroom = $chatroom;
        $this->guruChannel = $guruChannel;
    }

    /**
     * Get the channels the event should broadcast on.
     *
     * @return \Illuminate\Broadcasting\Channel|array
     */
    public function broadcastOn()
    {
        Log::info('Yo opo');
        return new PrivateChannel($this->guruChannel);
    }
}
