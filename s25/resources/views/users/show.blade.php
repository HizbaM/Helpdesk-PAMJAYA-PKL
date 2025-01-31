<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Detail User') }}
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white shadow-md rounded-lg overflow-hidden">
                <div class="p-6 bg-gray-100 border-b border-gray-200">
                    <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                        <!-- Nama User -->
                        <div class="form-group">
                            <label class="block text-sm font-medium text-gray-700">
                                <strong>Name:</strong>
                            </label>
                            <p class="mt-1 block w-full rounded-md border-gray-300 bg-gray-200 p-2">{{ $user->name }}</p>
                        </div>
                        
                        <!-- Email User -->
                        <div class="form-group">
                            <label class="block text-sm font-medium text-gray-700">
                                <strong>Email:</strong>
                            </label>
                            <p class="mt-1 block w-full rounded-md border-gray-300 bg-gray-200 p-2">{{ $user->email }}</p>
                        </div>

                        <!-- Role User -->
                        <div class="form-group">
                            <label class="block text-sm font-medium text-gray-700">
                                <strong>Role:</strong>
                            </label>
                            <p class="mt-1 block w-full rounded-md border-gray-300 bg-gray-200 p-2">
                                @if(!empty($user->roles))
                                    @foreach($user->roles as $role)
                                        <span class="inline-block bg-blue-600 text-white text-xs font-semibold px-2 py-1 rounded-lg">{{ $role->name }}</span>
                                    @endforeach
                                @endif
                            </p>
                        </div>
                    </div>

                    <!-- Back Button -->
                    <div class="text-center mt-6">
                        <a href="{{ route('users.index') }}" class="px-6 py-2 bg-gray-600 text-white rounded-lg hover:bg-gray-700 focus:outline-none focus:ring focus:ring-gray-200 focus:ring-opacity-50">
                            <i class="fa-solid fa-arrow-left"></i> Back
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</x-app-layout>
