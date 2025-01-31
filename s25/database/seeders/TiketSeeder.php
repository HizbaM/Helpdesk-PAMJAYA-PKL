<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Tiket;
use Faker\Factory as Faker;

class TiketSeeder extends Seeder
{
    public function run()
    {
        $faker = Faker::create();

        // Sesuaikan range ID kategori dan user dengan jumlah data yang ada
        $kategoriRange = [1, 2, 3, 4]; 
        $userRange = [1, 2, 3];

        for ($i = 1; $i <= 200; $i++) {
            Tiket::create([
                'nama' => $faker->name,
                'judul' => $faker->sentence(3),
                'image' => null,
                'kategori_id' => $faker->randomElement($kategoriRange), // Pilih dari range yang ada
                'tingkat_urgensi' => $faker->randomElement(['Ringan', 'Sedang', 'Berat']),
                'status' => $faker->randomElement(['Dibuka', 'Butuh Ditinjau', 'Ditinjau', 'Dikerjakan', 'Selesai', 'Ditolak']),
                'description' => $faker->paragraph(3),
                'troubleshoot' => $faker->boolean ? $faker->sentence(5) : null,
                'tanggapan' => $faker->boolean ? $faker->sentence(4) : null,
                'user_id' => $faker->randomElement($userRange), // Pilih dari range yang ada
                'created_at' => $faker->dateTimeBetween('2024-08-01', '2024-11-30'), // Acak antara Agustus sampai November 2024
                'updated_at' => now(),
            ]);
        }
    }
}
