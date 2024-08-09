<%@ page import="java.time.LocalDateTime" %>
<%@ page import="java.time.format.DateTimeFormatter" %><%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 8/3/2024
  Time: 10:12 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>home</title>
    <link rel="icon" href="/img/favicon.png" type="image/x-icon">
    <link rel="stylesheet" type="text/css" href="/view/home/home.css">
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <link rel="stylesheet" type="text/css" href="/view/transaction_management/transaction.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <style>
        .editTransaction {
            display: none;
        }
    </style>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">My Finance Manager</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class=" navbar-collapse" id="navbarNav">
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



<hr>


<section id="carousel_c3ca">
    <div>
        <h1 style="display: flex;justify-content: center;font-size: 3rem;font-family: auto;" class="text-black">Thông
            tin giao dịch</h1>
        <form>
            <select id="productSelect">
                <option value="all">Tất cả</option>
                <c:forEach var="wallets" items="${sessionScope.wallet}">
                    <option value="${wallets.idWallet}">STK:${wallets.codeWallet}</option>
                </c:forEach>
            </select>
        </form>
        <% LocalDateTime now = LocalDateTime.now();
            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
            String formattedDateTime = now.format(formatter);%>
        <select id="productSelects">
            <option value="all">Toàn thời gian</option>
            <option value="<%=formattedDateTime%>">Ngày hôm nay</option>
            <option value="date-range">Date Range</option>
        </select>
        <div id="date-range-filter" style="display: none;">
            <form action="<%=request.getContextPath()%>/showAllTransactionWhereDuration" method="post">
                <label for="start-date">Start Date:</label>
                <input name="dayStart" type="date" id="start-date">
                <label for="end-date">End Date:</label>
                <input name="dayEnd" type="date" id="end-date">
                <input class="bg-teal-500 text-white rounded-md px-4 py-1 hover:bg-teal-600 hover:text-white"
                       type="submit" value="Apply">
            </form>
        </div>
        <table class="table table-bordered table-striped mt-10">
            <tr>
                <th class="text-success text-center initialism">Danh mục</th>
                <th class="text-success text-center initialism">Số tiền</th>
                <th class="text-success text-center initialism">Loại giao dịch</th>
                <th class="text-success text-center initialism">Ngay giao dịch</th>
                <th class="text-success text-center initialism">Ngày tạo</th>
                <th class="text-success text-center initialism">Ngày cập nhật</th>
                <th class="text-success text-center initialism">Ghi chú</th>
            </tr>
            <c:forEach var="transaction" items="${listTransactions}">
                <form action="<%=request.getContextPath()%>/updateTransaction?idTransaction=${transaction.idTransaction}"
                      method="post">
                    <c:if test="${(transaction.type).equals('thu')}">

                        <tr>
                            <td class="text-center bg-success"><c:out value="${transaction.category}"/>
                                <input class="editTransaction bg-success text-center " placeholder="Tên danh mục"
                                       type="text"
                                       name="idDirectory">
                            </td>
                            <td class="bg-success" style="text-align: end"><c:out value="${transaction.money} VND"/>
                                <input class="editTransaction bg-success text-center" placeholder="Số tiền" type=number
                                       name="money">
                            </td>
                            <td class="text-center bg-success"><c:out value="${transaction.type}"/>
                                <select class="editTransaction bg-success text-center "
                                        name="type">
                                    <option disabled selected value="0">loại giao dịch</option>
                                    <option value="thu">thu</option>
                                    <option value="chi">chi</option>
                                </select></td>
                            <td class="text-center bg-success"><c:out value="${transaction.dayTrading}"/>
                                <input
                                        class="editTransaction bg-success text-center " name="dayTrading"
                                        id="dayTrading"
                                        type="date"
                                /></td>
                            <td class="text-center bg-success"><c:out value="${transaction.dateCreated}"/>
                                <input
                                        class="editTransaction bg-success text-center " name="dateCreated"
                                        id="day"
                                        type="date"
                                /></td>
                            <td class="text-center bg-success"><c:out value="${transaction.latestDate}"/>
                                <input
                                        class="editTransaction bg-success text-center " name="latestDate"
                                        id="dayUpDate"
                                        type="date"
                                /></td>
                            <td class="text-center bg-success"><c:out value="${transaction.note}"/>
                                <textarea
                                        placeholder="Mô tả giao dịch" name="note"
                                        class="editTransaction bg-success  text-center"
                                        id="story-output"
                                ></textarea></td>
                            <td class="text-center bg-secondary" style="display: flex;flex-direction: row;width: 100%;">
                                <a href="#" class="form__btn listWallets " id="editTransaction">Chỉnh sửa</a>
                                <input type="submit" class="form__btn listWallets editTransaction " id="oki"
                                       value="Xong">
                                <a class="form__btn listWallets editTransaction " id="done"
                                   href="<%=request.getContextPath()%>/transactionManagement">Hủy</a>
                                <a class="form__btn listWallets "
                                   onclick="dodelete(${transaction.idTransaction})">Xóa</a>
                            </td>
                        </tr>
                    </c:if>
                    <c:if test="${(transaction.type).equals('chi')}">

                        <tr>
                            <td class="text-center bg-danger"><c:out value="${transaction.category}"/>
                                <input class="editTransaction  bg-danger text-center " placeholder="Tên danh mục"
                                       type="text"
                                       name="idDirectory">
                            </td>
                            <td class="bg-danger" style="text-align: end"><c:out value="${transaction.money} VND"/>
                                <input class="editTransaction  bg-danger text-center" placeholder="Số tiền" type=number
                                       name="money">
                            </td>
                            <td class="text-center bg-danger"><c:out value="${transaction.type}"/>
                                <select class="editTransaction  bg-danger text-center "
                                        name="type">
                                    <option disabled selected value="0">loại giao dịch</option>
                                    <option value="thu">thu</option>
                                    <option value="chi">chi</option>
                                </select></td>
                            <td class="text-center bg-danger"><c:out value="${transaction.dayTrading}"/>
                                <input
                                        class="editTransaction  bg-danger text-center " name="dayTrading"
                                        id="dayTrading"
                                        type="date"
                                /></td>
                            <td class="text-center bg-danger"><c:out value="${transaction.dateCreated}"/>
                                <input
                                        class="editTransaction  bg-danger text-center " name="dateCreated"
                                        id="day"
                                        type="date"
                                /></td>
                            <td class="text-center bg-danger"><c:out value="${transaction.latestDate}"/>
                                <input
                                        class="editTransaction  bg-danger text-center " name="latestDate"
                                        id="dayUpDate"
                                        type="date"
                                /></td>
                            <td class="text-center bg-danger"><c:out value="${transaction.note}"/>
                                <textarea
                                        placeholder="Mô tả giao dịch" name="note"
                                        class="editTransaction  bg-danger text-center"
                                        id="story-output"
                                ></textarea></td>
                            <td class="text-center bg-secondary "
                                style="display: flex;flex-direction: row;width: 100%;">
                                <a href="#" class="form__btn  listWallets " id="editTransaction">Chỉnh sửa</a>
                                <input type="submit" class="form__btn listWallets editTransaction " id="oki2"
                                       value="Xong">
                                <a class="form__btn listWallets editTransaction " id="done2"
                                   href="<%=request.getContextPath()%>/transactionManagement">Hủy</a>
                                <a class="form__btn listWallets "
                                   onclick="dodelete(${transaction.idTransaction})">Xóa</a>
                            </td>
                        </tr>
                    </c:if>
                </form>
            </c:forEach>
            <c:if test="${limbAndAutumn != null}">
                <tr>
                    <td class="bg-info text-center">Tổng chi</td>
                    <td class="text-danger" style="text-align: end">
                        <pre> ${limbAndAutumn[0]} VND</pre>
                    </td>
                </tr>
                <tr>
                    <td class="bg-info text-center">Tổng thu</td>
                    <td class="text-success" style="text-align: end">
                        <pre>+${limbAndAutumn[1]} VND</pre>
                    </td>
                </tr>
            </c:if>
        </table>
    </div>
    <div id="addTransactionForm" style="width: 50%;margin-left: 25%;margin-top: 5%;display: none">
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
            id="story-outputs"
    ></textarea>
                </div>
                <div class="mt-4 flex justify-end">
                    <input class="bg-teal-500 text-white rounded-md px-4 py-1 hover:bg-teal-600 hover:text-white"
                           id="generate-button" type="submit">
                </div>
            </div>
        </form>
    </div>
    <div class="addWallet">
        <STRONG class="mt--addWallet">Bạn muốn thêm khoản giao dịch?</STRONG><br>
        <p class="mt--addWallet2">Thêm khoản giao dịch để quản lý để quản lý theo dõi dòng tiền của mình.</p>
        <a id="addTransaction" class="listWallets">Thêm giao dịch</a>
    </div>
