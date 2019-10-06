@extends('layouts.app')

@section('content')
	<!-- Start of Beranda -->
	<div>
		Beranda
	</div>
	<!-- End of Beranda -->
@endsection

@section('navi')
	<li class="nav-item">
		<a class="nav-link" href="{{ url('/chataktif') }}">Chat Aktif</a>
	</li>
@endsection
