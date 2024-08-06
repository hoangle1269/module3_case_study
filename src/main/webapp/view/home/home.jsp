<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 8/3/2024
  Time: 10:12 AM
  To change this template use File | Settings | File Templates.
--%>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 8/3/2024
  Time: 10:12 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>HOME</title>
    <link rel="icon" href="/img/favicon.png" type="image/x-icon">
    <link rel="stylesheet" type="text/css" href="/view/home/home.css">
</head>
<body>
<div>
    <div class="start">
        <div>
            <div class="u-menu-close"></div>
            <ul class="u-nav">
                <li class="u-nav-item"><a class="u-button-style u-nav-link"
                                          href="<%=request.getContextPath()%>/controllerHomePage">Trang chủ</a>
                </li>
                <li class="u-nav-item"><a class="u-button-style u-nav-link"
                                          href="<%=request.getContextPath()%>/controllerHomeListWallet">Ví của tôi</a>
                </li>
                <li class="u-nav-item"><a class="u-button-style u-nav-link"
                                          href="<%=request.getContextPath()%>/transactionManagement">Trang cá nhân</a>
                </li>
                <li class="u-nav-item"><a class="u-button-style u-nav-link"
                                          href="<%=request.getContextPath()%>/category">Danh mục</a>
                </li>
                <li class="u-nav-item"><a class="u-button-style u-nav-link" href="<%=request.getContextPath()%>/logout">Đăng
                    xuất</a>
                </li>
            </ul>
        </div>
    </div>
    <div class="u-black u-menu-overlay u-opacity u-opacity-70"></div>
</div>
<hr>
<section id="carousel_c3ca">

</section>
<footer class="footer u-align-center u-clearfix" id="sec-aa0c">
    <div class="container u-clearfix">
        <p class="u-align-center u-small-text u-text">
            <span class="u-active-none u-border-none u-btn u-button-link u-button-style-a">
                Trang quản lý tài chính cá nhân<br>
                © 2024 Tài liệu được cung cấp bởi Team CG2<br>
                Liên hệ: <a href="mailto:support@yourfinancialsite.com">support@yourfinancialsite.com</a><br>
                Địa chỉ: Codegym, 23 TT1 Hàm Nghi, Mỹ Đình, Hà Nội<br>
                Website: <a href="http://localhost:8080/">http://localhost:8080/</a>
            </span>
        </p>
    </div>
</footer>
</body>
</html>
