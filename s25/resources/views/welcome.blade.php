<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="icon" type="image/x-icon" href="{{ asset('pam.jpeg') }}">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Helpdesk PAMJAYA</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">    
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">

    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background: url(pamjaya.jpg);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            background-size: cover;
            margin: 0;
        }

        .container {
            width: 440px;
            text-align: center;
            background-color: rgb(255, 255, 255);
            padding: 50px;
            border-radius: 20px;
            box-shadow: 0 8px 16px rgb(0, 149, 255);
            z-index: 1;
            position: relative;
        }

        .contain2 {
            width: 540px;
            height: 340px;
            background-color: #0257f49a;
            position: absolute;
            box-shadow: 0 8px 16px rgb(255, 255, 255);
            border-radius: 20px;
            transform: rotate(6deg);
            z-index: 0; /* Positioned behind the container */
        }

        .logo-container {
            margin-bottom: 35px;
            z-index: 1;
        }

        img {
            width: 150px;
            margin-right: 20px;
            border-radius: 9px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        }

        h1 {
            font-size: 25px;
            color: #1565c0;
            margin-bottom: 40px;
        }

        .btn-custom {
            display: inline-flex; /* Fixed display property */
            align-items: center; /* Fixed alignment property */
            padding: 12px 30px;
            font-size: 18px;
            font-weight: 600;
            background-color: #0256F4;
            border: 2px solid #1e40af;
            border-radius: 10px;
            color: white;
            cursor: pointer;
            text-transform: uppercase;
            transition: all 0.2s ease;
            margin: 0 10px;
            text-decoration: none;
        }

        .btn-custom:hover {
            background-color: white;
            border-color: #1e40af;
            color: #1e40af;
            transform: scale(1.05); /* Slight enlargement on hover */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .btn-custom:focus {
            outline: none;
            box-shadow: 0 0 0 2px rgba(99, 102, 241, 0.5);
        }
    </style>
</head>
<body>
<div class="contain2"></div>
    <div class="container">
        <div class="logo-container">
            <img src="{{ asset('pam.jpeg') }}" alt="Logo Perusahaan" />
        </div>
        <a href="{{ url('/login') }}" class="btn-custom">Login</a>
        <a href="{{ url('/register') }}" class="btn-custom">Register</a>
    </div>
</body>
</html>
