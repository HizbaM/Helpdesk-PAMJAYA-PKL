<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Catatan Saya') }}
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg p-6">
                <a href="{{ route('catatans.create') }}" class="mb-4 inline-block bg-blue-500 hover:bg-blue-600 text-white py-2 px-4 rounded-full">
                    Buat Catatan Baru
                </a>
                
                <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6 mt-4">
                    @forelse ($catatans as $catatan)
                        <div class="bg-gray-100 p-4 rounded-lg shadow-lg">
                            <h3 class="text-lg font-semibold mb-2 text-gray-800">
                                {{ $catatan->judul }}
                            </h3>
                            <p class="text-sm text-gray-600 mb-4">
                                {{ Str::limit($catatan->isi, 100, '...') }}
                            </p>
                            <div class="flex justify-between items-center">
                                <a href="{{ route('catatans.show', $catatan->id) }}" class="text-blue-500 hover:text-blue-600">Lihat</a>
                                <div class="flex space-x-2">
                                    <a href="{{ route('catatans.edit', $catatan->id) }}" class="text-yellow-500 hover:text-yellow-600">Edit</a>
                                    <form action="{{ route('catatans.destroy', $catatan->id) }}" method="POST" onsubmit="return confirm('Apakah Anda yakin ingin menghapus catatan ini?');">
                                        @csrf
                                        @method('DELETE')
                                        <button type="submit" class="text-red-500 hover:text-red-600">Hapus</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    @empty
                        <p class="text-gray-500 text-center col-span-3">Belum ada catatan. Tambahkan catatan baru!</p>
                    @endforelse
                </div>

                <!-- Pagination -->
                <div class="mt-6">

                </div>
            </div>
        </div>
    </div>
</x-app-layout>
