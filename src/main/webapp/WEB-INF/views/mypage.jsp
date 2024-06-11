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
    <title>My Page</title>
    <link rel="stylesheet" href="<c:url value='/css/h_f.css'/>">
    <link rel="stylesheet" href="<c:url value='/css/mypage.css'/>">
    <link rel="icon" href="./img/DM_tab_logo.png">
    <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@200..700&display=swap" rel="stylesheet">
<!DOCTYPE html>
<html lang="en">

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


    <div class="container">
        <header class="header">
            <h1>MY PAGE</h1>
        </header>

        <div class="content">
            <aside class="sidebar">
                <nav>
                    <div class="my_shopping">
                    <h2>나의 쇼핑</h2>
                    <ul>
                        <li>주문/배송</li>
                        <li>취소/환불</li>
                        <li>최근 본 상품</li>
                        <li><a href="<c:url value='/addr'/>">배송 주소록</a></li>
                    </ul>
                    </div>
                    <div class="my_activity">
                    <h2>나의 활동</h2>
                    <ul>
                        <li>1:1문의</li>
                        <li>상품문의</li>
                        <li>상품후기</li>
                    </ul>
                    </div>
                    <div class="my_info">
                    <h2>나의 정보</h2>
                    <ul>
                        <li><a href="<c:url value='/update'/>">회원정보 수정</a></li>
                    </ul>
                    </div>
                </nav>
            </aside>

            <main class="main-content">
                <section class="welcome-section">
                    <h2>${sessionScope.u_id}님, 환영합니다.</h2>
                    <div class="coupons">
                        <div class="coupon-item">
                            <img src="./img/mypage_icons/mypage_coupon.png" alt="쿠폰 아이콘">
                            <span>0장</span>
                        </div>
                        <div class="recent-item">
                            <img src="./img/mypage_icons/mypage_recents.png" alt="최근 본 상품 아이콘">
                            <span>0개</span>
                        </div>
                    </div>
                </section>

                <section class="order-history">
                    <h3>최근 주문 내역</h3>
                    <div class="order-steps">
                        <div class="step">
                            <img src="./img/mypage_icons/mypage_order_1.png" alt="주문 접수 아이콘">
                            <p>주문접수</p>
                        </div>
                        <img src="./img/mypage_icons/mypage_order_array.png" alt="화살표 아이콘" class="arrow">
                        <div class="step">
                            <img src="./img/mypage_icons/mypage_order_2.png" alt="결제 확인 아이콘">
                            <p>결제확인</p>
                        </div>
                        <img src="./img/mypage_icons/mypage_order_array.png" alt="화살표 아이콘" class="arrow">
                        <div class="step">
                            <img src="./img/mypage_icons/mypage_order_3.png" alt="상품 준비중 아이콘">
                            <p>상품준비중</p>
                        </div>
                        <img src="./img/mypage_icons/mypage_order_array.png" alt="화살표 아이콘" class="arrow">
                        <div class="step">
                            <img src="./img/mypage_icons/mypage_order_4.png" alt="배송중 아이콘">
                            <p>배송중</p>
                        </div>
                        <img src="./img/mypage_icons/mypage_order_array.png" alt="화살표 아이콘" class="arrow">
                        <div class="step">
                            <img src="./img/mypage_icons/mypage_order_5.png" alt="배송 완료 아이콘">
                            <p>배송완료</p>
                        </div>
                    </div>
                    <p class="no-history">최근 1개월 내역이 없습니다.</p>
                </section>

                <section class="cancel-refund">
                    <h3>취소/환불</h3>
                    <p>최근 1개월 내역이 없습니다.</p>
                    <table>
                        <thead>
                        <tr class="result" style="display: flex;  list-style: none;">
                            <th style="padding: 10px;">주문번호</th>
                            <th style="padding: 10px;">구매자</th>
                            <th style="padding: 10px;">상품명</th>
                            <th style="padding: 10px;">총가격</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="buyDto" items="${buyDtoList}" varStatus="status">
                            <tr class="result" style="display: flex; border: 1px solid; list-style: none;" >
                                <td style="padding: 10px;">${buyDtoList.get(status.index).getB_code()}</td>
                                <td style="padding: 10px;">${buyDtoList.get(status.index).getUserDto().getU_name()}</td>
                                <td style="padding: 10px;">${buyDtoList.get(status.index).getCategoryDto().getP_name()}</td>
                                <td style="padding: 10px;">${buyDtoList.get(status.index).getB_price()}</td>
                            </tr>
                        </c:forEach>
                        </tbody>
                        <tfoot></tfoot>
                    </table>
                </section>
            </main>
        </div>
    </div>


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
    <script src="./js/mypage.js"></script>
    <script src="./js/h_f.js"></script>
</body>

</html>
    <script>
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