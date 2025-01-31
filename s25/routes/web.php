<?php

use App\Models\Tiket;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\RoleController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\TiketController;
use App\Http\Controllers\ArtikelController;
use App\Http\Controllers\CatatanController;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\TiketPDFController;
use App\Http\Controllers\NotificationController;

Route::get('/', function () {
    return view('welcome');
});

Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});

Route::group(['middleware' => ['auth']], function() {
    Route::resource('roles', RoleController::class);
    Route::resource('users', UserController::class);
    Route::resource('tikets', TiketController::class);
    Route::get('/tikets/pdf', [TiketPDFController::class, 'generatePDF'])->name('tikets.pdf');
    Route::get('generate-pdf', [TiketPDFController::class, 'generatePDF'])->name('generate-pdf');
    Route::resource('artikel', ArtikelController::class);
    Route::resource('catatans', CatatanController::class);
    Route::post('/notifications/read/{id}', [NotificationController::class, 'markAsRead'])->name('markNotificationAsRead');
    Route::post('/notifications/read', [NotificationController::class, 'markAsRead'])->name('notifications.read');
    Route::get('tikets/{id}/tanggapi', [TiketController::class, 'showTanggapi'])->name('tikets.tanggapi');
    Route::put('/tikets/{tiket}/tanggapan', [TiketController::class, 'updateTanggapan'])->name('tikets.updateTanggapan');
    Route::get('/notifications', [NotificationController::class, 'index'])->name('notifications.index');
});



Route::get('/api/tiket-data', [TiketController::class, 'getTiketData']);

Route::get('/api/tiket-data1', [TiketController::class, 'getTiketData1']);
Route::get('/api/tiket-data-by-kategori', [TiketController::class, 'getTiketDataByKategori']);
Route::post('/mark-all-notifications-as-read', function () {
    Auth::user()->unreadNotifications->markAsRead();
    return response()->json(['message' => 'All notifications marked as read']);
})->name('markAllNotificationsAsRead');




require __DIR__.'/auth.php';
