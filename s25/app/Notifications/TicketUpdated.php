<?php

namespace App\Notifications;

use App\Models\Tiket;
use Illuminate\Bus\Queueable;
use Illuminate\Notifications\Notification;

class TicketUpdated extends Notification
{
    use Queueable;

    public $tiket;

    public function __construct(Tiket $tiket)
    {
        // Simpan tiket ke dalam properti
        $this->tiket = $tiket;
    }

    public function via($notifiable)
    {
        return ['database'];
    }

    public function toDatabase($notifiable)
    {
        // Pastikan bahwa $this->tiket tidak null
        return [
            'tiket_id' => $this->tiket->id,
            'nama' => $this->tiket->nama, // pastikan 'nama' diisi
            'judul' => $this->tiket->judul, // pastikan 'judul' diisi
            'status' => $this->tiket->status,
            'message' => 'Tiket "' . $this->tiket->judul . '" telah diperbarui', // interpolasi string yang benar
        ];
    }
}