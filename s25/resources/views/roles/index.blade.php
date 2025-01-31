<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Daftar Role') }}
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

                    <!-- Tombol Buat Role Baru -->
                    @can('role-create')
                    <a href="{{ route('roles.create') }}" class="mb-4 inline-block bg-blue-500 hover:bg-blue-600 text-white py-2 px-6 rounded-full transition-all duration-200">
                        Buat Role Baru
                    </a>
                    @endcan

                    <div class="overflow-x-auto">
                        <table class="min-w-full mx-auto table-auto text-center">
                            <thead class="bg-gray-100">
                                <tr>
                                    <th class="px-4 py-2">No</th>
                                    <th class="px-4 py-2">Nama Role</th>
                                    <th class="px-4 py-2">Aksi</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($roles as $key => $role)
                                <tr class="border-b">
                                    <td class="px-4 py-2">{{ ++$i }}</td>
                                    <td class="px-4 py-2">
                                        @if($role->name == 'Admin')
                                            <label class="bg-red-500 text-white py-1 px-3 rounded-full flex items-center">
                                                {{ $role->name }}
                                                <img src="{{ asset('admin.png') }}" alt="{{ $role->name }}" class="ml-2 w-4 h-4">
                                            </label>
                                        @elseif($role->name == 'Staff IT')
                                            <label class="bg-blue-500 text-white py-1 px-3 rounded-full flex items-center">
                                                {{ $role->name }}
                                                <img src="{{ asset('tool.png') }}" alt="{{ $role->name }}" class="ml-2 w-4 h-4">
                                            </label>
                                        @elseif($role->name == 'Manager')
                                            <label class="bg-yellow-600 text-white py-1 px-3 rounded-full flex items-center">
                                                {{ $role->name }}
                                                <img src="{{ asset('crown.png') }}" alt="{{ $role->name }}" class="ml-2 w-4 h-4">
                                            </label>
                                        @else
                                            <label class="bg-green-500 text-white py-1 px-3 rounded-full flex items-center">
                                                {{ $role->name }}
                                                <img src="{{ asset('user.png') }}" alt="{{ $role->name }}" class="ml-2 w-4 h-4">
                                            </label>
                                        @endif
                                    </td>
                                    <td class="px-4 py-2">
                                        <a class="bg-blue-500 hover:bg-blue-600 text-white py-1 px-3 rounded-[6px] transition-all duration-200 inline-block" href="{{ route('roles.show', $role->id) }}">
                                            <i class="fa-solid fa-list"></i> Show
                                        </a>
                                        @can('role-edit')
                                            <a class="bg-yellow-500 hover:bg-yellow-600 text-white py-1 px-3 rounded-[6px] transition-all duration-200 inline-block mx-1" href="{{ route('roles.edit', $role->id) }}">
                                                <i class="fa-solid fa-pen-to-square"></i> Edit
                                            </a>
                                        @endcan
                                        @can('role-delete')
                                        <form method="POST" action="{{ route('roles.destroy', $role->id) }}" style="display:inline">
                                            @csrf
                                            @method('DELETE')
                                            <button type="submit" class="bg-red-500 hover:bg-red-600 text-white py-1 px-3 rounded-[6px] transition-all duration-200 inline-block mx-1">
                                                <i class="fa-solid fa-trash"></i> Delete
                                            </button>
                                        </form>
                                        @endcan
                                    </td>
                                </tr>
                                @endforeach
                            </tbody>
                            
                        </table>
                    </div>

                    <!-- Pagination -->
                    <div class="mt-4">
                        {!! $roles->links() !!}
                    </div>
                </div>
            </div>
        </div>
    </div>
</x-app-layout>
