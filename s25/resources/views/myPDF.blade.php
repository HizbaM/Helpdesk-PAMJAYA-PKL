<!DOCTYPE html>
<html>
<head>
    <title>Laporan Tiket</title>
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            border: 1px solid #000;
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
    <h1 style="text-align: center;">Laporan Tiket</h1>
    <table>
        <thead>
            <tr>
                <th>No</th>
                <th>Judul</th>
                <th>Kategori</th>
                <th>Tingkat Urgensi</th>
                <th>Status</th>
                <th>Description</th>
                <th>Troubleshoot</th>
                <th>Tanggapan</th>
                <th>Pengguna</th>
                <th>Tanggal Dibuat</th>
                <th>Terakhir Diubah</th>
            </tr>
        </thead>
        <tbody>
            @foreach($tikets as $key => $tiket)
            <tr>
                <td>{{ $key + 1 }}</td>
                <td>{{ $tiket->judul ?? '-' }}</td>
              
                <td>{{ $tiket->kategori->nama }}</td>
                <td>{{ $tiket->tingkat_urgensi }}</td>
                <td>{{ $tiket->status }}</td>
                <td>{{ $tiket->description }}</td>
                <td>{{ $tiket->troubleshoot ?? '-' }}</td>
                <td>{{ $tiket->tanggapan ?? '-' }}</td>
                <td>{{ $tiket->user->name }}</td>
                <td>{{ $tiket->created_at->format('d-m-Y H:i') }}</td>
                <td>{{ $tiket->updated_at->format('d-m-Y H:i') }}</td>
            </tr>
            @endforeach
        </tbody>
    </table>
</body>
</html>