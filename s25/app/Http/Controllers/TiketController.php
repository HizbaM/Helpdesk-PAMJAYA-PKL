<?php

namespace App\Http\Controllers;

use Log;
use Carbon\Carbon;
use App\Models\User;
use App\Models\Tiket;
use App\Models\Kategori;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Spatie\Permission\Models\Role;
use App\Http\Controllers\Controller;
use App\Notifications\TicketUpdated;
use App\Notifications\TanggapanTiket;
use Illuminate\Http\RedirectResponse;
use Spatie\Permission\Models\Permission;
use Illuminate\Support\Facades\Notification;
use Barryvdh\DomPDF\Facade\Pdf;

class TiketController extends Controller
{
    function __construct()
    {
        $this->middleware('permission:tiket-list|tiket-create|tiket-edit|tiket-delete', ['only' => ['index', 'show']]);
        $this->middleware('permission:tiket-create', ['only' => ['create', 'store']]);
        $this->middleware('permission:tiket-edit', ['only' => ['edit', 'update']]);
        $this->middleware('permission:tiket-delete', ['only' => ['destroy']]);
    }

    public function index(Request $request)
    {
        $query = Tiket::with('kategori');

        if ($request->has('tingkat_urgensi') && $request->tingkat_urgensi != '') {
            $query->where('tingkat_urgensi', $request->tingkat_urgensi);
        }

           // Check for status filter
           if ($request->has('status') && $request->status != '') {
            $status = trim($request->status); // Trim any extra spaces
            $query->where('status', $status);
        }
    

        if ($request->has('kategori_id') && $request->kategori_id != '') {
            $query->where('kategori_id', $request->kategori_id);
        }

        // Hitung total data terfilter
        $filteredCount = $query->count();

        $tikets = $query->paginate(10);
        $kategoris = Kategori::all();

        return view('tikets.index', compact('tikets', 'kategoris', 'filteredCount'))
        ->with('i', (request()->input('page', 1) - 1) * 10);
    }

    public function create()
    {
        $kategoris = Kategori::all();
        return view('tikets.create', compact('kategoris'));
    }

    public function store(Request $request)
    {
        $user = User::all();

        $validatedData = $request->validate([
            'nama' => 'required',
            'judul' => 'nullable',
            'image' => 'nullable|image|mimes:jpeg,png,jpg,gif,svg|max:4096',
            'kategori_id' => 'required|exists:kategoris,id',
            'tingkat_urgensi' => 'required|in:Ringan,Sedang,Berat',
            // Perbarui status untuk menyertakan 'Butuh Ditinjau', 'Ditinjau', dan 'Ditolak'
            'status' => 'required|in:Dibuka,Butuh Ditinjau,Ditinjau,Dikerjakan,Selesai,Ditolak',
            'description' => 'required',
            'troubleshoot' => 'nullable',
        ]);

        $tiket = new Tiket($validatedData);

        $tiket->user_id = auth()->id(); // Ini menambahkan user_id dari user yang sedang login


        if ($request->hasFile('image')) {
            $imagePath = $request->file('image')->store('images', 'public');
            $tiket->image = $imagePath;
        }

        $tiket->save();
      

        return redirect()->route('tikets.index')->with('success', 'Tiket berhasil dibuat!');
    }

    public function edit(Tiket $tiket)
    {
        $kategoris = Kategori::all();
        return view('tikets.edit', compact('tiket', 'kategoris'));
    }

    public function update(Request $request, Tiket $tiket)
    {
        $validatedData = $request->validate([
            'nama' => 'required',
            'judul' => 'nullable',
            'image' => 'nullable|image|mimes:jpeg,png,jpg,gif,svg|max:4096',
            'kategori_id' => 'required|exists:kategoris,id',
            'tingkat_urgensi' => 'required|in:Ringan,Sedang,Berat',
            // Perbarui status untuk menyertakan 'Butuh Ditinjau', 'Ditinjau', dan 'Ditolak'
            'status' => 'required|in:Dibuka,Butuh Ditinjau,Ditinjau,Dikerjakan,Selesai,Ditolak',
            'description' => 'required',
            'troubleshoot' => 'nullable',
        ]);

        $tiket->fill($validatedData);

        if ($request->hasFile('image')) {
            $imagePath = $request->file('image')->store('images', 'public');
            $tiket->image = $imagePath;
        }

        $tiket->save();

        Notification::send(User::all(), new TicketUpdated($tiket));

        return redirect()->route('tikets.index')->with('success', 'Tiket berhasil diperbarui!');
    }

