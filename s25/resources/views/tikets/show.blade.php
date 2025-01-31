<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Detail Tiket') }}: {{ $tiket->judul ?? 'Tidak ada judul' }}
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 bg-white border-b border-gray-200">
                    <div class="mb-4">
                        <a href="{{ route('tikets.index') }}" class="inline-block bg-blue-500 hover:bg-blue-600 text-white py-2 px-4 rounded">
                            Kembali ke Daftar Tiket
                        </a>
                    </div>

                    <div class="space-y-4">
                        <h3 class="text-lg font-bold">Detail Tiket</h3>
                        <p><strong>Nama:</strong> {{ $tiket->nama }}</p>
                        <p><strong>Judul:</strong> {{ $tiket->judul ?? 'Tidak ada judul' }}</p>
                        <p><strong>Tingkat Urgensi:</strong> {{ $tiket->tingkat_urgensi }}</p>
                        <p><strong>Kategori:</strong> {{ $tiket->kategori->nama ?? 'N/A' }}</p>
                        <p><strong>Status:</strong> {{ $tiket->status }}</p>
                        <p><strong>Deskripsi:</strong> {{ $tiket->description }}</p>
                        <p><strong>Tanggapan:</strong> {{ $tiket->tanggapan }}</p>
                        <p><strong>Troubleshoot:</strong> {{ $tiket->troubleshoot ?? 'Belum ada troubleshoot' }}</p>

                        @if($tiket->image)
                            <div>
                                <strong>Gambar:</strong>
                                <img src="{{ asset('storage/'.$tiket->image) }}" alt="Gambar Tiket" class="mt-2 w-1/2 max-w-md rounded shadow">
                            </div>
                        @else
                            <p><strong>Gambar:</strong> Tidak ada gambar</p>
                        @endif
                    </div>

                    <div class="mt-6">
                        @if(!Auth::user()->hasRole('Pengguna Akhir'))
                        <form action="{{ route('tikets.destroy', $tiket->id) }}" method="POST" onsubmit="return confirm('Apakah Anda yakin ingin menghapus tiket ini?');">
                            @csrf
                            @method('DELETE')
                            <a href="{{ route('tikets.edit', $tiket->id) }}" class="bg-yellow-500 hover:bg-yellow-600 text-white py-2 px-4 rounded">
                                Edit
                            </a>
                            <button type="submit" class="bg-red-500 hover:bg-red-600 text-white py-2 px-4 rounded ml-2">
                                Hapus
                            </button>
                        </form>
                        @endif
                    </div>
                </div>
            </div>
        </div>
    </div>
</x-app-layout>
