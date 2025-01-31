<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Tiket extends Model
{
    use HasFactory;
    

    // Pastikan ada fillable untuk kategori_id
    protected $fillable = [
        'nama', 'judul', 'kategori_id', 'tingkat_urgensi', 'status', 'description', 'troubleshoot', 'image'
    ];

    // Definisikan relasi dengan model Kategori
    public function kategori()
    {
        return $this->belongsTo(Kategori::class);
    }

       // Relasi ke model User
       public function user()
       {
            return $this->belongsTo(User::class, 'user_id'); // Pastikan 'created_by' adalah kolom user_id di tabel tiket
       }
}