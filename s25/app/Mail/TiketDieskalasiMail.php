<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class TiketDieskalasiMail extends Mailable
{
    use Queueable, SerializesModels;

    public $tiket;

    public function __construct($tiket)
    {
        $this->tiket = $tiket;
    }

    public function build()
    {
        return $this->view('emails.tiket_dieskalasi')
                    ->subject('Tiket Dieskalasi')
                    ->with(['tiket' => $this->tiket]);
    }
}