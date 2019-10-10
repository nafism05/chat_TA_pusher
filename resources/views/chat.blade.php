<!-- resources/views/chat.blade.php -->

@extends('layouts.app')

@section('content')
	<div class="container">
	    <chat-messages
			v-on:fetchmessages="fetchMessages"
			v-on:listenmessagesent="listenMessageSent"
			:roomid="{{ $data['roomId'] }}"
			:messages="messages"
			:userid="{{ Auth::id() }}"
		></chat-messages>
	</div>
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
	@if(Auth::user()->level!=1)
		<li class="nav-item">
			<a class="nav-link" href="{{ url('/berirating/'.$data['roomId']) }}">Akhiri Sesi</a>
		</li>
	@endif
@endsection
