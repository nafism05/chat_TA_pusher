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

Broadcast::channel('chat.{roomid}', function ($user, $roomid) {
    Log::info('broadcast channel chat');
  return Auth::check();
});

Broadcast::channel('guru.{guruid}', function ($user, $guruid) {
    Log::info('broadcast channel guruchannel');
  return Auth::check();
});
