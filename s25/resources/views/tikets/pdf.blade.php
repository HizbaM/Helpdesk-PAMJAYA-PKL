<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Laporan Tiket</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th, td {
            padding: 8px;
            text-align: left;
            border: 1px solid #ddd;
        }
        th {
            background-color: #f4f4f4;
        }
    </style>
</head>
<body>

    <h2>Laporan Tiket</h2>
    <p>Tanggal: {{ \Carbon\Carbon::now()->format('d-m-Y') }}</p>

    <table>
        <thead>
            <tr>
                <th>Nama</th>
                <th>Judul</th>
                <th>Kategori</th>
                <th>Tingkat Urgensi</th>
                <th>Status</th>
                <th>Deskripsi</th>
                <th>Tanggapan</th>
                <th>Troubleshoot</th>
                <th>Gambar</th>
                <th>Dibuat</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($tikets as $tiket)
                <tr>
                    <td>{{ $tiket->nama }}</td>
                    <td>{{ $tiket->judul ?? 'Tidak ada judul' }}</td>
                    <td>{{ $tiket->kategori->nama ?? 'N/A' }}</td>
                    <td>{{ $tiket->tingkat_urgensi }}</td>
                    <td>{{ $tiket->status }}</td>
                    <td>{{ $tiket->description }}</td>
                    <td>{{ $tiket->tanggapan ?? 'Tidak ada tanggapan' }}</td>
                    <td>{{ $tiket->troubleshoot ?? 'Tidak ada troubleshoot' }}</td>
                    <td>
                        @if ($tiket->image)
                            <img src="{{ asset('storage/' . $tiket->image) }}" width="50">
                        @else
                            Tidak ada gambar
                        @endif
                    </td>
                    <td>{{ $tiket->created_at->diffForHumans() }}</td>
                </tr>
            @endforeach
        </tbody>
    </table>

</body>
</html>
