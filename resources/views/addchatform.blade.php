@extends('layouts.app')

@section('content')

{{-- <div class="container">
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
</div> --}}
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
			<form class="" action="{{ url('/chatroom/add') }}" method="post">
				@csrf
			  <div class="form-group">
			    <label for="exampleInputEmail1">Subject</label>
			    <input type="text" class="form-control" id="exampleInputEmail1" name="judul">
			  </div>
			  <div class="form-group">
			    <label for="exampleFormControlSelect1">Jenjang</label>
			    <select class="form-control" id="exampleFormControlSelect1" name="jenjang">
					@foreach ($data['jenjang'] as $j)
	  	                <option value="{{ $j->id_kategori_sekolah }}">{{ $j->nama_kategori_sekolah }}</option>
	  	              @endforeach
			    </select>
			  </div>
			  <div class="form-group">
			    <label for="exampleFormControlSelect1">Mapel</label>
			    <select class="form-control" id="exampleFormControlSelect1" name="mapel">
				  @foreach ($data['mapel'] as $m)
	                <option value="{{ $m->id_kat_mapel }}">{{ $m->nama_kategori_mapel }}</option>
	              @endforeach
			    </select>
			  </div>
			  <button type="submit" class="btn btn-primary" name="submit" value="submit">Submit</button>
			</form>
		</div>
	</div>
</div>
@endsection
