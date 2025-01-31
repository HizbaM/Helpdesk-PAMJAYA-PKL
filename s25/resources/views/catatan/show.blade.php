<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Detail Catatan') }}
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-4xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg p-6">
                
                <!-- Back Button -->
                <a href="{{ route('catatans.index') }}" class="mb-4 inline-block text-gray-500 hover:text-gray-700">
                    &larr; Kembali ke Catatan
                </a>
                
                <!-- Note Details -->
                <div class="mt-4">
                    <h3 class="text-2xl font-semibold text-gray-800 mb-4">{{ $catatan->judul }}</h3>
                    <p class="text-gray-700 leading-relaxed whitespace-pre-line">{{ $catatan->isi }}</p>
                </div>
                
                <!-- Actions -->
                <div class="mt-6 flex justify-end space-x-4">
                    <a href="{{ route('catatans.edit', $catatan->id) }}" class="bg-yellow-500 hover:bg-yellow-600 text-white py-2 px-4 rounded">
                        Edit
                    </a>
                    <form action="{{ route('catatans.destroy', $catatan->id) }}" method="POST" onsubmit="return confirm('Apakah Anda yakin ingin menghapus catatan ini?');">
                        @csrf
                        @method('DELETE')
                        <button type="submit" class="bg-red-500 hover:bg-red-600 text-white py-2 px-4 rounded">
                            Hapus
                        </button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</x-app-layout>
