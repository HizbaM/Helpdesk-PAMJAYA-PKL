<?php

namespace App\Http\Controllers;


use App\Models\Tiket;
use Illuminate\Http\Request;
use Barryvdh\DomPDF\Facade\Pdf;

class TiketPDFController extends Controller
{

    public function getCategoryName($kategori_id)
    {
        $categories = [
            1 => 'IT Support',
            2 => 'Network Issue',
            3 => 'Hardware Issue',
            4 => 'Software Issue'
        ];
    
        return $categories[$kategori_id] ?? 'Unknown';
    }
    public function generatePDF(Request $request)
    {
        // Ambil data berdasarkan filter
        $query = Tiket::query();
    
        if ($request->filled('tingkat_urgensi')) {
            $query->where('tingkat_urgensi', $request->tingkat_urgensi);
        }
    
        if ($request->filled('status')) {
            $query->where('status', $request->status);
        }
    
        if ($request->filled('kategori_id')) {
            $query->where('kategori_id', $request->kategori_id);
        }
    
        if ($request->filled('search')) {
            $query->where(function ($q) use ($request) {
                $q->where('nama', 'like', '%' . $request->search . '%')
                  ->orWhere('judul', 'like', '%' . $request->search . '%');
            });
        }
    
        $tikets = $query->get();
    
        // Generate PDF dengan data yang difilter
        $pdf = PDF::loadView('myPDF',compact('tikets'))->setPaper('a4', 'landscape');
    
        return $pdf->download('laporan_tiket.pdf');
    }

    
}
