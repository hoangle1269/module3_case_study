<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 8/5/2024
  Time: 10:18 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="Case_Module3.login.model.DTO.WalletDTO" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="/view/e_wallets/rechargeWallet.css">
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
</nav>
</div></header>
<section id="carousel_c3ca">
    <div class="container">
        <div class="payment">

            <div class="payment__shadow-dots"></div>
            <div class="payment__dots">
                <svg width="65" height="115" viewBox="0 0 65 115" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <circle cx="17.5" cy="2.5" r="2.5" fill="#E0ECF7"/>
                    <circle cx="32.5" cy="2.5" r="2.5" fill="#E0ECF7"/>
                    <circle cx="47.5" cy="2.5" r="2.5" fill="#E0ECF7"/>
                    <circle cx="2.5" cy="2.5" r="2.5" fill="#E0ECF7"/>
                    <circle cx="17.5" cy="12.5" r="2.5" transform="rotate(90 17.5 12.5)" fill="#E0ECF7"/>
                    <circle cx="32.5" cy="12.5" r="2.5" transform="rotate(90 32.5 12.5)" fill="#E0ECF7"/>
                    <circle cx="47.5" cy="12.5" r="2.5" transform="rotate(90 47.5 12.5)" fill="#E0ECF7"/>
                    <circle cx="17.5" cy="42.5" r="2.5" transform="rotate(90 17.5 42.5)" fill="#E0ECF7"/>
                    <circle cx="47.5" cy="62.5" r="2.5" transform="rotate(90 47.5 62.5)" fill="#E0ECF7"/>
                    <circle cx="62.5" cy="2.5" r="2.5" transform="rotate(90 62.5 2.5)" fill="#E0ECF7"/>
                    <circle cx="47.5" cy="82.5" r="2.5" transform="rotate(90 47.5 82.5)" fill="#E0ECF7"/>
                    <circle cx="62.5" cy="22.5" r="2.5" transform="rotate(90 62.5 22.5)" fill="#E0ECF7"/>
                    <circle cx="47.5" cy="42.5" r="2.5" transform="rotate(90 47.5 42.5)" fill="#E0ECF7"/>
                    <circle cx="32.5" cy="42.5" r="2.5" transform="rotate(90 32.5 42.5)" fill="#E0ECF7"/>
                    <circle cx="32.5" cy="62.5" r="2.5" transform="rotate(90 32.5 62.5)" fill="#E0ECF7"/>
                    <circle cx="17.5" cy="22.5" r="2.5" transform="rotate(90 17.5 22.5)" fill="#E0ECF7"/>
                    <circle cx="32.5" cy="22.5" r="2.5" transform="rotate(90 32.5 22.5)" fill="#E0ECF7"/>
                    <circle cx="47.5" cy="22.5" r="2.5" transform="rotate(90 47.5 22.5)" fill="#E0ECF7"/>
                    <circle cx="17.5" cy="52.5" r="2.5" transform="rotate(90 17.5 52.5)" fill="#E0ECF7"/>
                    <circle cx="17.5" cy="72.5" r="2.5" transform="rotate(90 17.5 72.5)" fill="#E0ECF7"/>
                    <circle cx="47.5" cy="72.5" r="2.5" transform="rotate(90 47.5 72.5)" fill="#E0ECF7"/>
                    <circle cx="62.5" cy="12.5" r="2.5" transform="rotate(90 62.5 12.5)" fill="#E0ECF7"/>
                    <circle cx="47.5" cy="92.5" r="2.5" transform="rotate(90 47.5 92.5)" fill="#E0ECF7"/>
                    <circle cx="62.5" cy="32.5" r="2.5" transform="rotate(90 62.5 32.5)" fill="#E0ECF7"/>
                    <circle cx="47.5" cy="52.5" r="2.5" transform="rotate(90 47.5 52.5)" fill="#E0ECF7"/>
                    <circle cx="32.5" cy="52.5" r="2.5" transform="rotate(90 32.5 52.5)" fill="#E0ECF7"/>
                    <circle cx="17.5" cy="32.5" r="2.5" transform="rotate(90 17.5 32.5)" fill="#E0ECF7"/>
                    <circle cx="32.5" cy="32.5" r="2.5" transform="rotate(90 32.5 32.5)" fill="#E0ECF7"/>
                    <circle cx="47.5" cy="32.5" r="2.5" transform="rotate(90 47.5 32.5)" fill="#E0ECF7"/>
                    <circle cx="17.5" cy="62.5" r="2.5" transform="rotate(90 17.5 62.5)" fill="#E0ECF7"/>
                    <circle cx="17.5" cy="82.5" r="2.5" transform="rotate(90 17.5 82.5)" fill="#E0ECF7"/>
                    <circle cx="2.5" cy="92.5" r="2.5" transform="rotate(90 2.5 92.5)" fill="#E0ECF7"/>
                    <circle cx="2.5" cy="112.5" r="2.5" transform="rotate(90 2.5 112.5)" fill="#E0ECF7"/>
                    <circle cx="2.5" cy="72.5" r="2.5" transform="rotate(90 2.5 72.5)" fill="#E0ECF7"/>
                    <circle cx="2.5" cy="82.5" r="2.5" transform="rotate(90 2.5 82.5)" fill="#E0ECF7"/>
                    <circle cx="2.5" cy="102.5" r="2.5" transform="rotate(90 2.5 102.5)" fill="#E0ECF7"/>
                    <circle cx="2.5" cy="12.5" r="2.5" transform="rotate(90 2.5 12.5)" fill="#E0ECF7"/>
                    <circle cx="2.5" cy="42.5" r="2.5" transform="rotate(90 2.5 42.5)" fill="#E0ECF7"/>
                    <circle cx="2.5" cy="22.5" r="2.5" transform="rotate(90 2.5 22.5)" fill="#E0ECF7"/>
                    <circle cx="2.5" cy="52.5" r="2.5" transform="rotate(90 2.5 52.5)" fill="#E0ECF7"/>
                    <circle cx="2.5" cy="32.5" r="2.5" transform="rotate(90 2.5 32.5)" fill="#E0ECF7"/>
                    <circle cx="2.5" cy="62.5" r="2.5" transform="rotate(90 2.5 62.5)" fill="#E0ECF7"/>
                </svg>
            </div>

            <div class="card">

                <div class="card__visa">
                    <svg class="visa" enable-background="new 0 0 291.764 291.764" version="1.1" viewbox="5 70 290 200"
                         xml:space="preserve" xmlns="http://www.w3.org/2000/svg">
          <path class="svgcolor"
                d="m119.26 100.23l-14.643 91.122h23.405l14.634-91.122h-23.396zm70.598 37.118c-8.179-4.039-13.193-6.765-13.193-10.896 0.1-3.756 4.24-7.604 13.485-7.604 7.604-0.191 13.193 1.596 17.433 3.374l2.124 0.948 3.182-19.065c-4.623-1.787-11.953-3.756-21.007-3.756-23.113 0-39.388 12.017-39.489 29.204-0.191 12.683 11.652 19.721 20.515 23.943 9.054 4.331 12.136 7.139 12.136 10.987-0.1 5.908-7.321 8.634-14.059 8.634-9.336 0-14.351-1.404-21.964-4.696l-3.082-1.404-3.273 19.813c5.498 2.444 15.609 4.595 26.104 4.705 24.563 0 40.546-11.835 40.747-30.152 0.08-10.048-6.165-17.744-19.659-24.035zm83.034-36.836h-18.108c-5.58 0-9.82 1.605-12.236 7.331l-34.766 83.509h24.563l6.765-18.08h27.481l3.51 18.153h21.664l-18.873-90.913zm-26.97 54.514c0.474 0.046 9.428-29.514 9.428-29.514l7.13 29.514h-16.558zm-160.86-54.796l-22.931 61.909-2.498-12.209c-4.24-14.087-17.533-29.395-32.368-36.999l20.998 78.33h24.764l36.799-91.021h-24.764v-0.01z"
                fill="#FFFFFF"></path>
                        <path class="svgtipcolor"
                              d="m51.916 111.98c-1.787-6.948-7.486-11.634-15.226-11.734h-36.316l-0.374 1.686c28.329 6.984 52.107 28.474 59.821 48.688l-7.905-38.64z"
                              fill="#FFFFFF"></path>
          </svg>
                </div>

                <c:forEach var="wallet" items="${wallet}">
                    <c:if test="${wallet.idWallet != null}">
                        <c:set var="idWallet" value="${wallet.idWallet}"/>
                        <c:set var="formattedCode" value="${wallet.codeWallet}"/>
                        <c:set var="codeWallet" value="${WalletDTO.formatCardNumber(formattedCode)}"/>
                        <c:set var="nameWallet" value="${wallet.nameWallet}"/>
                        <c:set var="expirationDate" value="${wallet.expirationDate}"/>
                        <c:set var="cvv" value="${wallet.cvv}"/>
                        <c:set var="money" value="${wallet.money}"/>
                        <c:set var="check" value="editSection"/>
                    </c:if>
                    <c:if test="${wallet.idWallet == null}">
                        <c:set var="check" value="aaa"/>
                        <c:set var="nameWallet" value="Mr.Hien"/>
                        <c:set var="codeWallet" value="0000&nbsp;0000&nbsp;0000&nbsp;0000"/>
                    </c:if>
                </c:forEach>
                <div class="card__number">${codeWallet}</div>
                <div class="card__name">
                    <h3>Card Holder</h3>
                    <p id="card-name">${nameWallet}</p>
                </div>

                <div class="card__expiry">
                    <h3>Valid Thru</h3>
                    <p>
                        <span id="month">${expirationDate}</span>
                    </p>
                </div>
            </div>

            <div class="form">
                <h2 class="sodu">Số dư</h2>
                <div class="form__detail bg__money">
                    <labe>
                        <ion-icon name="information-circle" class="info"></ion-icon>
                    </labe>
                    <ion-icon name="lock-closed-outline"></ion-icon>
                    <strong class="name">${money}</strong>
                </div>
            </div>
            <h2 class="money">Nạp tiền</h2>
            <form class="subscribe-form" action="<%=request.getContextPath()%>/insetWalletMoney?idWallet=${idWallet}" method="post">
                <input type="number" name="money" placeholder="How much to deposit" class="subscribe-input">
                <input type="submit" class="form__btn" value="Nạp">
            </form>
        </div>
    </div>
</section>
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
