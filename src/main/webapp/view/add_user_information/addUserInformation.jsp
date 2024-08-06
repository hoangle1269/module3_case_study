<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <style>
        body {
            display: flex;
            justify-content: center;
            background-image: url("https://img4.thuthuatphanmem.vn/uploads/2020/07/05/anh-bia-background-cong-nghe_035953082.jpg");
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-size: 3300px;
            margin-top: 5%;
        }

        .form {
            display: flex;
            flex-direction: column;
            gap: 20px;
            max-width: 600px;
            background-color: snow;
            padding: 100px;
            border-radius: 20px;
            border: 2px solid #a1b4b4;
            position: relative;
            box-shadow: 0px 0px 15px 0px black;
        }

        .title {
            font-size: 28px;
            color: royalblue;
            font-weight: 600;
            letter-spacing: -1px;
            position: relative;
            display: flex;
            align-items: center;
            padding-left: 30px;
        }

        .title::before, .title::after {
            position: absolute;
            content: "";
            height: 16px;
            width: 16px;
            border-radius: 50%;
            left: 0px;
            background-color: royalblue;
        }

        .title::before {
            width: 18px;
            height: 18px;
            background-color: royalblue;
        }

        .title::after {
            width: 18px;
            height: 18px;
            animation: pulse 1s linear infinite;
        }

        .signin {
            text-align: center;
        }

        .signin a {
            color: royalblue;
        }

        .signin a:hover {
            text-decoration: underline royalblue;
        }

        .form label {
            position: relative;
        }

        .form label .input {
            width: 100%;
            padding: 10px 10px 20px 10px;
            outline: 0;
            border: 2px solid rgba(105, 105, 105, 0.397);
            border-radius: 10px;
        }

        .input-thongtin {
            height: 50px;
        }

        .submit {
            border: none;
            outline: none;
            background-color: royalblue;
            padding: 10px;
            border-radius: 10px;
            color: #fff;
            font-size: 16px;
        = transform: scale(1);
            transition: transform 0.3s ease;
        }

        .submit:hover {
            background-color: rgb(56, 90, 194);
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
<form class="form" action="<%= request.getContextPath()%>/addUserInformation" method="post">
    <p class="title">THÔNG TIN NGƯỜI DÙNG </p>
    <label>
        <input required="" placeholder="Full name ..." type="text" name="name" class="input">
    </label>
    <label>
        <input required="" placeholder="Age ..." type="text" name="age" pattern="[\d]+" class="input">
    </label>

    <label>
        <input required="" placeholder="Phone Number ..." type="text" name="phone" pattern="[\d]+" class="input">
    </label>
    <label>
        <input required="" placeholder="address ..." type="text" name="address" class="input input-thongtin">
    </label>
    <button class="submit">Submit</button>
    <p class="signin">Bạn muốn quay về đăng nhập ? <a href="<%=request.getContextPath()%>/login">Login</a></p>
</form>
</body>
</html>