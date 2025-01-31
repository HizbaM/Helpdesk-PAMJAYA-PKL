<?php

namespace App\Console\Commands;

use Carbon\Carbon;
use App\Models\User;
use App\Models\Tiket;
use App\Mail\TiketDieskalasiMail;
use Illuminate\Support\Facades\Mail;
use App\Notifications\TiketDieskalasi;
use Illuminate\Support\Facades\Notification;
use Illuminate\Console\Command; // Ubah ke namespace Command yang benar

class UpdateUrgensiCommand extends Command
{
    protected $signature = 'tiket:update-urgensi';
    protected $description = 'Update tingkat urgensi tiket setelah 1 menit';

    public function handle()
    {
        // Ambil tiket-tiket yang statusnya perlu diubah
        $tikets = Tiket::where('status', '!=', 'Butuh Ditinjau')
                       ->where('status', '!=', 'Selesai')
                       ->where('status', '!=', 'Dikerjakan')
                       ->where('status', '!=', 'Ditolak')
                       ->where('created_at', '<', now()->subHours(2))
                       ->get();
    
        foreach ($tikets as $tiket) {
            // Jika tiket belum ada tanggapan
            if (empty($tiket->tanggapan)) {
                // Ubah status ke 'Butuh Ditinjau'
                $tiket->status = 'Butuh Ditinjau';
                $tiket->save();
    
                // Ambil semua user yang memiliki role 'Manager'
                $managers = User::role('Manager')->get();
    
                // Kirim notifikasi email dan database hanya ke user dengan role 'Manager'
                Notification::send($managers, new TiketDieskalasi($tiket));

                // Kirim email ke semua Manager
                foreach ($managers as $manager) {
                    Mail::to($manager->email)->send(new TiketDieskalasiMail($tiket));
                }
                
                // Kirim notifikasi ke semua user yang memiliki role "Admin" atau "Manager"
                $adminAndManagers = User::whereHas('roles', function ($query) {
                    $query->whereIn('name', ['Admin', 'Manager']);
                })->get();

                // Kirimkan notifikasi ke Admin dan Manager
                foreach ($adminAndManagers as $adminOrManager) {
                    // Gunakan notifikasi TiketDieskalasi untuk Admin dan Manager
                    $adminOrManager->notify(new TiketDieskalasi($tiket));

                    // Kirimkan email ke Admin dan Manager
                    Mail::to($adminOrManager->email)->send(new TiketDieskalasiMail($tiket));
                }
            }
        }
    
        $this->info('Status tiket diperbarui dan notifikasi dikirim ke Manager dan Admin.');
    }
}
