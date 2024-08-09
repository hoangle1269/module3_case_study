<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>USER INFO</title>
    <link rel="icon" href="/img/favicon.png" type="image/x-icon">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <link rel="stylesheet" type="text/css" href="/view/home/home.css">
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-image: url("https://img4.thuthuatphanmem.vn/uploads/2020/07/05/anh-bia-background-cong-nghe_035953082.jpg");
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-size: cover;
            margin: 0;
        }

        .form-container {
            background-color: snow;
            padding: 40px;
            border-radius: 20px;
            border: 2px solid #a1b4b4;
            box-shadow: 0px 0px 15px 0px black;
        }

        .form-container .title {
            font-size: 28px;
            color: royalblue;
            font-weight: 600;
            letter-spacing: -1px;
            text-align: center;
        }

        .form-container .title::before, .form-container .title::after {
            position: absolute;
            content: "";
            height: 16px;
            width: 16px;
            border-radius: 50%;
            background-color: royalblue;
        }

        .form-container .title::before {
            left: -20px;
        }

        .form-container .title::after {
            right: -20px;
            animation: pulse 1s linear infinite;
        }

        .form-container .form-label {
            font-weight: bold;
            color: #333;
        }

        .form-container .form-control {
            margin-bottom: 20px;
            border-radius: 10px;
        }

        .form-container .submit {
            border: none;
            background-color: royalblue;
            padding: 10px 20px;
            border-radius: 10px;
            color: #fff;
            font-size: 16px;
            width: 100%;
            transition: background-color 0.3s ease;
        }

        .form-container .submit:hover {
            background-color: rgb(56, 90, 194);
        }

        .form-container .signin {
            text-align: center;
            margin-top: 20px;
        }

        .form-container .signin a {
            color: royalblue;
        }

        .form-container .signin a:hover {
            text-decoration: underline royalblue;
        }

        @keyframes pulse {
            from {
                transform: scale(0.9);
                opacity: 1;
            }
            to {
                transform: scale(1.8);
                opacity: 0;
            }
        }
    </style>
</head>
<body>

<div class="form-container">
    <form action="<%= request.getContextPath()%>/addUserInformation" method="post">
        <p class="title">USER INFORMATION</p>
        <div class="mb-3">
            <label for="name" class="form-label">Full Name</label>
            <input type="text" class="form-control" id="name" name="name" placeholder="Full name ..." required>
        </div>
        <div class="mb-3">
            <label for="age" class="form-label">Age</label>
            <input type="text" class="form-control" id="age" name="age" placeholder="Age ..." pattern="\d+" required>
        </div>
        <div class="mb-3">
            <label for="phone" class="form-label">Phone Number</label>
            <input type="text" class="form-control" id="phone" name="phone" placeholder="Phone Number ..." pattern="\d+" required>
        </div>
        <div class="mb-3">
            <label for="address" class="form-label">Address</label>
            <input type="text" class="form-control" id="address" name="address" placeholder="Address ..." required>
        </div>
        <button type="submit" class="submit btn btn-primary">Submit</button>
        <p class="signin">Return to login? <a href="<%=request.getContextPath()%>/login">Login</a></p>
    </form>
</div>


<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
