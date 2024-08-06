<%--
  Created by IntelliJ IDEA.
  User: minhquan
  Date: 05/08/2024
  Time: 14:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Category Management</title>
    <link rel="stylesheet" href="category/style.css">
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
<div class="container">
    <div class="header">
        <h1>Category Management</h1>
        <button class="add-button"
                onclick="window.location.href='${pageContext.request.contextPath}/category?action=add'">
            + Add Category
        </button>
    </div>
    <table>
        <thead>
        <tr>
            <th>Name</th>
            <th>Note</th>
            <th>Action</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="category" items="${listCategory}">
            <tr>
                <td><c:out value="${category.name}"/></td>
                <td><c:out value="${category.notes}"/></td>
                <td>
                    <a href="/category?action=edit&categoryId=${category.categoryId}">Edit</a> |
                    <a href="/category?action=delete&categoryId=${category.categoryId}"
                       onclick="return confirm('Are you sure you want to delete this category?');">Delete</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
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
