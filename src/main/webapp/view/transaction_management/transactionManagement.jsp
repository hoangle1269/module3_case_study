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
    <title>home</title>
    <link rel="stylesheet" type="text/css" href="/view/home/home.css">
    <script src="https://cdn.tailwindcss.com"></script>
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
                <li class="u-nav-item"><a class="u-button-style u-nav-link" href="#">Danh mục</a>
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
</nav>
</div></header>
<section id="carousel_c3ca">
    <div style="width: 50%;margin-left: 25%;margin-top: 5%">
        <form action="<%=request.getContextPath()%>/addImformationTransactionMnagement" method="post">
            <div class="mt-4 flex flex-col bg-gray-900 rounded-lg p-4">
                <h2 class="text-white font-bold text-2xl">Quản Lý Giao Dịch</h2>

                <div class="mt-4">
                    <label class="text-white" for="title">Nhập Mã Danh Mục</label>
                    <input id="title" placeholder="Nhập mục giao dịch" name="MaDanhMuc"
                           class="w-full bg-gray-800 rounded-md border-gray-700 text-white px-2 py-1" type="text">
                </div>

                <div class="mt-4">
                    <label class="text-white" for="description">Nhập Số Tiền</label>
                    <input placeholder="Nhập số tiền" type="number" pattern="^[\d]+$" name="money"
                           class="w-full bg-gray-800 rounded-md border-gray-700 text-white px-2 py-1"
                           id="description">
                </div>
                <div class="mt-4">
                    <label class="text-white" for="description">Nhập STK Ví Muốn Sử dụng</label>
                    <input placeholder="Mã code" type="number" pattern="^[\d]+$"
                           class="w-full bg-gray-800 rounded-md border-gray-700 text-white px-2 py-1" name="codeWallet"
                           id="description1">
                </div>
                <div class="mt-4 flex flex-row space-x-2">
                    <div class="flex-1">
                        <select class="bg-gray-700 text-gray-200 border-0 rounded-md p-2 mb-4 focus:bg-gray-600 focus:outline-none focus:ring-1 focus:ring-blue-500 transition ease-in-out duration-150"
                                name="type">
                            <option disabled selected value="0">loại giao dịch</option>
                            <option value="thu">thu</option>
                            <option value="chi">chi</option>
                        </select>
                    </div>
                </div>

                <div class="mt-4 flex flex-col bg-gray-900 rounded-lg">
                    <label class="text-white" for="description"> Ngày Giao Dịch</label>
                    <input
                            class="bg-gray-700 text-gray-200 border-0 rounded-md p-2 w-44" name="dayTrading"
                            id="age"
                            type="date"
                    />
                </div>
                <div class="mt-4">
    <textarea
            placeholder="Mô tả giao dịch" name="note"
            class="w-full bg-gray-800 rounded-md border-gray-700 text-white px-2 py-1 h-48 text-left overflow-auto resize-none"
            id="story-output"
    ></textarea>
                </div>
                <div class="mt-4 flex justify-end">
                    <input class="bg-teal-500 text-white rounded-md px-4 py-1 hover:bg-teal-600 hover:text-white"
                           id="generate-button" type="submit">
                </div>
            </div>
        </form>
    </div>
</section>
<footer class="footer u-align-center u-clearfix" id="sec-aa0c">
    <div class="container u-clearfix">
        <p class="u-align-center u-small-text u-text">
            <span class="u-active-none u-border-none u-btn u-button-link u-button-style-a" href="#">
                Trang quản lý tài chính cá nhân<br>
                © 2024 Tài liệu được cung cấp bởi Team CG2<br>
                Liên hệ: <a href="mailto:support@yourfinancialsite.com">support@yourfinancialsite.com</a><br>
                Địa chỉ: Codegym, 23 TT1 Hàm Nghi, Mỹ Đình, Hà Nội<br>
                Website: <a href="http://localhost:8080/">http://localhost:8080/</a>
            </span>
        </p>
    </div>
</footer>
<%--<script>--%>
<%--    document.querySelector('form').addEventListener('submit', function(e) {--%>
<%--        const input = document.getElementById('transaction_date');--%>
<%--        const dateValue = input.value; --%>
<%--        if (dateValue) {--%>
<%--            const [year, month, day] = dateValue.split('-');--%>
<%--            const formattedDate = `${year}/${month}/${day}`; --%>
<%--            console.log('Ngày giao dịch:', formattedDate);--%>

<%--            // Thay đổi giá trị của input trước khi gửi form nếu cần--%>
<%--            input.value = formattedDate;--%>
<%--        }--%>
<%--    });--%>
<%--</script>--%>

</body>
</html>
