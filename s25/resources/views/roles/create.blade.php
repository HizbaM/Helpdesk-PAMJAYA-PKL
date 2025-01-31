<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Buat User Baru') }}
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white shadow-md rounded-lg overflow-hidden">
                <div class="p-6 bg-gray-50 border-b border-gray-200">
                    <form method="POST" action="{{ route('roles.store') }}">
                        @csrf
                        <div class="space-y-6">
                            <!-- Name Input -->
                            <div>
                                <label class="block font-medium text-sm text-gray-700" for="name">Name:</label>
                                <input type="text" name="name" placeholder="Enter role name" class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-indigo-500 focus:ring focus:ring-indigo-200 focus:ring-opacity-50" required>
                            </div>

                            <!-- Permissions Checkbox List -->
                            <div>
                                <label class="block font-medium text-sm text-gray-700" for="permission">Permission:</label>
                                <div class="mt-2 space-y-2">
                                    @foreach($permission as $value)
                                    <div class="flex items-start">
                                        <input type="checkbox" name="permission[{{$value->id}}]" value="{{$value->id}}" class="h-4 w-4 text-indigo-600 focus:ring-indigo-500 border-gray-300 rounded">
                                        <label for="permission" class="ml-2 block text-sm text-gray-900">{{ $value->name }}</label>
                                    </div>
                                    @endforeach
                                </div>
                            </div>

                            <!-- Submit Button -->
                            <div class="text-center">
                                <button type="submit" class="px-6 py-2 text-white bg-indigo-600 rounded-md hover:bg-indigo-500 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500">
                                    <i class="fa-solid fa-floppy-disk mr-2"></i>Submit
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</x-app-layout>
