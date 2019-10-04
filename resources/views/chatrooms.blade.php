@extends('layouts.swipe')

@section('content')

<div class="middle">
      <room-list-s
  		  :rooms="rooms"
		  v-on:fetchrooms="fetchRooms"
	  ></room-list-s>
      <a href="{{ url('/chatroom/add') }}">Mulai Session</a>

	<a href="{{ url('cobabutton') }}">cobabutton</a>
</div>
@endsection
