@extends('layouts.app')

@section('content')

<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <send-notification
				:token="{{ csrf_token() }}"
			></send-notification>
        </div>
    </div>
</div>
@endsection
