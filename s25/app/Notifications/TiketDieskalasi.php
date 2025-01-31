<?php

namespace App\Notifications;

use Illuminate\Bus\Queueable;
use Illuminate\Notifications\Notification;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Notifications\Messages\MailMessage;

class TiketDieskalasi extends Notification
{
    use Queueable;

    protected $tiket;

    public function __construct($tiket)
    {
        $this->tiket = $tiket;
    }

    public function via($notifiable)
    {
        return ['mail', 'database']; // Notifikasi akan dikirim ke email dan database
    }

    public function toMail($notifiable)
{
    return (new MailMessage)
                ->subject('Tiket Telah Dieskalasi')
                ->line('Tiket "' . $this->tiket->judul . '" telah dieskalasi karena belum mendapat tanggapan.')
                ->action('Lihat Tiket', url('/tikets/' . $this->tiket->id))
                ->line('Segera tindak lanjuti tiket ini.');
}

    public function toDatabase($notifiable)
    {
        return [
            'tiket_id' => $this->tiket->id,
            'judul' => $this->tiket->judul,
            'message' => 'Karena belum mendapat tanggapan, tiket "' . $this->tiket->judul . '" telah dieskalasi',
        ];
    }
}
