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
    <title>User Info Edit</title>
    <link rel="stylesheet" href="<c:url value='/css/h_f.css'/>">
    <link rel="stylesheet" href="<c:url value='/css/user_info.css'/>">
    <link rel="icon" href="./img/DM_tab_logo.png">
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
            <a href="<c:url value='${logInOutLink}'/>">${logInOutTxt}</a>
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
            <h1>프로필 수정</h1>
            <form class="edit-profile-form" form action="updateResult" method="POST">
                <div class="user-box">
                    <input type="text" id="username" name="u_name" required />
                    <label for="username">이름</label>
                </div>
                <div class="user-box">
                    <input type="email" id="email" name="u_email" required />
                    <label for="email">이메일</label>
                </div>
                <div class="user-box">
                    <input type="text" id="pw" name="u_pw" value="${u_pw}" >
                    <label for="pw">비밀번호</label>
                </div>
                <div class="user-box">
                    <input type="text" id="cpw" name="u_pw" value="${u_pw}" >
                    <label for="cpw">비밀번호 확인</label>
                </div>
                <div class="user-box">
                    <input type="tel" id="phone" name="u_phone" value="${u_phone}" >
                    <label for="phone">전화번호</label>
                </div>
                <button type="submit" class="submit">프로필 저장</button>
                <button type="button" id="openPopup" class="delete-account">회원 탈퇴</button>
            </form>
        </div>



        <!-- 레이어팝업 -->
        <div id="popupOverlay" class="overlay">
            <div id="popupContent" class="popup">
                <p>정말 탈퇴하시겠습니까?</p>
                <button id="closePopup">탈퇴하기</button>
            </div>
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
    <script src="./js/user_info.js"></script>
    <script src="./js/h_f.js"></script>
</body>

</html>
<script>
    // 레이어팝업 부분
    document.addEventListener('DOMContentLoaded', function () {
        const openPopupButton = document.getElementById('openPopup');
        const popupOverlay = document.getElementById('popupOverlay');
        const closePopupButton = document.getElementById('closePopup');

        openPopupButton.addEventListener('click', function () {
            popupOverlay.style.display = 'flex';
        });

        closePopupButton.addEventListener('click', function () {
            popupOverlay.style.display = 'none';
        });

        popupOverlay.addEventListener('click', function (event) {
            if (event.target === popupOverlay) {
                popupOverlay.style.display = 'none';
            }
        });
    });


    function toggleMenu() {
        const menu = document.getElementById('sideMenu');
        const overlay = document.getElementById('overlay');
        const hamburger = document.querySelector('.hamburger');
        menu.classList.toggle('active');
        overlay.classList.toggle('active');
        hamburger.classList.toggle('active');
    }

    function closeMenu() {
        const menu = document.getElementById('sideMenu');
        const overlay = document.getElementById('overlay');
        const hamburger = document.querySelector('.hamburger');
        menu.classList.remove('active');
        overlay.classList.remove('active');
        hamburger.classList.remove('active');
    }

    const messages = document.querySelectorAll('.headera .message');
    let currentIndex = 0;

    function showNextMessage() {
        messages[currentIndex].classList.remove('active');
        messages[currentIndex].classList.add('prev');

        currentIndex = (currentIndex + 1) % messages.length;

        messages[currentIndex].classList.remove('next');
        messages[currentIndex].classList.add('active');

        const nextIndex = (currentIndex + 1) % messages.length;
        messages[nextIndex].classList.remove('prev');
        messages[nextIndex].classList.add('next');
    }

    setInterval(showNextMessage, 5000);





    function toggleMenu() {
        const menu = document.getElementById('sideMenu');
        const overlay = document.getElementById('overlay');
        const hamburger = document.querySelector('.hamburger');
        menu.classList.toggle('active');
        overlay.classList.toggle('active');
        hamburger.classList.toggle('active');
    }

    function closeMenu() {
        const menu = document.getElementById('sideMenu');
        const overlay = document.getElementById('overlay');
        const hamburger = document.querySelector('.hamburger');
        menu.classList.remove('active');
        overlay.classList.remove('active');
        hamburger.classList.remove('active');
    }
</script>