<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ChatRoom extends Model
{
    protected $table = 'chat_room';

    protected $fillable = [
        'judul',
        'siswa_id',
        'guru_id',
        'jenjang_id',
        'mapel_id',
        'materi_id'
    ];

    public function guru()
    {
        return $this->belongsTo(User::class, 'guru_id', 'id');
    }
}
