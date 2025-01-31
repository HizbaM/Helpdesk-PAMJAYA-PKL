<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Buat Tiket Baru') }}
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 bg-white border-b border-gray-200">
                    <form action="{{ route('tikets.store') }}" method="POST" enctype="multipart/form-data" class="space-y-6">
                        @csrf

                        <!-- Nama -->
                        <div>
                            <label for="nama" class="block text-sm font-medium text-gray-700">Nama</label>
                            <input type="text" name="nama" id="nama" value="{{ old('nama') }}" required class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-indigo-500 focus:ring-indigo-500 sm:text-sm">
                        </div>

                            <!-- Judul -->
                            <div>
                                <label for="judul" class="block text-sm font-medium text-gray-700">Judul</label>
                                <input type="text" name="judul" id="judul" value="{{ old('judul') }}" required class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-indigo-500 focus:ring-indigo-500 sm:text-sm">
                            </div>
                            
                        
                        <!-- Kategori -->
                        <div class="form-group">
                            <label for="kategori_id">Kategori</label>
                            <select name="kategori_id" id="kategori_id" class="form-control">
                                @foreach($kategoris as $kategori)
                                    <option value="{{ $kategori->id }}" {{ old('kategori_id', $tiket->kategori_id ?? '') == $kategori->id ? 'selected' : '' }}>
                                        {{ $kategori->nama }}
                                    </option>
                                @endforeach
                            </select>
                        </div>

                        <!-- Tingkat Urgensi -->
                        <div>
                            <label for="tingkat_urgensi" class="block text-sm font-medium text-gray-700">Tingkat Urgensi</label>
                            <select name="tingkat_urgensi" id="tingkat_urgensi" required class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-indigo-500 focus:ring-indigo-500 sm:text-sm">
                                <option value="Ringan" {{ old('tingkat_urgensi') == 'Ringan' ? 'selected' : '' }}>Ringan</option>
                                <option value="Sedang" {{ old('tingkat_urgensi') == 'Sedang' ? 'selected' : '' }}>Sedang</option>
                                <option value="Berat" {{ old('tingkat_urgensi') == 'Berat' ? 'selected' : '' }}>Berat</option>
                            </select>
                        </div>

                        <!-- Status -->
                        <div>
                            <label for="status" class="block text-sm font-medium text-gray-700">Status</label>
                            <select name="status" id="status" required class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-indigo-500 focus:ring-indigo-500 sm:text-sm">
                                <option value="Dibuka" {{ old('status') == 'Dibuka' ? 'selected' : '' }}>Dibuka</option>
                                @role('Administrator|Staff IT') <!-- Cek jika role adalah Administrator atau Staff IT -->
                                <option value="Dikerjakan" {{ old('status') == 'Dikerjakan' ? 'selected' : '' }}>Dikerjakan</option>
                                <option value="Selesai" {{ old('status') == 'Selesai' ? 'selected' : '' }}>Selesai</option>
                                @endrole 
                            </select>
                        </div>

                        <!-- Description -->
                        <div>
                            <label for="description" class="block text-sm font-medium text-gray-700">Deskripsi</label>
                            <textarea name="description" id="description" rows="3" required class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-indigo-500 focus:ring-indigo-500 sm:text-sm">{{ old('description') }}</textarea>
                        </div>

                        <!-- Troubleshoot -->
                       @role('Administrator|Staff IT') <!-- Cek jika role adalah Administrator atau Staff IT -->
                        <div>
                            <label for="troubleshoot" class="block text-sm font-medium text-gray-700">Troubleshoot (Opsional)</label>
                            <textarea name="troubleshoot" id="troubleshoot" rows="3" class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-indigo-500 focus:ring-indigo-500 sm:text-sm">{{ old('troubleshoot') }}</textarea>
                        </div>
                        @endrole
                        <!-- Image -->
                        <div>
                            <label for="image" class="block text-sm font-medium text-gray-700">Unggah Gambar (Opsional)</label>
                            <input type="file" name="image" id="image" class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-indigo-500 focus:ring-indigo-500 sm:text-sm">
                        </div>

                        <!-- Tombol -->
                        <div class="flex justify-end">
                            <a href="{{ route('tikets.index') }}" class="bg-gray-500 hover:bg-gray-600 text-white py-2 px-4 rounded mr-2">
                                Batal
                            </a>
                            <button type="submit" class="bg-blue-500 hover:bg-blue-600 text-white py-2 px-4 rounded">
                                Simpan Tiket
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</x-app-layout>
