@extends('layouts.app')

@section('content')
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<div class="container">
	    <div class="row">
	    	<div class="col-11 offset-1">
				<p>Rating Anda : {{ $data['rating'] }}</p>
				<span class="fa fa-star faguru {{ $data['rfloor'] >= 1 ? 'checked' : '' }}"></span>
				<span class="fa fa-star faguru {{ $data['rfloor'] >= 2 ? 'checked' : '' }}"></span>
				<span class="fa fa-star faguru {{ $data['rfloor'] >= 3 ? 'checked' : '' }}"></span>
				<span class="fa fa-star faguru {{ $data['rfloor'] >= 4 ? 'checked' : '' }}"></span>
				<span class="fa fa-star faguru {{ $data['rfloor'] >= 5 ? 'checked' : '' }}"></span>
	    	</div>
	    </div>
	</div>
@endsection

@section('navi')

@endsection
