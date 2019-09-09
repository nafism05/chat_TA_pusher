@extends('layouts.app')

@section('content')

@foreach ($data['jenjang'] as $j)
  {{ $j->nama_kategori_sekolah }}
@endforeach

<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
          <form class="" action="{{ url('/chatroom/add') }}" method="post">
            @csrf
            judul<input type="text" name="judul" value=""><br>
            jenjang
            <select name="jenjang">
              @foreach ($data['jenjang'] as $j)
                <option value="{{ $j->id_kategori_sekolah }}">{{ $j->nama_kategori_sekolah }}</option>
              @endforeach
            </select>
            <br>
            mapel
            <select name="mapel">
              @foreach ($data['mapel'] as $m)
                <option value="{{ $m->id_kat_mapel }}">{{ $m->nama_kategori_mapel }}</option>
              @endforeach
            </select>
            <br>
            <br>
            <input type="submit" name="submit" value="Submit">
          </form>
        </div>
    </div>
</div>
@endsection
