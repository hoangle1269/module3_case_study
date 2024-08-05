<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Finance Application</title>
    <link rel="icon" href="/img/favicon.png" type="image/x-icon">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

    <style>
        body {
            padding-top: 56px;
        }

        .footer {
            background-color: #f8f9fa;
            padding: 20px 0;
            position: fixed;
            width: 100%;
            bottom: 0;
            text-align: center;
        }

        .logo {
            width: 50px;
            height: auto;
        }
    </style>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
    <a class="navbar-brand" href="#">
        <img src="/img/logo.jpg" class="logo" alt="Logo">
        FINANCE MANAGEMENT
    </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
            aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav ml-auto">
            <li class="nav-item">
                <a class="nav-link" href="login">Login</a>
            </li>
        </ul>
    </div>
</nav>


<div class="container mt-5">
    <h1>Chào mừng bạn đến với trang web quản lý tài chính cá nhân</h1>
    <p>Money money money</p>
</div>


<footer class="footer u-align-center u-clearfix" id="sec-aa0c">
    <div class="container u-clearfix">
        <p class="u-align-center u-small-text u-text">
            <a class="u-active-none u-border-none u-btn u-button-link u-button-style-a" href="#">
                Trang quản lý tài chính cá nhân<br>
                © 2024 Tài liệu được cung cấp bởi Team CG2<br>
                Liên hệ: <a href="mailto:support@yourfinancialsite.com">support@yourfinancialsite.com</a><br>
                Địa chỉ: Codegym, 23 TT1 Hàm Nghi, Mỹ Đình, Hà Nội<br>
                Website: <a href="http://localhost:8080/">http://localhost:8080/</a>
            </a>
        </p>
    </div>
</footer>



<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>

</body>
</html>
