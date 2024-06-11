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
                        <li>배송 주소록</li>
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
                        <li>회원정보 수정</li>
                    </ul>
                    </div>
                </nav>
            </aside>

            <main class="main-content">
                <section class="default-address">
                    <h3>기본 주소록</h3>
                    <div class="adrs_info">
                        <div class="placename">>${user.get(0.a_group}</div>
                        <div class="recipient">  ${user.get(0).userDto.u_name}</div>
                        <div class="zipcode">${user.get(0).a_zipcode}</div>
                        <div class="adrs">${user.get(0).a_addr}${user.get(status.index).a_addr_detail}</div>
                        <div class="tel">010-1234-5678</div>
                    </div>
                </section>
                <section class="address-history">
                    <h3>최근 주소록</h3>
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
                                <td class="title">
                                    ${user.get(status.index).a_addr_detail}
                                </td>
                                <td class="writer">${user.get(status.index).a_zipcode}</td>
                                <td class="regdate">

                                    ${user.get(status.index).userDto.u_name}

                                </td>
                                <td class="viewcnt">${user.get(status.index).userDto.u_phone}</td>
                            </tr>

                        </c:forEach>
                        </tbody>
                    </table>
                    <p class="no-history">등록하신 자주쓰는 배송지가 없습니다.</p>
                    <div class="register-button">등록</div>
                </section>
            </main>
        </div>
    </div>


<!--    <div class="popup-overlay">-->
<!--        <div class="popup-content">-->
<!--            <div class="popup-header">-->
<!--                <h2>배송지 등록</h2>-->
<!--                <button class="close-button">&times;</button>-->
<!--            </div>-->
<!--            <div class="popup-body edit-profile-form">-->
<!--                <div class="checkbox-container">-->
<!--                    <input type="checkbox" id="default-address">-->
<!--                    <label for="default-address">기본 배송지로 지정합니다.</label>-->
<!--                </div>-->
<!--                <form id="address-form">-->
<!--                    <div class="user-box">-->
<!--                        <input type="text" id="address-name" name="address-name" required />-->
<!--                        <label for="address-name">배송지명</label>-->
<!--                    </div>-->
<!--                    <div class="user-box">-->
<!--                        <input type="text" id="recipient" name="recipient" required />-->
<!--                        <label for="recipient">받는분</label>-->
<!--                    </div>-->
<!--                    <div class="user-box">-->
<!--                        <input type="text" maxlength='5' id="postal-code" name="postal-code" required />-->
<!--                        <label for="postal-code">우편번호</label>-->
<!--                    </div>-->
<!--                    <div class="user-box">-->
<!--                        <input type="text" id="address" name="address" required />-->
<!--                        <label for="address">주소</label>-->
<!--                    </div>-->
<!--                    <div class="user-box">-->
<!--                        <input type="tel" maxlength='11' id="phone" name="phone" required />-->
<!--                        <label for="phone">휴대폰</label>-->
<!--                    </div>-->
<!--                </form>-->
<!--            </div>-->
<!--            <div class="popup-footer">-->
<!--                <button class="cancel-button" onclick="resetForm()">취소</button>-->
<!--                <button class="confirm-button">확인</button>-->
<!--            </div>-->
<!--        </div>-->
<!--    </div>-->


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
    <script src="./js/mypage_address.js"></script>
    <script src="./js/h_f.js"></script>
</body>

</html>