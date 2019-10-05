<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

/*Route::get('/', function () {
    return view('welcome');
});*/

Auth::routes();

// Route::get('/home', 'HomeController@index')->name('home');


// level 2 itu siswa
Route::group(['middleware' => ['web', 'level:2']], function () {

    /*Route::get('les-private/search', 'LesController@lesSearch');
    Route::get('les-private/guru/{id}/about', 'LesController@about');
    Route::resource('les-private', 'LesController');

    Route::get('materi-belajar/search', 'ChooseMapelController@mapelSearch');
    Route::resource('materi-belajar', 'ChooseMapelController');*/
	Route::get('/', 'BerandaController@index');
	Route::get('/chataktif', 'ChatsController@index');
	Route::get('/chat/id/{roomId}', 'ChatsController@chat');
	Route::get('/chatrooms', 'ChatsController@fetchRooms');
	Route::get('/chatroom/add', 'ChatsController@addchat');
	Route::post('/chatroom/add', 'ChatsController@storeCRoom');
	Route::get('/messages/{roomId}', 'ChatsController@fetchMessages');
	Route::post('/messages', 'ChatsController@sendMessage');
	Route::get('/endsession/{roomId}', 'ChatsController@endsession');

});

// level 1 itu guru
Route::group(['prefix' => 'guru', 'middleware' => ['web', 'level:1']], function () {

	Route::get('/', 'Guru\ChatsController@index');
	Route::get('/chatrooms', 'Guru\ChatsController@fetchRooms');
	Route::get('/chat/id/{id}', 'Guru\ChatsController@chat');
	/*Route::get('/chatroom/add', 'ChatsController@addchat');
	Route::post('/chatroom/add', 'ChatsController@storeCRoom');
	Route::get('/messages', 'ChatsController@fetchMessages');
	Route::post('/messages', 'ChatsController@sendMessage');*/

});

Route::post('/push','PushController@store');
Route::get('/push','PushController@push')->name('push');
Route::get('/cobabutton','ChatsController@cobabutton');
Route::get('/cobabroadcast','ChatsController@cobabroadcast');
Route::get('/cobaemail','ChatsController@cobaemail');
