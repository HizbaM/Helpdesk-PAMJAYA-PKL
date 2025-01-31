<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Edit User') }}
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white shadow-md rounded-lg overflow-hidden">
                <div class="p-6 bg-gray-100 border-b border-gray-200">
                    <form method="POST" action="{{ route('users.update', $user->id) }}">
                        @csrf
                        @method('PUT')

                        <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                            <!-- Nama User -->
                            <div class="form-group">
                                <label for="name" class="block text-sm font-medium text-gray-700">
                                    <strong>Name:</strong>
                                </label>
                                <input type="text" id="name" name="name" placeholder="Name" class="form-input mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-indigo-300 focus:ring focus:ring-indigo-200 focus:ring-opacity-50" value="{{ $user->name }}">
                            </div>

                            <!-- Email User -->
                            <div class="form-group">
                                <label for="email" class="block text-sm font-medium text-gray-700">
                                    <strong>Email:</strong>
                                </label>
                                <input type="email" id="email" name="email" placeholder="Email" class="form-input mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-indigo-300 focus:ring focus:ring-indigo-200 focus:ring-opacity-50" value="{{ $user->email }}">
                            </div>

                            <!-- Password User -->
                            <div class="form-group">
                                <label for="password" class="block text-sm font-medium text-gray-700">
                                    <strong>Password:</strong>
                                </label>
                                <input type="password" id="password" name="password" placeholder="Password" class="form-input mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-indigo-300 focus:ring focus:ring-indigo-200 focus:ring-opacity-50">
                            </div>

                            <!-- Confirm Password -->
                            <div class="form-group">
                                <label for="confirm-password" class="block text-sm font-medium text-gray-700">
                                    <strong>Confirm Password:</strong>
                                </label>
                                <input type="password" id="confirm-password" name="confirm-password" placeholder="Confirm Password" class="form-input mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-indigo-300 focus:ring focus:ring-indigo-200 focus:ring-opacity-50">
                            </div>

                            <!-- Role User -->
                            <div class="form-group">
                                <label for="roles" class="block text-sm font-medium text-gray-700">
                                    <strong>Role:</strong>
                                </label>
                                <select name="roles[]" id="roles" class="form-multiselect mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-indigo-300 focus:ring focus:ring-indigo-200 focus:ring-opacity-50" multiple>
                                    @foreach ($roles as $value => $label)
                                        <option value="{{ $value }}" {{ isset($userRole[$value]) ? 'selected' : '' }}>{{ $label }}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>

                        <!-- Submit Button -->
                        <div class="text-center mt-6">
                            <button type="submit" class="px-6 py-2 bg-indigo-600 text-white rounded-lg hover:bg-indigo-700 focus:outline-none focus:ring focus:ring-indigo-200 focus:ring-opacity-50">
                                <i class="fa-solid fa-floppy-disk"></i> Submit
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</x-app-layout>
