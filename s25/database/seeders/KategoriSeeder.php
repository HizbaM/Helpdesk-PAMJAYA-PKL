<?php

namespace Database\Seeders;

use App\Models\Kategori;
use Illuminate\Database\Seeder;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class KategoriSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $kategoris = [
           'IT Support',
           'Network Issue',
           'Hardware Issue',
           'Software Issue',
        ];
        
        foreach ($kategoris as $kategori) {
             Kategori::create(['nama' => $kategori]);
        }
    }
}
