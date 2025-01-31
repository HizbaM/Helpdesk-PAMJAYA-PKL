<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('tikets', function (Blueprint $table) {
            $table->id();
            $table->string('nama');
            $table->string('judul')->nullable(); // Make judul nullable to match controller validation
            $table->string('image')->nullable();
            $table->foreignId('kategori_id')->constrained('kategoris')->onDelete('cascade');
            $table->enum('tingkat_urgensi', ['Ringan', 'Sedang', 'Berat']);
            $table->enum('status', ['Dibuka', 'Butuh Ditinjau', 'Ditinjau', 'Dikerjakan', 'Selesai', 'Ditolak']);
            $table->text('description');
            $table->text('troubleshoot')->nullable();
            $table->text('tanggapan')->nullable();
            $table->foreignId('user_id')->constrained('users')->onDelete('cascade');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('tikets');
    }
};
