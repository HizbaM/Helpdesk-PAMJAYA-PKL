<nav x-data="{ open: false }" class="bg-white dark:bg-gray-800 border-b border-gray-100 dark:border-gray-700">
    <!-- Primary Navigation Menu -->
    <script defer src="https://unpkg.com/alpinejs@3.x.x/dist/cdn.min.js"></script>

    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="flex justify-between h-16">
            <div class="flex items-center">
                <!-- Logo -->
                <!-- Logo dan teks Helpdesk PAM -->
<div class="shrink-0 flex items-center">
    <a href="{{ route('dashboard') }}">
        <x-application-logo class="block h-9 w-auto fill-current text-gray-800 dark:text-gray-200" />
    </a>
    <!-- Teks Helpdesk PAM -->
    <span class="ml-3 text-xl font-bold text-gray-800 dark:text-gray-200" style="font-weight: bold;">
        Helpdesk PAMJAYA
    </span>
    
    
    
</div>
                

                <!-- Navigation Links -->
                <div class="hidden space-x-8 sm:-my-px sm:ms-10 sm:flex">
                    <x-nav-link :href="route('dashboard')" :active="request()->routeIs('dashboard')">
                        {{ __('Beranda') }}
                    </x-nav-link>

                    @if(!Auth::user()->hasRole('Pengguna Akhir'))
                        <x-nav-link :href="route('users.index')" :active="request()->routeIs('users.index')">
                            {{ __('Pengguna') }}
                        </x-nav-link>

                        <x-nav-link :href="route('roles.index')" :active="request()->routeIs('roles.index')">
                            {{ __('Roles') }}
                        </x-nav-link>
                    @endif

                    <x-nav-link :href="route('tikets.index')" :active="request()->routeIs('tikets.index')">
                        {{ __('Tiket') }}
                    </x-nav-link>
                    
                    <x-nav-link :href="route('artikel.index')" :active="request()->routeIs('artikel.index')">
                        {{ __('Artikel') }}
                    </x-nav-link>

                </div>
            </div>

            <!-- Right Side: Notifications and User Settings -->
            <div class="flex items-center">
            <!-- Notification Bell -->
            <div class="relative" x-data="{ open: false }">
                <a @click="open = !open" class="flex items-center text-gray-500 dark:text-gray-300 hover:text-gray-700 dark:hover:text-gray-400 cursor-pointer">
                    <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2">
                        <path stroke-linecap="round" stroke-linejoin="round" d="M15 17h5l-1.405-1.405C18.79 14.79 18 13.405 18 12V8a6 6 0 00-12 0v4c0 1.405-.79 2.79-1.595 3.595L3 17h5m6 0v1a3 3 0 01-6 0v-1m6 0H9" />
                    </svg>
                    <!-- Show unread notifications count -->
                    @if (Auth::user()->unreadNotifications->count() > 0)
                    <span class="absolute top-0 right-0 block h-2 w-2 rounded-full ring-2 ring-white bg-red-600"></span>
                    @endif
                </a>

                <!-- Dropdown Notification Content -->
                <div x-show="open" @click.away="open = false" class="absolute right-0 mt-2 w-64 bg-white dark:bg-gray-800 rounded-md shadow-lg z-50 overflow-hidden">
                    <div class="py-2 px-4">
                        <button @click="markAllAsRead" class="w-full text-left text-sm text-gray-500 dark:text-gray-400 hover:bg-gray-100 dark:hover:bg-gray-900">
                            {{ __('Baca semua') }}
                        </button>
                    </div>
                    <div class="py-2">
                        @forelse (Auth::user()->unreadNotifications as $notification)
                            <a href="#" class="block px-4 py-2 text-sm text-gray-700 dark:text-gray-300 hover:bg-gray-100 dark:hover:bg-gray-900">
                                {{ $notification->data['message'] ?? 'Tidak ada Notifikasi terbaru' }}
                                <span class="text-xs text-gray-500 dark:text-gray-400">
                                    {{ $notification->created_at->diffForHumans() }}
                                </span>
                            </a>
                            <form method="POST" action="{{ route('markNotificationAsRead', $notification->id) }}" class="text-right px-4 py-2">
                                @csrf
                                <button type="submit" class="text-xs text-gray-500 dark:text-gray-400 hover:underline">
                                    {{ __('Tandai Telah Dibaca') }}
                                </button>
                            </form>
                        @empty
                            <p class="block px-4 py-2 text-sm text-gray-500 dark:text-gray-300">
                                {{ __('Tidak ada Notifikasi terbaru') }}
                            </p>
                        @endforelse
                    </div>
                </div>
                
                            </div>

                <!-- Settings Dropdown -->
                <div class="hidden sm:flex sm:items-center sm:ms-6">
                    <x-dropdown align="right" width="48">
                        <x-slot name="trigger">
                            <button class="inline-flex items-center px-3 py-2 border border-transparent text-sm leading-4 font-medium rounded-md text-gray-500 dark:text-gray-400 bg-white dark:bg-gray-800 hover:text-gray-700 dark:hover:text-gray-300 focus:outline-none transition ease-in-out duration-150">
                                <div>{{ Auth::user()->name }}</div>
                                <div class="ms-1">
                                    <svg class="fill-current h-4 w-4" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20">
                                        <path fill-rule="evenodd" d="M5.293 7.293a1 1 0 011.414 0L10 10.586l3.293-3.293a1 1 011.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z" clip-rule="evenodd" />
                                    </svg>
                                </div>
                            </button>
                        </x-slot>

                        <x-slot name="content">
                            <x-dropdown-link :href="route('profile.edit')">
                                {{ __('Profile') }}
                            </x-dropdown-link>

                            <form method="POST" action="{{ route('logout') }}">
                                @csrf
                                <x-dropdown-link :href="route('logout')"
                                        onclick="event.preventDefault(); this.closest('form').submit();">
                                    {{ __('Log Out') }}
                                </x-dropdown-link>
                            </form>
                        </x-slot>
                    </x-dropdown>
                </div>
            </div>

            <!-- Hamburger -->
            <div class="-me-2 flex items-center sm:hidden">
                <button @click="open = ! open" class="inline-flex items-center justify-center p-2 rounded-md text-gray-400 dark:text-gray-500 hover:text-gray-500 dark:hover:text-gray-400 hover:bg-gray-100 dark:hover:bg-gray-900 focus:outline-none focus:bg-gray-100 dark:focus:bg-gray-900 focus:text-gray-500 dark:focus:text-gray-400 transition duration-150 ease-in-out">
                    <svg class="h-6 w-6" stroke="currentColor" fill="none" viewBox="0 0 24 24">
                        <path :class="{'hidden': open, 'inline-flex': ! open }" class="inline-flex" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h16" />
                        <path :class="{'hidden': ! open, 'inline-flex': open }" class="hidden" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12" />
                    </svg>
                </button>
            </div>
        </div>
    </div>

    <!-- Responsive Navigation Menu -->
    <div :class="{'block': open, 'hidden': ! open}" class="hidden sm:hidden">
        <div class="pt-2 pb-3 space-y-1">
            <x-responsive-nav-link :href="route('dashboard')" :active="request()->routeIs('dashboard')">
                {{ __('Dashboard') }}
            </x-responsive-nav-link>

            @if(!Auth::user()->hasRole('Pengguna Akhir'))
                <x-responsive-nav-link :href="route('users.index')" :active="request()->routeIs('users.index')">
                    {{ __('Users') }}
                </x-responsive-nav-link>

                <x-responsive-nav-link :href="route('roles.index')" :active="request()->routeIs('roles.index')">
                    {{ __('Roles') }}
                </x-responsive-nav-link>
            @endif

            <x-responsive-nav-link :href="route('tikets.index')" :active="request()->routeIs('tikets.index')">
                {{ __('Tikets') }}
            </x-responsive-nav-link>
        </div>

        <div class="pt-4 pb-1 border-t border-gray-200 dark:border-gray-600">
            <div class="px-4">
                <div class="font-medium text-base text-gray-800 dark:text-gray-200">{{ Auth::user()->name }}</div>
                <div class="font-medium text-sm text-gray-500">{{ Auth::user()->email }}</div>
            </div>

            <div class="mt-3 space-y-1">
                <x-responsive-nav-link :href="route('profile.edit')">
                    {{ __('Profile') }}
                </x-responsive-nav-link>

                <form method="POST" action="{{ route('logout') }}">
                    @csrf
                    <x-responsive-nav-link :href="route('logout')"
                            onclick="event.preventDefault(); this.closest('form').submit();">
                        {{ __('Log Out') }}
                    </x-responsive-nav-link>
                </form>
            </div>
        </div>
    </div>
    <script>
function markAllAsRead() {
    fetch('{{ route('markAllNotificationsAsRead') }}', {
        method: 'POST',
        headers: {
            'X-CSRF-TOKEN': '{{ csrf_token() }}',
            'Content-Type': 'application/json',
        },
    }).then(response => {
        if (response.ok) {
            location.reload(); // Refresh halaman setelah menandai sebagai dibaca
        }
    });
}
</script>

</nav>
