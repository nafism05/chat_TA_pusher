<?php

namespace App\Events;

use App\User;
use App\Message;
use Illuminate\Broadcasting\Channel;
use Illuminate\Queue\SerializesModels;
use Illuminate\Broadcasting\PrivateChannel;
use Illuminate\Broadcasting\PresenceChannel;
use Illuminate\Foundation\Events\Dispatchable;
use Illuminate\Broadcasting\InteractsWithSockets;
use Illuminate\Contracts\Broadcasting\ShouldBroadcast;
use Illuminate\Support\Facades\Log;

class MessageSent implements ShouldBroadcast
{
    use Dispatchable, InteractsWithSockets, SerializesModels;

    /**
     * User that sent the message
     *
     * @var User
     */
    public $user;

    /**
     * Message details
     *
     * @var Message
     */
    public $message;

    public $chatroom;

    /**
     * Create a new event instance.
     *
     * @return void
     */
    public function __construct(User $user, Message $message, $chatroom)
    {
        $this->user = $user;
        $this->message = $message;
        $this->chatroom = $chatroom;
    }

    /**
     * Get the channels the event should broadcast on.
     *
     * @return Channel|array
     */
    public function broadcastOn()
    {
        Log::info('Showing user profile for user: '.$this->chatroom);
        return new PrivateChannel('chat.'.$this->chatroom);
    }
}
