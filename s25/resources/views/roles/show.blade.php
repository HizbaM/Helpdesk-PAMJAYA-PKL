<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Detail Role: ') . $role->name }}
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 bg-white border-b border-gray-200 text-center">

                    <!-- Tampilkan pesan sukses -->
                    @if(session('success'))
                        <div class="alert alert-success mb-4">{{ session('success') }}</div>
                    @endif

                    <div class="mb-4">
                        <h3 class="text-lg font-semibold">Informasi Role</h3>
                        <p><strong>Nama Role:</strong> {{ $role->name }}</p>
                        <p><strong>Deskripsi:</strong> {{ $role->description ?? 'Tidak ada deskripsi' }}</p>
                    </div>

                    <div class="flex justify-center mb-4">
                        @can('role-edit')
                        <a href="{{ route('roles.edit', $role->id) }}" class="bg-yellow-500 hover:bg-yellow-600 text-white py-2 px-4 rounded-full transition-all duration-200 mx-2">
                            <i class="fa-solid fa-pen-to-square"></i> Edit Role
                        </a>
                        @endcan

                        @can('role-delete')
                        <form method="POST" action="{{ route('roles.destroy', $role->id) }}" style="display:inline">
                            @csrf
                            @method('DELETE')
                            <button type="submit" class="bg-red-500 hover:bg-red-600 text-white py-2 px-4 rounded-full transition-all duration-200 mx-2">
                                <i class="fa-solid fa-trash"></i> Delete Role
                            </button>
                        </form>
                        @endcan
                    </div>

                    <div class="overflow-x-auto">
                        <h3 class="text-lg font-semibold mt-6">Akses yang Dimiliki</h3>
                        <table class="min-w-full mx-auto table-auto text-center">
                            <thead class="bg-gray-100">
                                <tr>
                                    <th class="px-4 py-2">No</th>
                                    <th class="px-4 py-2">Aksi</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($role->permissions as $key => $permission)
                                <tr class="border-b">
                                    <td class="px-4 py-2">{{ ++$key }}</td>
                                    <td class="px-4 py-2">{{ $permission->name }}</td>
                                </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>

                    <div class="mt-6">
                        <a href="{{ route('roles.index') }}" class="inline-block bg-blue-500 hover:bg-blue-600 text-white py-2 px-4 rounded-full transition-all duration-200">
                            <i class="fa-solid fa-arrow-left"></i> Kembali ke Daftar Role
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</x-app-layout>
