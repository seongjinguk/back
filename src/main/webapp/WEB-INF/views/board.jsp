<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>게시판 페이지</title>
    <link rel="icon" href="/img/DM_Logo.png">
    <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>

    <link rel="stylesheet" href="<c:url value='/css/body.css'/>">
    <link rel="stylesheet" href="<c:url value='/css/h_f.css'/>">
    <link rel="stylesheet" href="<c:url value='/css/board.css'/>">
    <link rel="stylesheet" href="<c:url value='/css/common_board.css'/>">
    <script src="./js/index.js"></script>
</head>
<body>
<header class="headera">
    <div class="message active">전 상품 무료 배송</div>
    <div class="message next">환영합니다. 닥터마틴 홈페이지입니다.</div>
    <div class="message prev">신규 가입 10% 혜택</div>
</header>
<header class="headerb">
    <div class="logo">
        <a href="<c:url value='/'/>"><img src="<c:url value='/img/DM_Logo.png'/>" alt="Dr. Martens Logo"></a>
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
        <a href="<c:url value='/notice/list'/>">Q&A</a>
        <a href="#" class="sale">SALE</a>
        <a href="#" class="new-in">NEW IN</a>
        <a href="#">BEST</a>
    </nav>
    <div class="right-menu">
        <a href="<c:url value='${logInOutLink}'/>">${logInOutTxt}</a>
        <a href="#">장바구니</a>
        <a href="/mypage" class="mypage">마이페이지<img src="<c:url value='/img/mypage_icons/Icon_mypage.png'/>" alt="My Page Icon"></a>
        <div class="search">
            <input type="text" placeholder="Search...">
            <button>검색</button>
        </div>
    </div>
</header>
<div class="main">
    <div class="board_L">
        <div class="board_L_txt">
            <div class="board_nav notice">
                <a href=""><span>공지 사항</span></a>
                <!--<a href=""><span>QnA 게시판</span></a>-->
            </div>
            <div class="board_nav QnA"><a href=""><span>QnA</span></a></div>
        </div>
    </div>
    <div class="board_R">
        <div class="board_wrap">
            <div class="board_title">
                <strong>공지사항</strong>
                <div class="title_R">
                    <select name="sel_filter" id="sel_filter">
                        <option value="TC"${param.option == "TC" ? "selected" : ""}>제목+내용</option>
                        <option value="T" ${param.option == "T" ? "selected" : ""}>제목</option>
                        <option value="W"${param.option == "W" ? "selected" : ""}>작성자</option>
                    </select>
                    <div id="search_box">
                        <input type="search" name="txt_search" id="txt_search"placeholder="검색어를 입력하세요" value="${param.keyword}">
                    </div>
                    <button id="btn_search">검색</button>
                </div>
            </div>
            <c:choose>
            <c:when test="${list == null || list.isEmpty()}">
                <h1>일치하는 결과가 없습니다.</h1>
            </c:when>
            <c:otherwise>
            <div class="board_list_wrap">
                <div class="board_list">
                    <div class="top">
                        <div class="num"></div>
                        <div class="title">제목</div>
                        <div class="writer">글쓴이</div>
                        <div class="date">작성일</div>
                        <div class="count">조회</div>
                    </div>
                    <c:forEach var="NoticeDto" items="${list}">
                        <div class="middle">
                            <div class="num"></div>
                            <div class="title"><a href="<c:url value='/notice/read?faq_seqno=${NoticeDto.faq_seqno}&page=${ph.page}&pageSize=${ph.pageSize}&option=${param.option}&keyword=${param.keyword}'/>">${NoticeDto.faq_title}</a></div>

                            <div class="writer">${NoticeDto.faq_writer}</div>

                            <div class="date"> <c:set var="today" value="<%= new java.util.Date() %>" />
                                <c:set var="date"><fmt:formatDate value="${today}" pattern="yyyy-MM-dd" type="date" /></c:set>
                                <c:set var="date2"><fmt:formatDate value="${NoticeDto.faq_date}" pattern="yyyy-MM-dd" type="date" /></c:set>
                                <c:choose>
                                    <c:when test="${date == date2}">
                                        <fmt:formatDate value="${NoticeDto.faq_date}" pattern="HH:mm:ss" type="date" />
                                    </c:when>
                                    <c:otherwise>
                                        <fmt:formatDate value="${NoticeDto.faq_date}" pattern="yyyy-MM-dd" type="date" />
                                    </c:otherwise>
                                </c:choose>
                            </div>
                            <div class="count">${NoticeDto.faq_viewcount}</div>
                        </div>
                    </c:forEach>
                </div>
                </c:otherwise>
                </c:choose>
                <div class="board_page">
                    <c:if test="${ph.showPrevBtn}">
                        <a href="<c:url value='/notice/list?page=${ph.startPage - 1}&pageSize=${ph.pageSize}&option=${param.option}&keyword=${param.keyword}'/>" class="startPage">
                            <span>[이전]</span>

                        </a>
                    </c:if>
                    <c:forEach var="i" begin="${ph.startPage}" end="${ph.endPage}">
                        <a href="<c:url value='/notice/list?page=${i}&pageSize=${ph.pageSize}&option=${param.option}&keyword=${param.keyword}'/>" class="${i == ph.page ? 'pageActive' : ''}">
                            <span>${i}</span>
                        </a>
                    </c:forEach>
                    <c:if test="${ph.showNextBtn}">
                        <a href="<c:url value='/notice/list?page=${ph.endPage + 1}&pageSize=${ph.pageSize}&option=${param.option}&keyword=${param.keyword}'/>" class="endPage">
                            <span>[다음]</span>

                        </a>
                    </c:if>
                </div>
                <div class="bt_wrap">
                    <a href="<c:url value='/notice/write'/>" class="on">
                        <div class="board_btn"><span>글쓰기</span></div>
                    </a>
                </div>
            </div>
        </div>

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
                <a href="#"><img src="<c:url value='/img/footer_sns_icons/icon_sns_facebook 1.png'/>"></a>
                <a href="#"><img src="<c:url value='/img/footer_sns_icons/icon_sns_instagram 1.png'/>"></a>
                <a href="#"><img src="<c:url value='/img/footer_sns_icons/icon_sns_twitter 1.png'/>"></a>
                <a href="#"><img src="<c:url value='/img/footer_sns_icons/icon_sns_youtube 1.png'/>"></a>
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
</body>
<script>
    $(document).ready(function() {
        $('#btn_search').on('click', function() {
            location.href = "/notice/search?option=" + $('#sel_filter').val() + "&keyword=" + $('#txt_search').val();
        });

        $('#txt_search').on('keydown',function(e){
            if(e.keyCode == 13 && $('#txt_search').val().trim().length > 0) {
                $('#btn_search').trigger('click');
            }
        })
    });
</script>
</html>
<script>
    $(document).ready(function() {
        $('#btn_search').on('click', function() {
            location.href = "/notice/search?option=" + $('#sel_filter').val() + "&keyword=" + $('#txt_search').val();
        });

        $('#txt_search').on('keydown',function(e){
            if(e.keyCode == 13 && $('#txt_search').val().trim().length > 0) {
                $('#btn_search').trigger('click');
            }
        })
    });
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
</html>