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
        <a href="<c:url value='/notice/list'/>">Q&A</a>
        <a href="#" class="sale">SALE</a>
        <a href="#" class="new-in">NEW IN</a>
        <a href="#">BEST</a>
    </nav>
    <div class="right-menu">
        <a href="<c:url value='${logInOutLink}'/>">${logInOutTxt}</a>
        <a href="#">장바구니</a>
        <a href="/mypage" class="mypage">마이페이지<img src="./img/mypage_icons/Icon_mypage.png" alt="My Page Icon"></a>
        <div class="search">
            <input type="text" placeholder="Search...">
            <button>검색</button>
        </div>
    </div>
</header>
<div class="board_R">
    <div class="board_wrap">
        <div class="board_title">
            <strong>공지사항${mode=="new"?"쓰기":"읽기"}</strong>
        </div>
        <div class="board_view_wrap">
            <div class="board_view">
                <div class="title">
                    제목제목제목제목
                </div>
                <div class="info">
                    <dl>
                        <dt>번호</dt>
                        <dd>1</dd>
                    </dl>
                    <dl>
                        <dt>글쓴이</dt>
                        <dd>홍길동</dd>
                    </dl>
                    <dl>
                        <dt>작성일</dt>
                        <dd>2024.5.28</dd>
                    </dl>
                    <dl>
                        <dt>조회</dt>
                        <dd>33</dd>
                    </dl>
                </div>
                <div class="cont">
                    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Ea ullam dolorem accusamus sed architecto dolore
                    corporis voluptas. Excepturi, sed quidem exercitationem, consequuntur aperiam earum numquam culpa vel deserunt illo obcaecati?
                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione voluptatem, officia aliquam,
                    pariatur quibusdam ab quasi architecto dolorum enim maxime non. At eveniet est iure eaque distinctio nihil doloribus totam!
                </div>
            </div>
            <div class="bt_wrap">
                <a href="board.html" class="on">목록</a>
                <a href="edit.html">수정</a>
            </div>
        </div>
    </div>
</div>
</body>
</html>
