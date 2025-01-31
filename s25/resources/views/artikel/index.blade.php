<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Tutorial Membuat Tiket') }}
        </h2>
    </x-slot>

    <!-- Tutorial Container -->
    <div class="relative w-full flex justify-center items-center mt-6 px-4">
        <!-- Previous Button -->
        <button id="prev-btn" class="absolute left-10 px-4 py-2 bg-gray-200 rounded-full shadow hover:bg-gray-300 transition">
            <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6 text-gray-600" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 19l-7-7 7-7" />
            </svg>
        </button>

        <!-- Step Content -->
        <div id="step-container" class="w-full max-w-lg text-center space-y-4">
            <!-- Step 1 -->
            <div class="step hidden" data-step="1">
                <img src="{{ asset('step1.png') }}" alt="Step 1 - Dashboard" class="w-full h-auto mx-auto">
                <p class="mt-2 font-semibold">Step 1: Ini adalah Halaman Dashboard</p>
            </div>

            <!-- Step 2 -->
            <div class="step hidden" data-step="2">
                <img src="{{ asset('step2.png') }}" alt="Step 2 - Menu Tiket" class="w-full h-auto mx-auto">
                <p class="mt-2 font-semibold">Step 2: Klik Menu Tiket di Navbar lalu klik tombol "Buat Tiket Baru"</p>
            </div>

            <!-- Step 3 -->
            <div class="step hidden" data-step="3">
                <img src="{{ asset('step3.png') }}" alt="Step 3 - Buat Tiket" class="w-full h-auto mx-auto">
                <p class="mt-2 font-semibold">Step 3: Buat tiket di halaman ini berdasarkan Keluhanmu</p>
            </div>

            <!-- Step 4 -->
            <div class="step hidden" data-step="4">
                <img src="{{ asset('step4.png') }}" alt="Step 4 - Isi Tiket" class="w-full h-auto mx-auto">
                <p class="mt-2 font-semibold">Step 4: Isi nama, judul, kategori, dan deskripsi sesuai keluhan</p>
            </div>

            <!-- Step 5 -->
            <div class="step hidden" data-step="5">
                <img src="{{ asset('step5.png') }}" alt="Step 5 - Tiket Masuk Database" class="w-full h-auto mx-auto">
                <p class="mt-2 font-semibold">Step 5: Tiket otomatis masuk ke database, tunggu respon dari Staff IT</p>
            </div>

            <!-- Step 6 -->
            <div class="step hidden" data-step="6">
                <img src="{{ asset('step6.png') }}" alt="Step 6 - Status Berubah" class="w-full h-auto mx-auto">
                <p class="mt-2 font-semibold">Step 6: Status berubah dari Dibuka ke Dikerjakan setelah direspon oleh Staff IT</p>
            </div>

            <!-- Step 7 -->
            <div class="step hidden" data-step="7">
                <img src="{{ asset('step7.png') }}" alt="Step 7 - Status Butuh Ditinjau" class="w-full h-auto mx-auto">
                <p class="mt-2 font-semibold">Step 7: Jika Staff IT belum respon selama 2 jam, status jadi Butuh Ditinjau</p>
            </div>

            <!-- Step 8 -->
            <div class="step hidden" data-step="8">
                <img src="{{ asset('step9.jpg') }}" alt="Step 8 - Eskalasi Tiket" class="w-full h-auto mx-auto">
                <p class="mt-2 font-semibold">Step 8: Setelah itu tiket anda akan dieskalasi dan masuk ke email Manager untuk ditindak lanjuti</p>
            </div>
        </div>

        <!-- Next Button -->
        <button id="next-btn" class="absolute right-10 px-4 py-2 bg-gray-200 rounded-full shadow hover:bg-gray-300 transition">
            <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6 text-gray-600" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5l7 7-7 7" />
            </svg>
        </button>
    </div>

    <!-- JavaScript -->
    <script>
        const steps = document.querySelectorAll('.step');
        let currentStep = 0;

        function updateSteps() {
            steps.forEach((step, index) => {
                step.classList.toggle('hidden', index !== currentStep);
            });
        }

        document.getElementById('prev-btn').addEventListener('click', () => {
            if (currentStep > 0) {
                currentStep--;
                updateSteps();
            }
        });

        document.getElementById('next-btn').addEventListener('click', () => {
            if (currentStep < steps.length - 1) {
                currentStep++;
                updateSteps();
            }
        });

        // Initialize the first step
        updateSteps();
    </script>
</x-app-layout>
