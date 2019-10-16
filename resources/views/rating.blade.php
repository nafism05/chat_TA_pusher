
@extends('layouts.app')

@section('content')

<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
			<h3>Beri Rating</h3>
			
			    <star-rating :roomid="{{ $data['roomid'] }}"></star-rating>

		</div>
	</div>
</div>


@endsection

@section('navi')
   <li class="nav-item">
	   {{-- <a class="nav-link" href="{{ url('/endsession/'.$data['roomId']) }}">Akhiri Sesi</a> --}}
   </li>
@endsection
