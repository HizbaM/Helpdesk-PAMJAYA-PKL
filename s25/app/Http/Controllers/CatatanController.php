<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Catatan;

class CatatanController extends Controller
{
    // Display a listing of the resource
    public function index()
    {
        $catatans = Catatan::all();
        return view('catatan.index', compact('catatans'));
    }

    // Show the form for creating a new resource
    public function create()
    {
        return view('catatan.create');
    }

    // Store a newly created resource in storage
    public function store(Request $request)
    {
        $request->validate([
            'judul' => 'required|string|max:255',
            'isi' => 'nullable|string',
        ]);

        Catatan::create($request->all());
        return redirect()->route('catatans.index')->with('success', 'Catatan berhasil ditambahkan');
    }

    // Display the specified resource
    public function show(Catatan $catatan)
    {
        return view('catatan.show', compact('catatan'));
    }

    // Show the form for editing the specified resource
    public function edit(Catatan $catatan)
    {
        return view('catatan.edit', compact('catatan'));
    }

    // Update the specified resource in storage
    public function update(Request $request, Catatan $catatan)
    {
        $request->validate([
            'judul' => 'required|string|max:255',
            'isi' => 'nullable|string',
        ]);

        $catatan->update($request->all());
        return redirect()->route('catatans.index')->with('success', 'Catatan berhasil diperbarui');
    }

    // Remove the specified resource from storage
    public function destroy(Catatan $catatan)
    {
        $catatan->delete();
        return redirect()->route('catatans.index')->with('success', 'Catatan berhasil dihapus');
    }
}
