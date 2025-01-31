<button {{ $attributes->merge(['type' => 'submit', 'class' => 'inline-flex items-center px-4 py-2 bg-blue-600 border border-blue-800 rounded-md font-semibold text-xs text-white uppercase tracking-widest transition ease-in-out duration-150 hover:bg-white hover:border-blue-300 hover:text-black focus:outline-none focus:ring-2 focus:ring-blue-500 focus:ring-offset-2 dark:focus:ring-offset-gray-800 transform hover:scale-105']) }}>
    {{ $slot }}
</button>
