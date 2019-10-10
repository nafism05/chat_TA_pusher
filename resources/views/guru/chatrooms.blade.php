@extends('layouts.app')

@section('content')

<div class="container">
	  <room-list
	  	  :rooms="rooms"
		  v-on:fetchrooms="gFetchRooms"
		  v-on:listenroomlist="gListenRoomList"
		  :userid="{{ Auth::id() }}"
	  ></room-list>

</div>
@endsection
