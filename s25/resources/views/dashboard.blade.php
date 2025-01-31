<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 dark:text-gray-200 leading-tight">
            {{ __('Beranda') }}
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white dark:bg-gray-800 overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 text-gray-900 dark:text-gray-100">
                    <p>{{ __("Selamat datang, :name!", ['name' => Auth::user()->name]) }}</p>
                </div>
            </div>
        </div>
    </div>

    <div class="mt-6 flex justify-center items-center space-x-4 max-w-7xl mx-auto sm:px-6 lg:px-8">
        <div class="flex flex-col items-center">
            <label for="bulan" class="text-sm font-semibold">Bulan:</label>
            <input type="number" id="bulan" min="1" max="12" placeholder="Bulan (1-12)" class="border rounded-md p-2 text-center w-24">
        </div>

        <div class="flex flex-col items-center">
            <label for="tahun" class="text-sm font-semibold">Tahun:</label>
            <input type="number" id="tahun" placeholder="Tahun (misal: 2024)" class="border rounded-md p-2 text-center w-24">
        </div>

        <button id="filterButton" class="bg-blue-600 hover:bg-blue-700 text-white font-semibold rounded-md px-4 py-2">
            Terapkan Filter
        </button>
    </div>

    <div class="flex justify-center mt-4 max-w-7xl mx-auto sm:px-6 lg:px-8 space-x-8">
        <div class="bg-white bg-opacity-80 rounded-md shadow-md p-4">
            <canvas id="donutChart" width="300" height="300"></canvas>
        </div>
        <div class="bg-white bg-opacity-80 rounded-md shadow-md p-4">
            <canvas id="donutChart1" width="300" height="300"></canvas>
        </div>
        <div class="bg-white bg-opacity-80 rounded-md shadow-md p-4">
            <canvas id="donutChartKategori" width="300" height="300"></canvas>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script>
        // Fungsi untuk menghancurkan chart yang sudah ada
        function destroyChart(chart) {
            if (chart) {
                chart.destroy();
            }
        }

        // Fungsi untuk menginisialisasi chart
        function initChart(ctx, labels, data, title, backgroundColors, borderColors) {
            return new Chart(ctx, {
                type: 'doughnut',
                data: {
                    labels: labels,
                    datasets: [{
                        label: title,
                        data: data,
                        backgroundColor: backgroundColors,
                        borderColor: borderColors,
                        borderWidth: 2
                    }]
                },
                options: {
                    responsive: true,
                    maintainAspectRatio: false,
                    plugins: {
                        legend: {
                            position: 'top',
                        },
                        title: {
                            display: true,
                            text: title
                        }
                    }
                }
            });
        }

        document.addEventListener('DOMContentLoaded', function () {
            // Set bulan dan tahun otomatis ke bulan dan tahun saat ini
            const today = new Date();
            document.getElementById('bulan').value = today.getMonth() + 1; // +1 karena getMonth() dimulai dari 0
            document.getElementById('tahun').value = today.getFullYear();

            let donutChart, donutChart1, donutChartKategori;

            // Fungsi untuk memuat data dan memperbarui chart
            function loadData(bulan = null, tahun = null) {
                const params = new URLSearchParams();
                if (bulan) params.append('bulan', bulan);
                if (tahun) params.append('tahun', tahun);

                // Fetch data untuk Tingkat Urgensi
                fetch('/api/tiket-data?' + params.toString())
                    .then(response => response.json())
                    .then(data => {
                        const ctx1 = document.getElementById('donutChart').getContext('2d');
                        destroyChart(donutChart); // Hancurkan chart yang ada
                        donutChart = initChart(ctx1, ['Ringan', 'Sedang', 'Berat'], [data.ringan, data.sedang, data.berat], 'Tingkat Urgensi Tiket',
                            ['rgba(75, 192, 192, 0.7)', 'rgba(255, 206, 86, 0.7)', 'rgba(255, 99, 132, 0.7)'],
                            ['rgba(75, 192, 192, 1)', 'rgba(255, 206, 86, 1)', 'rgba(255, 99, 132, 1)']);
                    });

                // Fetch data untuk Status
                fetch('/api/tiket-data1?' + params.toString())
                    .then(response => response.json())
                    .then(data => {
                        const ctx2 = document.getElementById('donutChart1').getContext('2d');
                        destroyChart(donutChart1); // Hancurkan chart yang ada
                        donutChart1 = initChart(ctx2,
                            ['Dibuka', 'Butuh Ditinjau', 'Ditinjau', 'Dikerjakan', 'Selesai', 'Ditolak'],
                            [data.dibuka, data.butuh_ditinjau, data.ditinjau, data.dikerjakan, data.selesai, data.ditolak],
                            'Status',
                            ['rgba(75, 192, 192, 0.7)', 'rgba(54, 162, 235, 0.7)', 'rgba(255, 159, 64, 0.7)', 'rgba(255, 206, 86, 0.7)', 'rgba(0, 128, 0, 0.7)', 'rgba(255, 99, 132, 0.7)'],
                            ['rgba(75, 192, 192, 1)', 'rgba(54, 162, 235, 1)', 'rgba(255, 159, 64, 1)', 'rgba(255, 206, 86, 1)', 'rgba(0, 128, 0, 1)', 'rgba(255, 99, 132, 1)']);
                    });

                // Fetch data untuk Kategori
                fetch('/api/tiket-data-by-kategori?' + params.toString())
                    .then(response => response.json())
                    .then(data => {
                        const labels = data.map(item => item.kategori);
                        const jumlah = data.map(item => item.total);
                        const ctx3 = document.getElementById('donutChartKategori').getContext('2d');
                        destroyChart(donutChartKategori); // Hancurkan chart yang ada
                        donutChartKategori = initChart(ctx3, labels, jumlah, 'Kategori Tiket',
                            ['rgba(54, 162, 235, 0.7)', 'rgba(255, 99, 132, 0.7)', 'rgba(255, 206, 86, 0.7)', 'rgba(75, 192, 192, 0.7)'],
                            ['rgba(54, 162, 235, 1)', 'rgba(255, 99, 132, 1)', 'rgba(255, 206, 86, 1)', 'rgba(75, 192, 192, 1)']);
                    });
            }

            // Event listener untuk tombol filter
            document.getElementById('filterButton').addEventListener('click', () => {
                const bulan = document.getElementById('bulan').value;
                const tahun = document.getElementById('tahun').value;
                loadData(bulan, tahun);
            });

            // Memuat data awal dengan bulan dan tahun saat ini
            loadData(today.getMonth() + 1, today.getFullYear());
        });
    </script>
</x-app-layout>
