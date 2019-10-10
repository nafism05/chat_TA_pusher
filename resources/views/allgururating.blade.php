@extends('layouts.app')

@section('content')
	<h1 class="text-center">Data Rating Guru</h1>
	@foreach ($data as $d)
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="card">
		              <div class="card-body">
		                <h5 class="card-title">{{ $d['name'] }} : {{ $d['rating'] }}</h5>
						<span class="fa fa-star {{ floor($d['rating']) >= 1 ? 'checked' : '' }} faadmin"></span>
						<span class="fa fa-star {{ floor($d['rating']) >= 2 ? 'checked' : '' }} faadmin"></span>
						<span class="fa fa-star {{ floor($d['rating']) >= 3 ? 'checked' : '' }} faadmin"></span>
						<span class="fa fa-star {{ floor($d['rating']) >= 4 ? 'checked' : '' }} faadmin"></span>
						<span class="fa fa-star {{ floor($d['rating']) >= 5 ? 'checked' : '' }} faadmin"></span>
					</div>
				  </div>
					{{-- <p>{{ $d['name'] }}:</p> --}}
				</div>
			</div>
		</div>
	@endforeach
@endsection

@section('navi')
@endsection
