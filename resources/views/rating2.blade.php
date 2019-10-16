
@extends('layouts.app')

@section('content')

<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
			<h3>Beri Rating</h3>

			<form class="rating" method="post" action="{{ url('/saverating') }}">
				@csrf
				<input type="hidden" name="roomid" value="{{ $data['roomid'] }}">
				<div class="form-check-inline">
				  <label class="form-check-label">
				    <input type="radio" class="form-check-input" name="rating" value="1">1
				  </label>
				</div>
				<div class="form-check-inline">
				  <label class="form-check-label">
				    <input type="radio" class="form-check-input" name="rating" value="2">2
				  </label>
				</div>
				<div class="form-check-inline disabled">
				  <label class="form-check-label">
				    <input type="radio" class="form-check-input" name="rating" value="3">3
				  </label>
				</div>
				<div class="form-check-inline disabled">
				  <label class="form-check-label">
				    <input type="radio" class="form-check-input" name="rating" value="4">4
				  </label>
				</div>
				<div class="form-check-inline disabled">
				  <label class="form-check-label">
				    <input type="radio" class="form-check-input" name="rating" value="5">5
				  </label>
				</div>
				{{-- <label> --}}
					<button class="btn btn-primary" >Submit</button>
				{{-- </label> --}}
				{{-- <input type="submit" class="btn btn-primary" name="" value=""> --}}
			</form>

		</div>
	</div>
</div>


@endsection

@section('navi')
   <li class="nav-item">
	   {{-- <a class="nav-link" href="{{ url('/endsession/'.$data['roomId']) }}">Akhiri Sesi</a> --}}
   </li>
@endsection
