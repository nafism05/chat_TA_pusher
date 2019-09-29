<!-- resources/views/chat.blade.php -->

@extends('layouts.app')

@section('content')

<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">Chats</div>

                <div class="panel-body">
                    <chat-messages
						v-on:fetchmessages="fetchMessages"
						v-on:listenmessagesent="listenMessageSent"
						:roomid="{{ $data['roomId'] }}"
						:messages="messages"
					></chat-messages>
                </div>
                <div class="panel-footer">
                    <chat-form
                        v-on:messagesent="sendMessage"
						:roomid="{{ $data['roomId'] }}"
                        :user="{{ Auth::user() }}"
                    ></chat-form>
                </div>
            </div>
        </div>
    </div>
	<a href="{{ url('endsession') }}">End Session</a>
</div>
@endsection
