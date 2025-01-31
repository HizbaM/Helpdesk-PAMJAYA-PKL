<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Daftar Tiket') }}
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 bg-white border-b border-gray-200">

                    <div class="mb-4">
                        <p class="text-gray-700 text-sm">
                            Total tiket yang ditemukan: {{ $filteredCount }}
                        </p>
                    </div>
                    
                    <div class="mb-4">
                        <form action="{{ route('tikets.index') }}" method="GET" class="flex items-center">
                            <!-- Filter Tingkat Urgensi -->
                            <label for="tingkat_urgensi" class="mr-2 text-sm font-medium text-gray-700">Filter Tingkat Urgensi:</label>
                            <select name="tingkat_urgensi" id="tingkat_urgensi" class="mt-1 block w-1/4 rounded-md border-gray-300 shadow-sm focus:border-indigo-500 focus:ring-indigo-500 sm:text-sm">
                                <option value="">Semua</option>
                                <option value="Ringan" {{ request('tingkat_urgensi') == 'Ringan' ? 'selected' : '' }}>Ringan</option>
                                <option value="Sedang" {{ request('tingkat_urgensi') == 'Sedang' ? 'selected' : '' }}>Sedang</option>
                                <option value="Berat" {{ request('tingkat_urgensi') == 'Berat' ? 'selected' : '' }}>Berat</option>
                            </select>
                    
                            <!-- Filter Status -->
                            <label for="status" class="mr-2 text-sm font-medium text-gray-700 ml-4">Filter Status:</label>
                            <select name="status" id="status" class="mt-1 block w-1/4 rounded-md border-gray-300 shadow-sm focus:border-indigo-500 focus:ring-indigo-500 sm:text-sm">
                                <option value="">Semua</option>
                                <option value="Dibuka" {{ request('status') == 'Dibuka' ? 'selected' : '' }}>Dibuka</option>
                                <option value="Butuh Ditinjau" {{ request('status') == 'Butuh Ditinjau' ? 'selected' : '' }}>Butuh Ditinjau</option>
                                <option value="Ditinjau" {{ request('status') == 'Ditinjau' ? 'selected' : '' }}>Ditinjau</option>
                                <option value="Dikerjakan" {{ request('status') == 'Dikerjakan' ? 'selected' : '' }}>Dikerjakan</option>
                                <option value="Selesai" {{ request('status') == 'Selesai' ? 'selected' : '' }}>Selesai</option>
                                <option value="Ditolak" {{ request('status') == 'Ditolak' ? 'selected' : '' }}>Ditolak</option>
                            </select>
                    
                            <!-- Filter Kategori -->
                            <label for="kategori_id" class="mr-2 text-sm font-medium text-gray-700 ml-4">Filter Kategori:</label>
                            <select name="kategori_id" id="kategori_id" class="mt-1 block w-1/4 rounded-md border-gray-300 shadow-sm focus:border-indigo-500 focus:ring-indigo-500 sm:text-sm">
                                <option value="">Semua</option>
                                @foreach ($kategoris as $kategori)
                                    <option value="{{ $kategori->id }}" {{ request('kategori_id') == $kategori->id ? 'selected' : '' }}>{{ $kategori->nama }}</option>
                                @endforeach
                            </select>
                    
                            <!-- Filter Button -->
                            <button type="submit" class="ml-2 bg-blue-500 hover:bg-blue-600 text-white py-2 px-4 rounded">Filter</button>
                            
                           
                            <!-- Search Field -->
                            <label for="search" class="mr-2 text-sm font-medium text-gray-700 ml-4">Cari Tiket:</label>
                            <input type="text" name="search" id="search" value="{{ request('search') }}" class="mt-1 block w-1/4 rounded-md border-gray-300 shadow-sm focus:border-indigo-500 focus:ring-indigo-500 sm:text-sm" placeholder="Nama atau Judul">
                        </form>
                    </div>
                    @if(!Auth::user()->hasRole('Pengguna Akhir'))
                    <a href="{{ route('generate-pdf', request()->all()) }}" 
                        class="mb-4 inline-block bg-green-500 hover:bg-green-600 text-white py-2 px-6 rounded-full transition-all duration-200">
                        Generate PDF
                     </a>
                     
                    @endif
                    

                    

                    @if(session('success'))
                        <div class="alert alert-success mb-4">{{ session('success') }}</div>
                    @endif

                    <a href="{{ route('tikets.create') }}" class="mb-4 inline-block bg-blue-500 hover:bg-blue-600 text-white py-2 px-6 rounded-full transition-all duration-200">
                        Buat Tiket Baru
                    </a>

                    <div class="overflow-x-auto">
                        <table class="min-w-full table-auto">
                            <thead class="bg-gray-100">
                                <tr>
                                    <th class="px-4 py-2">Nama</th>
                                    <th class="px-4 py-2">Judul</th>
                                    <th class="px-4 py-2">Kategori</th>
                                    <th class="px-4 py-2">Tingkat Urgensi</th>
                                    <th class="px-4 py-2">Status</th>
                                    <th class="px-4 py-2">Deskripsi</th>
                                    <th class="px-4 py-2">Tanggapan</th>
                                    <th class="px-4 py-2">Troubleshoot</th>
                                    <th class="px-4 py-2">Image</th>
                                    <th class="px-4 py-2">Dibuat</th> 
                                    <th class="px-4 py-2">Aksi</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach($tikets as $tiket)
                                    <tr class="border-b">
                                        <td class="px-4 py-2">{{ $tiket->nama }}</td>
                                        <td class="px-4 py-2">{{ $tiket->judul ?? 'Tidak ada judul' }}</td>
                                        <td class="px-4 py-2">{{ $tiket->kategori->nama ?? 'N/A' }}</td>
                                        <td class="px-4 py-2 {{ $tiket->tingkat_urgensi === 'Ringan' ? 'bg-blue-300' : ($tiket->tingkat_urgensi === 'Sedang' ? 'bg-yellow-300' : 'bg-red-300') }} font-bold rounded text-center">{{ $tiket->tingkat_urgensi }}</td>
                                        <td class="px-4 py-2 {{ $tiket->status === 'Dibuka' ? 'bg-blue-300' : ($tiket->status === 'Dikerjakan' ? 'bg-yellow-300' : ($tiket->status === 'Selesai' ? 'bg-green-300' : 'bg-red-300')) }} text-center rounded">
                                            <strong>{{ $tiket->status }}</strong>
                                        </td>
                                        <td class="px-4 py-2">{{ Str::limit($tiket->description, 50) }}</td>
                                        <td class="px-4 py-2">{!! $tiket->tanggapan ?? '<em style="color: green;">-</em>' !!}</td>
                                        <td class="px-4 py-2">{!! $tiket->troubleshoot ?? '<em style="color: green;">-Belum ada troubleshoot-</em>' !!}</td>
                                        
                                        <td class="px-4 py-2">
                                            @if($tiket->image)
                                            <img src="{{ asset('storage/'.$tiket->image) }}" width="50">
                                            @else
                                                Tidak ada gambar
                                            @endif
                                        </td>
                                        <td class="px-4 py-2">{{ $tiket->created_at->diffForHumans() }}</td>
                                        <td class="px-4 py-2">
                                            <div class="flex justify-around items-center space-x-2">
                                                @if(!Auth::user()->hasRole('Staff IT'))
                                                <a class="bg-blue-500 hover:bg-blue-600 text-white py-1 px-3 rounded-full transition-all duration-200 inline-block" href="{{ route('tikets.show', $tiket->id) }}">
                                                    <i class="fa-solid fa-list"></i> Show
                                                </a>
                                                @endif
                                        
                                                @if(!Auth::user()->hasRole('Pengguna Akhir'))
                                                <a class="bg-blue-500 hover:bg-blue-600 text-white py-1 px-3 rounded-full transition-all duration-200 inline-block" href="{{ route('tikets.tanggapi', $tiket->id) }}">
                                                    <i class="fa-solid fa-list"></i> Tanggapi
                                                </a>
                                                @endif
                                        
                                                @if(!Auth::user()->hasRole('Pengguna Akhir'))
                                                <a href="{{ route('tikets.edit', $tiket->id) }}" class="bg-yellow-500 hover:bg-yellow-600 text-white py-1 px-2 rounded">
                                                    Edit
                                                </a>
                                                <form action="{{ route('tikets.destroy', $tiket->id) }}" method="POST" onsubmit="return confirm('Apakah Anda yakin ingin menghapus tiket ini?');">
                                                    @csrf
                                                    @method('DELETE')
                                                    <button type="submit" class="bg-red-500 hover:bg-red-600 text-white py-1 px-2 rounded">
                                                        Hapus
                                                    </button>
                                                </form>
                                                @endif
                                            </div>
                                        </td>
                                        
                                    </tr>
                                    @if($tiket->over_one_hour)
                                        <tr>
                                            <td colspan="11" class="bg-yellow-200 text-center py-2">
                                                Tiket ini sudah lebih dari 1 jam sejak dibuat.
                                            </td>
                                        </tr>
                                    @endif
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                    
                    <!-- Pagination -->
                    <div class="mt-4">
                        {{ $tikets->links() }}
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        document.getElementById('search').addEventListener('input', function() {
            const searchTerm = this.value.toLowerCase();
            const rows = document.querySelectorAll('tbody tr'); // Seleksi semua baris dalam tbody
    
            rows.forEach(row => {
                const nameCell = row.cells[0].textContent.toLowerCase(); // Kolom Nama
                const titleCell = row.cells[1].textContent.toLowerCase(); // Kolom Judul
    
                // Cek apakah searchTerm ada di nama atau judul
                if (nameCell.includes(searchTerm) || titleCell.includes(searchTerm)) {
                    row.style.display = ''; // Tampilkan baris
                } else {
                    row.style.display = 'none'; // Sembunyikan baris
                }
            });
        });
    </script>
    
</x-app-layout>