</section>
<footer class="u-align-center u-clearfix footer bg-dark text-white py-4" id="sec-aa0c" >
    <div class="u-clearfix">
        <p class="u-align-center u-small-text u-text">
            <a class="u-active-none u-border-none u-btn u-button-link u-button-style-a " data-href="#"> Trang quản lý
                tài chính cá nhân&nbsp;<br>© 2024 Tài liệu được cung cấp bởi TeamCG2<br>&nbsp;Liên hệ:
                [support@yourfinancialsite.com]<br>&nbsp;Địa chỉ: [Codegym, 23 TT1 Hàm Nghi,Mỹ đình, Hà Nội]&nbsp;<br>Website:
                [Đường dẫn]
                ---
            </a>
        </p>
    </div>
</footer>
<script>
    document.addEventListener('DOMContentLoaded', () => {
        const addTransaction = document.getElementById('addTransaction');
        const addTransactionForm = document.getElementById('addTransactionForm');
        addTransaction.addEventListener('click', () => {
            addTransactionForm.style.display = 'block';
        });
    });
    document.addEventListener('DOMContentLoaded', () => {

        const editButtons = document.querySelectorAll('.form__btn.listWallets#editTransaction');
        editButtons.forEach(button => {
            button.addEventListener('click', (event) => {
                event.preventDefault();
                const row = button.closest('tr');

                const allEditFields = document.querySelectorAll('.editTransaction');
                allEditFields.forEach(field => {

                    if (!row.contains(field)) {
                        field.style.display = 'none';
                    }
                });

                const fieldsInRow = row.querySelectorAll('.editTransaction');
                fieldsInRow.forEach(field => field.style.display = 'block');
            });
        });
    });

    function dodelete(id) {
        event.preventDefault();
        var r = confirm("Bạn có chắc muốn xóa giao dịch này?");
        if (r == true) {
            window.location = "<%=request.getContextPath()%>/deleteTransaction?idTransaction=" + id;
        }
    };
    document.getElementById('productSelect').addEventListener('change', function () {
        const idWallet = this.value;
        if (idWallet !== 'all') {
            window.location.href = "showAllTransactionWhereId?idWallet=" + idWallet;
        }
        if (idWallet === 'all') {
            window.location.href = "transactionManagement";
        }
    });
    document.getElementById('productSelects').addEventListener('change', function () {
        const day = this.value;
        if (day === 'all') {
            window.location.href = "<%=request.getContextPath()%>/transactionManagement";
        } else if (day === '<%=formattedDateTime%>') {
            window.location.href = "showTransactionWhereDayNow?dayNow=" + day;
        }
        if (day === 'date-range') {
            document.getElementById('date-range-filter').style.display = 'block';
        } else {
            document.getElementById('date-range-filter').style.display = 'none';
        }
    });
</script>
</body>
</html>