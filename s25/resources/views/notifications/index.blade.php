@extends('layouts.app')

@section('content')
    <div class="container">
        <h1>Notifikasi</h1>

        @if ($notifications->isEmpty())
            <p>Anda tidak memiliki notifikasi.</p>
        @else
            <ul>
                @foreach ($notifications as $notification)
                    <li>
                        <p>{{ $notification->data['message'] }}</p>
                        <p>Status Tiket: {{ $notification->data['status'] }}</p>
                        <p>Tanggapan: {{ $notification->data['tanggapan'] }}</p>
                        <a href="{{ route('tikets.show', $notification->data['tiket_id']) }}">Lihat Tiket</a>
                    </li>
                @endforeach
            </ul>
        @endif
    </div>
    <form action="{{ route('notifications.markAsRead', $notification->id) }}" method="POST">
        @csrf
        @method('PATCH')
        <button type="submit">Tandai sebagai dibaca</button>
    </form>
@endsection
