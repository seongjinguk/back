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
    <title>Sign Up</title>
    <link rel="stylesheet" href="<c:url value='/css/signup.css'/>">
    <link rel="stylesheet" href="<c:url value='/css/h_f.css'/>">
    <link rel="icon" href="./img/DM_Logo.png">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
    <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@200..700&display=swap" rel="stylesheet">
</head>
<body>
<header class="header_cover">
    <header class="headera">
        <div class="message active">전 상품 무료 배송</div>
        <div class="message next">환영합니다. Mr. Marten's 홈페이지입니다.</div>
        <div class="message prev">신규 가입 10% 혜택</div>
    </header>
    <header class="headerb">
        <div class="logo">
            <a href="<c:url value='/'/>"><img src="./img/DM_Logo.png" alt="Dr. Martens Logo"></a>
        </div>
        <div class="menu">
            <div class="dropdown">
                <a href="<c:url value='/category'/>">여성</a>
                <div class="dropdown-content">
                    <a href="<c:url value='/category'/>">Narrow</a>
                    <a href="<c:url value='/category'/>">Medium</a>
                    <a href="<c:url value='/category'/>">Wide</a>
                </div>
            </div>
            <div class="dropdown">
                <a href="<c:url value='/category'/>">남성</a>
                <div class="dropdown-content">
                    <a href="<c:url value='/category'/>">Narrow</a>
                    <a href="<c:url value='/category'/>">Medium</a>
                    <a href="<c:url value='/category'/>">Wide</a>
                </div>
            </div>
            <div class="dropdown">
                <a href="<c:url value='/category'/>">공용</a>
                <div class="dropdown-content">
                    <a href="<c:url value='/category'/>">Narrow</a>
                    <a href="<c:url value='/category'/>">Medium</a>
                    <a href="<c:url value='/category'/>">Wide</a>
                </div>
            </div>
            <a href="<c:url value='/notice/list'/>">Q&A</a>
            <a href="<c:url value='/category'/>" class="sale">SALE</a>
            <a href="<c:url value='/category'/>" class="new-in">NEW IN</a>
            <a href="<c:url value='/category'/>">BEST</a>
        </div>
        <div class="right-menu">
            <a href="<c:url value='/login'/>">로그인/회원가입</a>
            <a href="<c:url value='/cart'/>">장바구니</a>
            <a href="<c:url value='/mypage'/>" class="mypage">마이페이지<img src="./img/mypage_icons/Icon_mypage.png" alt="My Page Icon"></a>
            <div class="search">
                <input type="text" placeholder="Search...">
                <button>검색</button>
            </div>
        </div>
        <div class="hamburger" onclick="toggleMenu()">
            <div></div>
            <div></div>
            <div></div>
        </div>
    </header>
</header>

<div class="overlay" id="overlay" onclick="closeMenu()"></div>

<div class="side-menu" id="sideMenu">
    <div class="search">
        <input type="text" placeholder="Search...">
        <button>검색</button>
    </div>
    <nav>
        <ul>
            <li><a href="<c:url value='/category'/>">여성</a></li>
            <li><a href="<c:url value='/category'/>">남성</a></li>
            <li><a href="<c:url value='/category'/>">액세서리</a></li>
            <li><a href="<c:url value='/category'/>">SALE</a></li>
            <li><a href="<c:url value='/category'/>">NEW IN</a></li>
            <li><a href="<c:url value='/category'/>">BEST</a></li>
            <li class="divider"></li>
            <li><a href="<c:url value='/login'/>">로그인/회원가입</a></li>
            <li><a href="<c:url value='/cart'/>">장바구니</a></li>
            <li><a href="<c:url value='/mypage'/>">마이페이지</a></li>
        </ul>
    </nav>
</div>


<main>
    <div class="edit-profile-container">
        <h1>신규 회원가입</h1>
        <form class="edit-profile-form" action="/register/save" method="POST">
            <div class="user-box">
                <input type="text" id="userid" name="u_id" onkeyup="checkReg(event)" required />
                <label for="userid">아이디</label>
            </div>
            <div id="msg">
                <c:if test="${not empty param.msg}">
                    <i class="fa fa-exclamation-circle"> ${param.msg}</i>
                </c:if>
            </div>
            <div class="user-box password-box">
                <input type="password" id="password" name="u_pw" onkeyup="checkReg(event)" required />
                <label for="password">비밀번호</label>
                <span class="toggle-password" onclick="togglePassword()">👁️</span>
            </div>
            <div class="user-box">
                <input type="text" id="name" name="u_name" required />
                <label for="name">이름</label>
            </div>
            <div class="user-box">
                <input type="date" id="birthday" name="u_birth" required />
                <label for="birthday" class="fixed-label">생일</label>
            </div>
            <div class="user-box">
                <input type="tel" id="phone" name="u_phone" required />
                <label for="phone">전화번호</label>
            </div>
            <div class="user-box">
                <input type="email" id="email" name="u_email" required />
                <label for="email">이메일</label>
            </div>


            <!-- 여기부터 수정본 -->
            <div class="options">
                <div class="gender">
                    <h2>성별</h2>
                    <div class="gender_select">
                        <input type="radio" id="male" name="u_gender" value="male" required />
                        <label for="male">남성</label>
                        <input type="radio" id="female" name="u_gender" value="female" required />
                        <label for="female">여성</label>
                    </div>
                </div>
                <div class="foot-shape">
                    <h2>발 형태</h2>
                    <select id="foot-shape" name="u_foot_shape" required>
                        <option value="narrow">좁음</option>
                        <option value="normal">보통</option>
                        <option value="wide">넓음</option>
                    </select>
                </div>
            </div>
            <!-- 여기까지 수정본 -->


            <button type="submit" class="submit">회원 가입</button>
        </form>
    </div>
</main>


<footer class="footer">
    <div class="footer-top">
        <a>이용약관</a>
        <a>개인정보처리방침</a>
        <a>CONTACT</a>
        <a>사이트맵</a>
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
                <a href="<c:url value='/'/>"><img src="./img/footer_sns_icons/icon_sns_facebook 1.png" alt="Facebook"></a>
                <a href="<c:url value='/'/>"><img src="./img/footer_sns_icons/icon_sns_instagram 1.png" alt="Instagram"></a>
                <a href="<c:url value='/'/>"><img src="./img/footer_sns_icons/icon_sns_twitter 1.png" alt="Twitter"></a>
                <a href="<c:url value='/'/>"><img src="./img/footer_sns_icons/icon_sns_youtube 1.png" alt="YouTube"></a>
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
<script src="./js/signup.js"></script>
<script src="./js/h_f.js"></script>
</body>

</html>