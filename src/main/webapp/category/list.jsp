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
    <link rel="icon" href="/img/favicon.png" type="image/x-icon">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <link rel="stylesheet" type="text/css" href="/view/home/home.css">
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">My Finance Manager</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item"><a class="nav-link" href="<%=request.getContextPath()%>/controllerHomePage">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="<%=request.getContextPath()%>/controllerHomeListWallet">My Wallets</a></li>
                <li class="nav-item"><a class="nav-link" href="<%=request.getContextPath()%>/transactionManagement">Profile</a></li>
                <li class="nav-item"><a class="nav-link" href="<%=request.getContextPath()%>/category">Categories</a></li>
                <li class="nav-item"><a class="nav-link" href="<%=request.getContextPath()%>/logout">Logout</a></li>
            </ul>
        </div>
    </div>
</nav>

<div class="header bg-success text-white text-center py-3">
    <h1>Category Management</h1>
    <button class="btn btn-light" onclick="window.location.href='<%=request.getContextPath()%>/category?action=add'">+ Add Category</button>
</div>

<div class="content container mt-5">
    <table class="table table-striped">
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
                    <a href="<%=request.getContextPath()%>/category?action=edit&categoryId=${category.categoryId}" class="btn btn-primary btn-sm">Edit</a>
                    <a href="<%=request.getContextPath()%>/category?action=delete&categoryId=${category.categoryId}" class="btn btn-danger btn-sm" onclick="return confirm('Are you sure you want to delete this category?');">Delete</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

<footer class="footer bg-dark text-white py-4">
    <div class="container text-center">
        <p>
            Personal Finance Management System<br>
            © 2024 Provided by Team CG2<br>
            Contact: <a href="mailto:support@yourfinancialsite.com" class="text-success">support@yourfinancialsite.com</a><br>
            Address: Codegym, 23 TT1 Hàm Nghi, Mỹ Đình, Hà Nội<br>
            Website: <a href="http://localhost:8080/" class="text-success">http://localhost:8080/</a>
        </p>
    </div>
</footer>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
