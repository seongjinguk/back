<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<c:set var="logInOutLink" value="${ sessionScope.id==null ? '/login/login':'/login/logout' }" />
<c:set var="logInOutTxt" value="${ sessionScope.id==null ? 'login':'logout' }" />

<c:set var="userId" value="${ pageContext.request.getSession(false).getAttribute('id')==null ? '':pageContext.request.getSession(false).getAttribute('id') }" />

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>게시판 페이지</title>
    <link rel="stylesheet" href="<c:url value='/css/common_board.css'/> ">
    <link rel="stylesheet" href="<c:url value='/css/h_f.css'/> ">
    <link rel="stylesheet" href="<c:url value='/css/write.css'/> ">
    <link rel="stylesheet" href="<c:url value='/css/board.css'/>">
    <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>

</head>
<body>
<header class="headera">
    <div class="message active">전 상품 무료 배송</div>
    <div class="message next">환영합니다. 닥터마틴 홈페이지입니다.</div>
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
        <div class="dropdown">
            <a href="<c:url value='/notice/list'/>">Q&A</a>
        </div>
        <a href="#" class="sale">SALE</a>
        <a href="#" class="new-in">NEW IN</a>
        <a href="#">BEST</a>
    </nav>
    <div class="right-menu">
        <a href="<c:url value='${logInOutLink}'/>">${logInOutTxt}</a>
        <c:choose>
            <c:when test="${userId==null}">
                <div class="item">
                    <a href="<c:url value='/register/join'/>">회원가입</a>
                </div>
            </c:when>
            <c:otherwise>
                <div class="item">
                    로그아웃
                </div>
            </c:otherwise>
        </c:choose>
        <a href="#">장바구니</a>
        <a href="/mypage" class="mypage">마이페이지<img src="./img/mypage_icons/Icon_mypage.png" alt="My Page Icon"></a>
        <div class="search">
            <input type="text" placeholder="Search...">
            <button>검색</button>
        </div>
    </div>
</header>
<div class="view"></div>
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
                <strong>공지사항${mode=="new"?"":""}</strong>
            </div>
            <%--            <!-- <c:url value='/notice/write'/>" -->--%>
            <form id="frm">
                <div class="board_write_wrap">
                    <div class="board_write">
                        <div class="title">
                            <dl>
                                <dd class="dd_area">
                                    <span>제목</span><input type="text" id="faq_title"
                                                          name="faq_title" ${mode=="new"?"":"readonly"} value="${noticeDto.faq_title}"></dd>
                                <dd class="dd_area">
                                    <span>작성자</span><input type="text" id="faq_writer" name="faq_writer" readonly value="${sessionScope.u_id}"></dd>
                            </dl>
                        </div>
                        <div class="cont">
                            <textarea id="faq_content" name="faq_content" ${mode=="new"?"":"readonly"} >${noticeDto.faq_content}</textarea>
                        </div>
                    </div>
                    <div class="bt_wrap">
                        <c:if test="${mode == 'new'}" >
                            <button type="button"  class="board_btn write_btn" id="btn_write">저장</button>
                        </c:if>
                        <c:if test="${mode != 'new' && noticeDto.faq_writer.equals(u_id)}">
                            <button type="button"  class="board_btn cancel_btn" id="btn_modify">수정</button>
                            <button type="button"  class="board_btn delete_btn" id="btn_del">삭제</button>
                        </c:if>

                        <button type="button" class="btn" id="btn_list">돌아가기</button>
                    </div>
                </div>
            </form>
        </div>
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
<script>
    $(document).ready(function(){
        function get_uri_info() {
            const searchParam = new URLSearchParams(location.search);
            let tmp_param=""; //
            for(const param of searchParam) {
                tmp_param += param[0]+"="+param[1]+"&";
            }
            return tmp_param;
        }

        $('#btn_list').on('click', function(){
            let tmp_param = get_uri_info();
            location.href = "<c:url value='/notice/list' />?page=${page}&pageSize=${pageSize}&option=${param.option}&keyword=${param.keyword}";
        });

        $('#btn_write').on('click',function(){
            // 유효성 검사 - title, content 빈칸 체크
            if($('#faq_title').val().trim() == "") {
                alert("제목을 입력하시오");
                $('#faq_title').focus();
            } else if($('#faq_content').val().trim() == "") {
                alert("내용을 입력하시오");
                $('#faq_content').focus();
            } else {
                let data = {
                    faq_title: $('#faq_title').val(),
                    faq_writer: $('#faq_writer').val(),
                    faq_content: $('#faq_content').val()
                };
                $.ajax({
                    url: "<c:url value='/notice/write'/>",
                    type: "POST",
                    data: data,
                    success: function(response) {
                        alert('저장되었습니다.');
                        location.href = "<c:url value='/notice/list' />";
                    },
                    error: function(xhr, status, error) {
                        alert('저장에 실패했습니다.');
                    }
                });
            }
        });

        $('#btn_modify').on('click', function(){
            let isReadonly = $('#faq_title').attr("readonly");
            if(isReadonly == "readonly") {
                $('#page_mode').text("게시물 수정")
                $('#faq_title').attr('readonly', false);
                $('#faq_content').attr('readonly', false);
                $('#btn_modify').text('확인');
                $('#faq_title').focus();
                return;
            }
            let data = {
                faq_title: $('#faq_title').val(),
                faq_content: $('#faq_content').val()
            };
            let tmp_param = get_uri_info();
            $.ajax({
                url: "<c:url value='/notice/modify'/>?" + tmp_param,
                type: "POST",
                data: data,
                success: function(response) {
                    alert('수정되었습니다.');
                    location.href = "<c:url value='/notice/list' />";
                },
                error: function(xhr, status, error) {
                    alert('수정에 실패했습니다.');
                }
            });
        });

        $('#btn_del').on("click", function(){
            if(!confirm("삭제하시겠습니까?")) return;
            let tmp_param = get_uri_info();
            $.ajax({
                url: "<c:url value='/notice/remove'/>?" + tmp_param,
                type: "POST",
                success: function(response) {
                    alert('삭제되었습니다.');
                    location.href = "<c:url value='/notice/list' />";
                },
                error: function(xhr, status, error) {
                    alert('삭제에 실패했습니다.');
                }
            });
        });
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
</body>
</html>
