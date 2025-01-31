<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Edit Role: ') . $role->name }}
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 bg-white border-b border-gray-200">
                    <form method="POST" action="{{ route('roles.update', $role->id) }}">
                        @csrf
                        @method('PUT')

                        <div class="space-y-4">
                            <div class="mb-6">
                                <label class="block text-sm font-semibold text-gray-700 mb-2" for="role-name">Nama Role:</label>
                                <input 
                                    type="text" 
                                    name="name" 
                                    id="role-name" 
                                    placeholder="Masukkan nama role" 
                                    class="w-full p-3 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-2 focus:ring-blue-500 focus:border-transparent" 
                                    value="{{ old('name', $role->name) }}" 
                                    required
                                >
                            </div>
                            

                            <div class="form-group">
                                <label class="font-semibold">Permission:</label>
                                <div class="space-y-2 mt-2">
                                    @foreach($permission as $value)
                                        <div class="flex items-center">
                                            <input type="checkbox" name="permission[{{$value->id}}]" value="{{$value->id}}" class="mr-2 cursor-pointer rounded-full" {{ in_array($value->id, $rolePermissions) ? 'checked' : ''}}>
                                            <label>{{ $value->name }}</label>
                                        </div>
                                    @endforeach
                                </div>
                            </div>

                            <div class="text-center">
                                <button type="submit" class="bg-blue-500 hover:bg-blue-600 text-white py-2 px-4 rounded transition-all duration-200">
                                    <i class="fa-solid fa-floppy-disk"></i> Simpan
                                </button>
                                <a href="{{ route('roles.index') }}" class="bg-gray-300 hover:bg-gray-400 text-gray-800 py-2 px-4 rounded transition-all duration-200 ml-2">
                                    Kembali
                                </a>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</x-app-layout>
