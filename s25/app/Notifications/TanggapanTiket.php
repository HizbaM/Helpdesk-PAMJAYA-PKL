<?php

namespace App\Notifications;

use Illuminate\Bus\Queueable;
use Illuminate\Notifications\Notification;
use Illuminate\Notifications\Messages\MailMessage;

class TanggapanTiket extends Notification
{
    use Queueable;
    protected $tiket;

    public function __construct($tiket)
    {
        $this->tiket = $tiket;
    }

    // Mengirim via mail
    public function via($notifiable)
    {
        return ['mail'];
    }

    // Notifikasi via email
    public function toMail($notifiable)
    {
        return (new MailMessage)
                    ->subject('Tanggapan Baru untuk Tiket Anda')
                    ->greeting('Halo, ' . $notifiable->name)
                    ->line('Tiket Anda dengan judul: "' . $this->tiket->judul . '" telah mendapatkan tanggapan.')
                    ->line('Tanggapan: ' . $this->tiket->tanggapan)
                    ->line('Status saat ini: ' . $this->tiket->status)
                    ->action('Lihat Tiket', route('tikets.show', $this->tiket->id))
                    ->line('Terima kasih telah menggunakan layanan kami!');
    }
}
