@extends('layouts.app')

@section('content')

<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <send-notification
				vapid="{{ $data['VAPID_PUBLIC_KEY'] }}"
			></send-notification>
        </div>
    </div>
</div>
@endsection
