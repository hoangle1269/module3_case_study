<%--
  Created by IntelliJ IDEA.
  User: minhquan
  Date: 05/08/2024
  Time: 14:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Category Management</title>
    <link rel="stylesheet" href="category/add.css">
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
                                          href="<%=request.getContextPath()%>category">Danh mục</a>
                </li>
                <li class="u-nav-item"><a class="u-button-style u-nav-link" href="<%=request.getContextPath()%>/logout">Đăng
                    xuất</a>
                </li>
            </ul>
        </div>
    </div>
    <div class="u-black u-menu-overlay u-opacity u-opacity-70"></div>
</div>
<center>
    <h1>Category Management</h1>
</center>
<div align="center">
    <form method="post">
        <table border="1" cellpadding="5">
            <caption>
                <h2>Create New Category</h2>
            </caption>
            <tr>
                <th>Name:</th>
                <td><input type="text" name="name" required/></td>
            </tr>
            <tr>
                <th>Note:</th>
                <td><input type="text" name="note" rows="5" cols="50" required/></td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" value="Save"/>
                </td>
            </tr>
        </table>
    </form>
</div>
<footer class="u-align-center u-clearfix " id="sec-aa0c">
    <div class="u-clearfix">
        <p class="u-align-center u-small-text u-text">
            <a class="u-active-none u-border-none u-btn u-button-link u-button-style-a " data-href="#"> Trang quản lý
                tài chính cá nhân&nbsp;<br>© 2024 Tài liệu được cung cấp bởi [Hà Văn Hiện]<br>&nbsp;Liên hệ:
                [support@yourfinancialsite.com]<br>&nbsp;Địa chỉ: [codegym,26 Hàm nghi,Mỹ đình, Hà Nội]&nbsp;<br>Website:
                [Đường dẫn đến trang web của bạn]
                ---
            </a>
        </p>
    </div>
</footer>
</body>
</html>
