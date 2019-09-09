<?php

/*
|--------------------------------------------------------------------------
| Broadcast Channels
|--------------------------------------------------------------------------
|
| Here you may register all of the event broadcasting channels that your
| application supports. The given channel authorization callbacks are
| used to check if an authenticated user can listen to the channel.
|
*/

Broadcast::channel('chat.{chatroom}', function ($user, $chatroom) {
  return Auth::check();
});

Broadcast::channel('guruChannel.{guruId}', function ($user, $guruId) {
  return Auth::check();
});
