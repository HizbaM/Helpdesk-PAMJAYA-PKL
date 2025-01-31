<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class NotificationController extends Controller
{
    public function markAsRead($id)
    {
        $notification = auth()->user()->notifications()->find($id);

        if ($notification) {
            $notification->markAsRead();
        }

        return redirect()->back();
    }

    
    public function index()
    {
        // Mengambil semua notifikasi dari pengguna yang login
        $notifications = auth()->user()->notifications;

        // Mengembalikan view dan mengirimkan data notifikasi
        return view('notifications.index', compact('notifications'));
    }
}