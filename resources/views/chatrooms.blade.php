@extends('layouts.app')

@section('content')

      <room-list-s
  		  :rooms="rooms"
		  v-on:fetchrooms="fetchRooms"
	  ></room-list-s>
      {{-- <a href="{{ url('/chatroom/add') }}">Mulai Session</a> --}}

	{{-- <a href="{{ url('cobabutton') }}">cobabutton</a> --}}

@endsection

@section('navi')
	<li class="nav-item">
		<a class="nav-link" href="{{ url('/chatroom/add') }}">Mulai Sesi</a>
	</li>
@endsection
