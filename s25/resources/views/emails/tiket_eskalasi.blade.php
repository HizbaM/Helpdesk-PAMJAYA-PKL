<!DOCTYPE html>
<html>
<head>
    <title>Tiket Dieskalasi</title>
</head>
<body>
    <h1>Tiket Dieskalasi</h1>
    <p>Tiket dengan ID: {{ $tiket->id }} telah dieskalasi.</p>
    <p>Status saat ini: {{ $tiket->status }}</p>
    <p>Detail masalah: {{ $tiket->deskripsi }}</p>
</body>
</html>
