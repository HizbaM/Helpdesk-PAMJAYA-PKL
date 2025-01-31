<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;

class ArtikelController extends BaseController
{
    use AuthorizesRequests, ValidatesRequests;

    public function index()
    {
        $user = User::find(1);
        return view('artikel.index', compact('user'));
    }
}
