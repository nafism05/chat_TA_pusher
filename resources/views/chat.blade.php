<!-- resources/views/chat.blade.php -->

@extends('layouts.app')

@section('content')
	    <chat-messages
			v-on:fetchmessages="fetchMessages"
			v-on:listenmessagesent="listenMessageSent"
			:roomid="{{ $data['roomId'] }}"
			:messages="messages"
			:userid="{{ Auth::id() }}"
		></chat-messages>

		{{-- <a href="{{ url('endsession') }}">End Session</a> --}}
	<div class="fixed-bottom">
		<chat-form
			v-on:messagesent="sendMessage"
			:roomid="{{ $data['roomId'] }}"
			:user="{{ Auth::user() }}"
		></chat-form>
	</div>
@endsection

@section('navi')
	<li class="nav-item">
		<a class="nav-link" href="{{ url('/endsession/'.$data['roomId']) }}">Akhiri Sesi</a>
	</li>
@endsection
