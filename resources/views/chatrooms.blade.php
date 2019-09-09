@extends('layouts.app')

@section('content')

<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">Chat Rooms</div>

                <div class="panel-body">
                  {{--@foreach ($chatrooms as $chatroom)
                    <li><a href="{{ url('/chat/id/'.$chatroom->id) }}">{{ $chatroom->judul }}</a></li>
              		@endforeach--}}
                  <room-list-s :rooms=rooms></room-list-s>
                </div>
                <div class="panel-footer">
                  <a href="{{ url('/chatroom/add') }}">tambah percakapan baru</a>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
