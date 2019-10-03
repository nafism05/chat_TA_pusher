<!DOCTYPE html>
<html lang="en" dir="ltr">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<title></title>
	</head>
	<body>

		Hi <strong>{{ $name }}</strong>,
		<br><br>
		@foreach ($body as $m)
			{{ $m->user->name }}: {{ $m->message }}<br>
		@endforeach
		{{-- <p>{!! $body !!}</p> --}}
	</body>
</html>
