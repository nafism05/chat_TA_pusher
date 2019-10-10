<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use App\Rating;

class AdminController extends Controller
{
    public function __construct()
	{
	    $this->middleware('auth');

	}

    public function index()
    {
        $guru = User::where('level', 1)->get();
        $datarating = array();

        foreach ($guru as $g) {
            $data = array(
                    'name' => $g->name,
                    'rating' => $this->getRating($g->id),
                );
            array_push($datarating, $data);
        }

        // foreach ($datarating as $d) {
        //     echo $d['name'];
        // }

        // print_r($datarating);
        // code...

        return view('allgururating')->with('data', $datarating);
    }

    public function getRating($guru_id)
    {
        $rating = Rating::where('guru_id', $guru_id)->get();
        $count = Rating::where('guru_id', $guru_id)->count();
        $ratinga = 0;

        foreach($rating as $r){
            $ratinga += $r->star;
        }

        $ratingb = $ratinga/$count;

        return $ratingb;
    }
    // return view('allgururating');
}
