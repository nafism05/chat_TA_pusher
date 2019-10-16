<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="theme-color" content="#2196f3">
	<link rel="manifest" href="{{url('/manifest.json')}}">
	<link rel="apple-touch-icon" href="{{url('/images/icons/icon-72x72.png')}}"/>

    <!-- CSRF Token -->
    {{-- <meta name="_token" content="{!! csrf_token() !!}"> --}}
    <meta name="csrf-token" content="{!! csrf_token() !!}"/>

    <title>{{ config('app.name', 'ACMEDIA') }}</title>


    <!-- Scripts -->
    <script src="{{ asset('js/app.js') }}" defer></script>

    <!-- Fonts -->
    <link rel="dns-prefetch" href="//fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <!-- Styles -->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">

    <style type="text/css">

	ul {
		list-style-type: none;
	}

		.card{
			margin-bottom: 20px;
		}

		.checked {
		  color: orange;
		}

		.faguru{
		  font-size: 70px;
		}

		.faadmin{
		  font-size: 30px;
		}
      </style>

	  <style type="text/css">
	  .star-rating__checkbox {
	    position: absolute;
	    overflow: hidden;
	    clip: rect(0 0 0 0);
	    height: 1px;
	    width: 1px;
	    margin: -1px;
	    padding: 0;
	    border: 0;
	  }

	  .star-rating__star {
	    display: inline-block;
	    padding: 3px;
	    vertical-align: middle;
	    line-height: 1;
	    font-size: 1.5em;
	    color: #ababab;
	    transition: color 0.2s ease-out;
	  }
	  .star-rating__star:hover {
	    cursor: pointer;
	  }
	  .star-rating__star.is-selected {
	    color: #ffd700;
	  }
	  .star-rating__star.is-disabled:hover {
	    cursor: default;
	  }
	  </style>

	  <style type="text/css">
	  /* .rating {
display: inline-block;
position: relative;
height: 50px;
line-height: 50px;
font-size: 50px;
}

.rating label {
position: absolute;
top: 0;
left: 0;
height: 100%;
cursor: pointer;
}

.rating label:last-child {
position: static;
}

.rating label:nth-child(1) {
z-index: 5;
}

.rating label:nth-child(2) {
z-index: 4;
}

.rating label:nth-child(3) {
z-index: 3;
}

.rating label:nth-child(4) {
z-index: 2;
}

.rating label:nth-child(5) {
z-index: 1;
}

.rating label input {
position: absolute;
top: 0;
left: 0;
opacity: 0;
}

.rating label .icon {
float: left;
color: transparent;
}

.rating label:last-child .icon {
color: #000;
}

.rating:not(:hover) label input:checked ~ .icon,
.rating:hover label:hover input ~ .icon {
color: #ffd700;
}

.rating label input:focus:not(:checked) ~ .icon:last-child {
color: #000;
text-shadow: 0 0 5px #09f;
} */
	  </style>


</head>
<body>
    <div id="app">
        <nav class="navbar navbar-expand-md navbar-light bg-white shadow-sm">
            <div class="container">
                <a class="navbar-brand" href="{{ url('/') }}">
                    {{ config('app.name', 'Laravel') }}
                </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="{{ __('Toggle navigation') }}">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <!-- Left Side Of Navbar -->
                    <ul class="navbar-nav mr-auto">

                    </ul>

                    <!-- Right Side Of Navbar -->
                    <ul class="navbar-nav ml-auto">
                        <!-- Authentication Links -->
                        @guest
                            <li class="nav-item">
                                <a class="nav-link" href="{{ route('login') }}">{{ __('Login') }}</a>
                            </li>
                            <!-- @if (Route::has('register'))
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ route('register') }}">{{ __('Register') }}</a>
                                </li>
                            @endif -->
                        @else


							@yield('navi')
							<li class="nav-item">
						 	   <a class="nav-link" href="{{ url('/cobabutton') }}">Enable Notification</a>
						    </li>
                            <li class="nav-item dropdown">
                                <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                                    {{ Auth::user()->name }} <span class="caret"></span>
                                </a>

                                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="{{ route('logout') }}"
                                       onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                        {{ __('Logout') }}
                                    </a>

                                    <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                        @csrf
                                    </form>
                                </div>
                            </li>
                        @endguest
                    </ul>
                </div>
            </div>
        </nav>

        <main class="py-4">
            @yield('content')
        </main>
    </div>



    <script src="{{ asset('js/msw.js') }}" defer></script>

	<script type="text/javascript">
	$(':radio').change(function() {
console.log('New star rating: ' + this.value);
});
	</script>
</body>
</html>
