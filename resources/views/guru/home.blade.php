@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Dashboard</div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif

                    You are logged in!

                    <!-- tampil chat aktif - get where user id ada di messages, yg di looping chatroom nya, biar gampang bikin tabel chat room -->
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
