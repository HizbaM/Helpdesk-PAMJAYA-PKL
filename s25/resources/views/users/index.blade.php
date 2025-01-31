<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Daftar Pengguna') }}
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

                    <div class="flex justify-between items-center mb-4">
                        <!-- Tombol Buat Pengguna Baru -->
                        <a href="{{ route('users.create') }}" class="bg-blue-500 hover:bg-blue-600 text-white py-2 px-6 rounded-full transition-all duration-200">
                            Buat Pengguna Baru
                        </a>

                        <!-- Input Pencarian -->
                        <input type="text" id="search" placeholder="Cari pengguna..." class="border border-gray-300 rounded py-2 px-4" />
                    </div>

                    <div class="overflow-x-auto">
                        <table class="min-w-full mx-auto table-auto text-center" id="userTable">
                            <thead class="bg-gray-100">
                                <tr>
                                    <th class="px-4 py-2">No</th>
                                    <th class="px-4 py-2">Nama</th>
                                    <th class="px-4 py-2">Email</th>
                                    <th class="px-4 py-2">Roles</th>
                                    <th class="px-4 py-2">Aksi</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($data as $key => $user)
                                <tr class="border-b user-row">
                                    <td class="px-4 py-2">{{ ++$i }}</td>
                                    <td class="px-4 py-2">{{ $user->name }}</td>
                                    <td class="px-4 py-2">{{ $user->email }}</td>
                                    <td class="px-4 py-2">
                                        @if(!empty($user->getRoleNames()))
                                            @foreach($user->getRoleNames() as $v)
                                                <span class="flex items-center">
                                                    <label class="py-1 px-3 rounded-full flex items-center 
                                                        @if(strtolower($v) == 'admin') bg-red-500 text-white
                                                        @elseif(strtolower($v) == 'staff it') bg-blue-500 text-white
                                                        @elseif(strtolower($v) == 'manager') bg-yellow-500 text-white
                                                        @else bg-green-500 text-white @endif">
                                                        {{ $v }}
                                                        @if(strtolower($v) == 'admin')
                                                            <img src="{{ asset('admin.png') }}" alt="{{ $v }}" class="ml-2 w-4 h-4">
                                                        @elseif(strtolower($v) == 'staff it')
                                                            <img src="{{ asset('tool.png') }}" alt="{{ $v }}" class="ml-2 w-4 h-4">
                                                        @elseif(strtolower($v) == 'manager')
                                                            <img src="{{ asset('crown.png') }}" alt="{{ $v }}" class="ml-2 w-4 h-4">
                                                        @else
                                                            <img src="{{ asset('user.png') }}" alt="{{ $v }}" class="ml-2 w-4 h-4">
                                                        @endif
                                                    </label>
                                                </span>
                                            @endforeach
                                        @endif
                                    </td>
                                    
                                    
                                    
                                    
                                    <td class="px-4 py-2">
                                        <a class="bg-blue-500 hover:bg-blue-600 text-white py-1 px-3 rounded-[6px] transition-all duration-200 inline-block" href="{{ route('users.show', $user->id) }}">
                                            <i class="fa-solid fa-list"></i> Show
                                        </a>
                                        <a class="bg-yellow-500 hover:bg-yellow-600 text-white py-1 px-3 rounded-[6px] transition-all duration-200 inline-block mx-1" href="{{ route('users.edit', $user->id) }}">
                                            <i class="fa-solid fa-pen-to-square"></i> Edit
                                        </a>
                                        <form method="POST" action="{{ route('users.destroy', $user->id) }}" style="display:inline">
                                            @csrf
                                            @method('DELETE')
                                            <button type="submit" class="bg-red-500 hover:bg-red-600 text-white py-1 px-3 rounded-[6px] transition-all duration-200 inline-block mx-1">
                                                <i class="fa-solid fa-trash"></i> Delete
                                            </button>
                                        </form>
                                    </td>
                                </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>

                </div>
            </div>
        </div>
    </div>

    <script>
        document.getElementById('search').addEventListener('input', function() {
            const searchTerm = this.value.toLowerCase();
            const rows = document.querySelectorAll('#userTable .user-row');

            rows.forEach(row => {
                const nameCell = row.cells[1].textContent.toLowerCase();
                if (nameCell.includes(searchTerm)) {
                    row.style.display = '';
                } else {
                    row.style.display = 'none';
                }
            });
        });
    </script>
</x-app-layout>
