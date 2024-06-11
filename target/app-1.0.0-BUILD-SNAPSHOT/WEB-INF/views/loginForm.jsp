<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="logInOutLink" value="${ sessionScope.u_id==null ? '/login':'/loginout' }" />
<c:set var="logInOutTxt" value="${ sessionScope.u_id==null ? '로그인/회원가입':'로그아웃' }" />
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login & Signup</title>
    <link rel="stylesheet" href="<c:url value='/css/h_f.css'/>">
    <link rel="stylesheet" href="<c:url value='/css/login.css'/>">
    <link rel="icon" href="./img/DM_tab_logo.png">
    <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@200..700&display=swap" rel="stylesheet">
</head>

<body>
<header class="headera">
    <div class="message active">전 상품 무료 배송</div>
    <div class="message next">환영합니다. Dr. Martens' Copy 홈페이지입니다.</div>
    <div class="message prev">신규 가입 10% 혜택</div>
</header>
<header class="headerb">
    <div class="logo">
        <a href="<c:url value='/'/>"><img src="./img/DM_Logo.png" alt="Dr. Martens Logo"></a>
    </div>
    <nav class="menu">
        <div class="dropdown">
            <a href="<c:url value='/category'/>">여성</a>
            <div class="dropdown-content">
                <a href="#">슈즈</a>
                <a href="#">부츠</a>
                <a href="#">샌들</a>
            </div>
        </div>
        <div class="dropdown">
            <a href="#">남성</a>
            <div class="dropdown-content">
                <a href="#">슈즈</a>
                <a href="#">부츠</a>
                <a href="#">샌들</a>
            </div>
        </div>
        <div class="dropdown">
            <a href="#">액세서리</a>
            <div class="dropdown-content">
                <a href="#">가방</a>
                <a href="#">기타</a>
            </div>
        </div>
        <a href="#" class="sale">SALE</a>
        <a href="#" class="new-in">NEW IN</a>
        <a href="#">BEST</a>
    </nav>
    <div class="right-menu">
        <a href="#">로그인/회원가입</a>
        <a href="#">장바구니</a>
        <a href="<c:url value='/mypage'/>" class="mypage">마이페이지<img src="./img/mypage_icons/Icon_mypage.png" alt="My Page Icon"></a>
        <div class="search">
            <input type="text" placeholder="Search...">
            <button>검색</button>
        </div>
    </div>
</header>


<div class="container">
    <div class="header">
        <h2>회원 로그인</h2>
    </div>


    <div class="form-section">
        <form name="form" lass="form-section">
            <div id="msg" class="user-box">
                <c:if test="${not empty param.msg}">
                    <i class="fa fa-exclamation-circle"> ${param.msg}</i>
                </c:if>
            </div>
            <div class="user-box">
                <input type="text" id="id" name="u_id" value="${ cookie.u_id.value }">
                <label for="id">아이디</label>
            </div>
            <div class="user-box">
                <input type="password" id="pw" name="u_pw">
                <label for="pw">비밀번호</label>
            </div>
            <div class="checkbox-container">
                <input type="checkbox" id="r_id" name="u_rid"  ${empty cookie.u_id.value?"":"checked" }
                <label for="r_id">아이디 자동저장</label>
            </div>
            <button class="login-btn" formaction="/login" formmethod="POST">로그인</button>
            <button class="signup-btn"formaction="/register/join" formmethod="GET">회원가입</button>

        </form>
    </div>
</div>


<footer class="footer">
    <div class="footer-top">
        <a href="#">이용약관</a>
        <a href="#">개인정보처리방침</a>
        <a href="#">CONTACT</a>
        <a href="#">사이트맵</a>
    </div>
    <div class="footer-medium">
        <div class="left">
            <p>닥터마틴에어웨어코리아(주)</p>
            <p>서울특별시 강남구 도산대로 318 (SBE타워) 14층 12호</p>
            <p>사업자번호: 123-45-67890 [사업자정보확인]</p>
            <p>통신판매업신고: 2024-서울아01234호</p>
            <p>개인정보관리책임자: 홍길동</p>
            <p>대표이사: 홍길동/Kill-Dong Hong</p>
            <p>이메일: gytae123@gmail.com</p>
            <p>팩스: 050-1234-5678</p>
        </div>
        <div class="right">
            <div class="social-icons">
                <a href="#"><img src="./img/footer_sns_icons/icon_sns_facebook 1.png" alt="Facebook"></a>
                <a href="#"><img src="./img/footer_sns_icons/icon_sns_instagram 1.png" alt="Instagram"></a>
                <a href="#"><img src="./img/footer_sns_icons/icon_sns_twitter 1.png" alt="Twitter"></a>
                <a href="#"><img src="./img/footer_sns_icons/icon_sns_youtube 1.png" alt="YouTube"></a>
            </div>
            <div class="contact">
                <p>고객센터: 1544-6486 (10AM - 5PM 점심시간: 12:00 - 13:00)</p>
            </div>
        </div>
    </div>
    <div class="footer-bottom">
        <p>All Images and Contents Copyright © 2024 Dr.Martens-Airwair Korea. All Rights Reserved.</p>
    </div>
</footer>



<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script src="./js/login_signup.js"></script>
</body>

</html>