    public function show(Tiket $tiket)
    {
        return view('tikets.show', compact('tiket'));
    }

    public function destroy(Tiket $tiket)
    {
        $tiket->delete();

        return redirect()->route('tikets.index')->with('success', 'Tiket berhasil dihapus!');
    }

    public function updateTanggapan(Request $request, $id)
    {
        // Temukan tiket berdasarkan ID
        $tiket = Tiket::findOrFail($id);
    
        // Validasi input tanggapan dan status
        $request->validate([
            'tanggapan' => 'required|string',
            'status' => 'required|in:Dibuka,Butuh Ditinjau,Ditinjau,Dikerjakan,Selesai,Ditolak',
        ]);
    
        // Update tanggapan dan status tiket
        $tiket->tanggapan = $request->input('tanggapan');
        $tiket->status = $request->input('status');
        $tiket->save();
    
        // Kirim notifikasi melalui email ke user yang membuat tiket
        if ($tiket->user) {
            // Kirim notifikasi ke user
            $tiket->user->notify(new TanggapanTiket($tiket));
        }
    
        // Redirect kembali dengan pesan sukses
        return redirect()->route('tikets.show', $tiket->id)
            ->with('success', 'Tanggapan dan status berhasil diperbarui.');
    }
    

    public function showTanggapi($id)
    {
        $tiket = Tiket::findOrFail($id);
        return view('tikets.tanggapi', compact('tiket'));
    }

    public function getTiketData(Request $request)
    {
        $query = Tiket::query();
        
        // Filter bulan dan tahun jika ada
        if ($request->has('bulan') && $request->has('tahun')) {
            $query->whereMonth('created_at', $request->bulan)
                  ->whereYear('created_at', $request->tahun);
        }

        // Hitung jumlah berdasarkan tingkat urgensi
        $ringan = $query->clone()->where('tingkat_urgensi', 'Ringan')->count();
        $sedang = $query->clone()->where('tingkat_urgensi', 'Sedang')->count();
        $berat = $query->clone()->where('tingkat_urgensi', 'Berat')->count();
    
        return response()->json([
            'ringan' => $ringan,
            'sedang' => $sedang,
            'berat' => $berat,
        ]);
    }

    public function getTiketData1(Request $request)
{
    $query = Tiket::query();

    // Filter bulan dan tahun jika ada
    if ($request->has('bulan') && $request->has('tahun')) {
        $query->whereMonth('created_at', $request->bulan)
              ->whereYear('created_at', $request->tahun);
    }

    // Hitung jumlah berdasarkan status tiket
    $statusCounts = [
        'dibuka' => $query->clone()->where('status', 'Dibuka')->count(),
        'butuh_ditinjau' => $query->clone()->where('status', 'Butuh Ditinjau')->count(),
        'ditinjau' => $query->clone()->where('status', 'Ditinjau')->count(),
        'dikerjakan' => $query->clone()->where('status', 'Dikerjakan')->count(),
        'selesai' => $query->clone()->where('status', 'Selesai')->count(),
        'ditolak' => $query->clone()->where('status', 'Ditolak')->count(),
    ];

    return response()->json($statusCounts);
}
    public function getTiketDataByKategori(Request $request)
    {
        $query = Tiket::query();

        // Filter bulan dan tahun jika ada
        if ($request->has('bulan') && $request->has('tahun')) {
            $query->whereMonth('created_at', $request->bulan)
                  ->whereYear('created_at', $request->tahun);
        }

        // Kelompokkan data berdasarkan kategori
        $kategoriData = $query->select('kategori_id', DB::raw('count(*) as total'))
                              ->groupBy('kategori_id')
                              ->get();

        // Map nama kategori ke ID dan total
        $kategoriSummary = $kategoriData->map(function ($data) {
            $kategori = Kategori::find($data->kategori_id);
            return [
                'kategori' => $kategori ? $kategori->nama : 'Tidak diketahui',
                'total' => $data->total,
            ];
        });

        return response()->json($kategoriSummary);
    }

}