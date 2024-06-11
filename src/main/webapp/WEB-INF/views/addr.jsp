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
    <title>Address Edit</title>
    <link rel="stylesheet" href="<c:url value='/css/h_f.css'/>">
    <link rel="stylesheet" href="<c:url value='/css/mypage_address.css'/>">
    <link rel="icon" href="./img/DM_Logo.png">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
    <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@200..700&display=swap" rel="stylesheet">
</head>

<body>
    <header class="headera">
        <div class="message active">전 상품 무료 배송</div>
        <div class="message next">환영합니다. 닥터마틴 홈페이지입니다.</div>
        <div class="message prev">신규 가입 10% 혜택</div>
    </header>
    <header class="headerb">
        <div class="logo">
            <a href="<c:url value='/'/> "><img src="./img/DM_Logo.png" alt="Dr. Martens Logo"></a>
        </div>
        <nav class="menu">
            <div class="dropdown">
                <a href="<c:url value='/category'/> ">여성</a>
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
            <a href="#" class="mypage">마이페이지<img src="./img/mypage_icons/Icon_mypage.png" alt="My Page Icon"></a>
            <div class="search">
                <input type="text" placeholder="Search...">
                <button>검색</button>
            </div>
        </div>
    </header>


    <div class="container">
        <header class="header">
            <h1>MY PAGE</h1>
        </header>

        <div class="content">
            <aside class="sidebar">
                <nav>
                    <h2>나의 쇼핑</h2>
                    <ul>
                        <li><a href="#">주문/배송</a></li>
                        <li><a href="#">교환/반품</a></li>
                        <li><a href="#">최근 본 상품</a></li>
                        <li><a href="<c:url value='/addr'/> ">배송 주소록</a></li>
                    </ul>
                    <h2>나의 활동</h2>
                    <ul>
                        <li><a href="#">1:1문의</a></li>
                        <li><a href="#">상품문의</a></li>
                        <li><a href="#">상품후기</a></li>
                    </ul>
                    <h2>나의 정보</h2>
                    <ul>
                        <li><a href="<c:url value='/update'/> ">회원정보 수정</a></li>
                    </ul>
                </nav>
            </aside>

            <main class="main-content">
                <section class="address-history">
                    <h3>최근 주소록</h3>
<%--                    <p class="no-history">등록하신 자주쓰는 배송지가 없습니다.</p>--%>
                    <table>
                        <thead>
                        <tr>
                            <th class="no">주소</th>
                            <th class="title">상세주소</th>
                            <th class="writer">집코드</th>
                            <th class="regdate">이름</th>
                            <th class="viewcnt">번호</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="userAddrDto" items="${user}" varStatus="status">
                            <tr>
                                <td class="no">${user.get(status.index).a_addr}</td>
                                <td class="title">${user.get(status.index).a_addr_detail}</td>
                                <td class="writer">${user.get(status.index).a_zipcode}</td>
                                <td class="regdate">${user.get(status.index).userDto.u_name}</td>
                                <td class="viewcnt">${user.get(status.index).userDto.u_phone}</td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                    <div class="register-button" onclick="showPopup()">등록</div>
                </section>
            </main>
        </div>
    </div>

    <!-- 레이어 팝업 -->


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
    <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
    <script>const messages = document.querySelectorAll('.headera .message');
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
    window.name = "addr"
    function showPopup() {
        window.open("/addrPop", "a", "width=440, height=640, left=100, top=50");
    }





    </script>
</body>

</html>