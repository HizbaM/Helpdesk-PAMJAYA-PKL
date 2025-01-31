<?php

namespace App\Http\Controllers\Auth;

use App\Models\User;
use Illuminate\View\View;
use Illuminate\Http\Request;
use Illuminate\Validation\Rules;
use Spatie\Permission\Models\Role;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use App\Notifications\WelcomeNewUser;
use Illuminate\Http\RedirectResponse;
use Illuminate\Auth\Events\Registered;
use App\Notifications\NotifyAdminOfNewUser;
use Illuminate\Support\Facades\Notification;

class RegisteredUserController extends Controller
{
    /**
     * Display the registration view.
     */
    public function create(): View
    {
        return view('auth.register');
    }

    /**
     * Handle an incoming registration request.
     *
     * @throws \Illuminate\Validation\ValidationException
     */
    public function store(Request $request)
    {
        // Validasi input dari request
        $request->validate([
            'name' => ['required', 'string', 'max:255'],
            'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
            'password' => ['required', 'string', 'min:8', 'confirmed'],
        ]);

        // Buat user baru
        $user = User::create([
            'name' => $request->name,
            'email' => $request->email,
            'password' => Hash::make($request->password),
        ]);

        // Berikan role "Pengguna Akhir" secara otomatis
    $role = Role::where('name', 'Pengguna Akhir')->first(); // Pastikan role ini sudah ada di database
    if ($role) {
        $user->assignRole($role);
    }

    // Trigger event Registered
    event(new Registered($user));

    // Login user
    auth()->login($user);

    // Kirim notifikasi ke semua user yang memiliki role "Admin" atau "Manager"
    $adminAndManagers = User::whereHas('roles', function ($query) {
        $query->whereIn('name', ['Admin', 'Manager']);
    })->get();

    foreach ($adminAndManagers as $adminOrManager) {
        $adminOrManager->notify(new NotifyAdminOfNewUser($user));
    }

        //call notification
        $user->notify(new WelcomeNewUser());

    // Redirect ke dashboard
    return redirect()->route('dashboard');
}
}
