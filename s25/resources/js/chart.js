import { Chart, registerables } from 'chart.js';
Chart.register(...registerables);

document.addEventListener('DOMContentLoaded', function () {
    const ctx = document.getElementById('myDonutChart').getContext('2d');

    // Ambil data dari atribut data pada elemen canvas
    const data = {
        labels: ['Ringan', 'Sedang', 'Berat'],
        datasets: [{
            label: 'Tingkat Urgensi Tiket',
            data: [
                parseInt(document.getElementById('ringan').value) || 0, 
                parseInt(document.getElementById('sedang').value) || 0, 
                parseInt(document.getElementById('berat').value) || 0
            ],
            backgroundColor: [
                'rgba(75, 192, 192, 0.2)',
                'rgba(255, 206, 86, 0.2)',
                'rgba(255, 99, 132, 0.2)',
            ],
            borderColor: [
                'rgba(75, 192, 192, 1)',
                'rgba(255, 206, 86, 1)',
                'rgba(255, 99, 132, 1)',
            ],
            borderWidth: 1
        }]
    };

    const myDonutChart = new Chart(ctx, {
        type: 'doughnut',
        data: data,
        options: {
            responsive: true,
            plugins: {
                legend: {
                    position: 'top',
                },
                title: {
                    display: true,
                    text: 'Donut Chart Tiket'
                }
            }
        },
    });
});
