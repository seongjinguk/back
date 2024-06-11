<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:set var="logInOutLink" value="${ sessionScope.u_id==null ? '/login':'/loginout' }" />
<c:set var="logInOutTxt" value="${ sessionScope.u_id==null ? '로그인/회원가입':'로그아웃' }" />
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Main Page</title>
    <link rel="stylesheet" href="<c:url value='/css/h_f.css'/>">
    <link rel="stylesheet" href="<c:url value='/css/index.css'/>">
    <link rel="icon" href="<c:url value='/img/DM_tab_logo.png'/>">

    <link rel="icon" href="./img/DM_tab_logo.png">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
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
                    <a href="<c:url value='/'/>">Narrow</a>
                    <a href="<c:url value='/'/>">Medium</a>
                    <a href="<c:url value='/'/>">Wide</a>
                </div>
            </div>
            <div class="dropdown">
                <a href="<c:url value='/'/>">남성</a>
                <div class="dropdown-content">
                    <a href="<c:url value='/'/>">Narrow</a>
                    <a href="<c:url value='/'/>">Medium</a>
                    <a href="<c:url value='/'/>">Wide</a>
                </div>
            </div>
            <div class="dropdown">
                <a href="<c:url value='/'/>">공용</a>
                <div class="dropdown-content">
                    <a href="<c:url value='/'/>">Narrow</a>
                    <a href="<c:url value='/'/>">Medium</a>
                    <a href="<c:url value='/'/>">Wide</a>
                </div>
            </div>
            <a href="<c:url value='/notice/list'/>">Q&A</a>
            <a href="<c:url value='/'/>" class="sale">SALE</a>
            <a href="<c:url value='/'/>" class="new-in">NEW IN</a>
            <a href="<c:url value='/'/>">BEST</a>
        </div>
        <div class="right-menu">
            <a href="<c:url value='${logInOutLink}'/>">${logInOutTxt}</a>
            <a href="<c:url value='/'/>">장바구니</a>
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
            <li><a href="<c:url value='/'/>">여성</a></li>
            <li><a href="<c:url value='/'/>">남성</a></li>
            <li><a href="<c:url value='/'/>">액세서리</a></li>
            <li><a href="<c:url value='/'/>">SALE</a></li>
            <li><a href="<c:url value='/'/>">NEW IN</a></li>
            <li><a href="<c:url value='/'/>">BEST</a></li>
            <li class="divider"></li>
            <li><a href="<c:url value='/'/>">로그인/회원가입</a></li>
            <li><a href="<c:url value='/'/>">장바구니</a></li>
            <li><a href="<c:url value='/'/>">마이페이지</a></li>
        </ul>
    </nav>
</div>


<div class="main-banner">
    <img src="./img/main_banner1.jpg" class="active" alt="Banner 1">
    <a href="<c:url value='/'/>">
        <div class="banner-message1 active">CHECK SALES</div>
    </a>
    <img src="./img/main_banner2.jpg" class="next" alt="Banner 2">
    <a href="<c:url value='/'/>">
        <div class="banner-message2">SHOP SHOES</div>
    </a>
    <img src="./img/main_banner3.jpg" class="prev" alt="Banner 3">
    <a href="<c:url value='/'/>">
        <div class="banner-message3">SHOP BOOTS</div>
    </a>
    <img src="./img/main_banner4.jpg" class="next" alt="Banner 4">
    <a href="<c:url value='/'/>">
        <div class="banner-message4">SHOP SANDALS</div>
    </a>
    <button class="prev-button">&#10094;</button>
    <button class="next-button">&#10095;</button>
</div>

<div class="products">
    <div class="category">
        <h1>SHOES</h1>
    </div>
    <div class="swiper mySwiper">
        <div class="swiper-wrapper">
            <div class="swiper-slide">
                <div class="product">
                    <div class="img-box">
                        <div class="quick_cart"></div>
                        <img src="./img/items/1461_1.jpg" alt="Product 1_1" class="first_img">
                        <img src="./img/items/1461_1-1.jpg" alt="Product 1_2" class="second_img">
                    </div>
                    <p>1461 모노</p>
                    <p class="price">₩210,000</p>
                    <div class="color_box1"></div>
                </div>
            </div>
            <div class="swiper-slide">
                <div class="product">
                    <div class="img-box">
                        <div class="quick_cart"></div>
                        <img src="./img/items/1461_2.jpg" alt="Product 2_1" class="first_img">
                        <img src="./img/items/1461_2-1.jpg" alt="Product 2_2" class="second_img">
                    </div>
                    <p>1461 벡스</p>
                    <p class="price">₩230,000</p>
                    <div class="color_box1"></div>
                </div>
            </div>
            <div class="swiper-slide">
                <div class="product">
                    <div class="img-box">
                        <div class="quick_cart"></div>
                        <img src="./img/items/1461_3.jpg" alt="Product 3_1" class="first_img">
                        <img src="./img/items/1461_3-1.jpg" alt="Product 3_2" class="second_img">
                    </div>
                    <p>1461 나파</p>
                    <p class="price">₩210,000</p>
                    <div class="color_box1"></div>
                </div>
            </div>
            <div class="swiper-slide">
                <div class="product">
                    <div class="img-box">
                        <div class="quick_cart"></div>
                        <img src="./img/items/1461_4.jpg" alt="Product 4_1" class="first_img">
                        <img src="./img/items/1461_4-1.jpg" alt="Product 4_2" class="second_img">
                    </div>
                    <p>1461 스무스</p>
                    <p class="price">₩210,000</p>
                    <div class="color_box1"></div>
                </div>
            </div>
            <div class="swiper-slide">
                <div class="product">
                    <div class="img-box">
                        <div class="quick_cart"></div>
                        <img src="./img/items/1461_5.jpg" alt="Product 5_1" class="first_img">
                        <img src="./img/items/1461_5-1.jpg" alt="Product 5_2" class="second_img">
                    </div>
                    <p>1461 쿼드</p>
                    <p class="price">₩250,000</p>
                    <div class="color_box1"></div>
                </div>
            </div>
            <div class="swiper-slide">
                <div class="product">
                    <div class="img-box">
                        <div class="quick_cart"></div>
                        <img src="./img/items/1461_6.jpg" alt="Product 6_1" class="first_img">
                        <img src="./img/items/1461_6-1.jpg" alt="Product 6_2" class="second_img">
                    </div>
                    <p>1461 쿼드 스퀘어드</p>
                    <p class="price">₩175,000
                        <span class="original_price">₩250,000</span>
                        <span class="discount_off">30%</span>
                    </p>
                    <div class="color_box1"></div>
                </div>
            </div>
            <div class="swiper-slide">
                <div class="product">
                    <div class="img-box">
                        <div class="quick_cart"></div>
                        <img src="./img/items/1461_7.jpg" alt="Product 6_1" class="first_img">
                        <img src="./img/items/1461_7-1.jpg" alt="Product 6_2" class="second_img">
                    </div>
                    <p>1461 WS</p>
                    <p class="price">₩210,000</p>
                    <div class="color_box1"></div>
                </div>
            </div>
            <div class="swiper-slide">
                <div class="product">
                    <div class="img-box">
                        <div class="quick_cart"></div>
                        <img src="./img/items/1461_8.jpg" alt="Product 8_1" class="first_img">
                        <img src="./img/items/1461_8-1.jpg" alt="Product 8_2" class="second_img">
                    </div>
                    <p>1461 길리</p>
                    <p class="price">₩95,000
                        <span class="original_price">₩210,000</span>
                        <span class="discount_off">55%</span>
                    </p>
                    <div class="color_box1"></div>
                </div>
            </div>
            <div class="swiper-slide">
                <div class="product">
                    <div class="img-box">
                        <div class="quick_cart"></div>
                        <img src="./img/items/1461_9.jpg" alt="Product 9_1" class="first_img">
                        <img src="./img/items/1461_9-1.jpg" alt="Product 9_2" class="second_img">
                    </div>
                    <p>1461 스무스</p>
                    <p class="price">₩210,000</p>
                    <div class="color_box5"></div>
                </div>
            </div>
            <div class="swiper-slide">
                <div class="product">
                    <div class="img-box">
                        <div class="quick_cart"></div>
                        <img src="./img/items/1461_10.jpg" alt="Product 10_1" class="first_img">
                        <img src="./img/items/1461_10-1.jpg" alt="Product 10_2" class="second_img">
                    </div>
                    <p>1461 쿼드 II</p>
                    <p class="price">₩125,000
                        <span class="original_price">₩250,000</span>
                        <span class="discount_off">50%</span>
                    </p>
                    <div class="color_box4"></div>
                </div>
            </div>
        </div>
        <div class="swiper-button-prev"></div>
        <div class="swiper-button-next"></div>
    </div>
</div>

<div class="products">
    <div class="category">
        <h1>BOOTS</h1>
    </div>
    <div class="swiper mySwiper">
        <div class="swiper-wrapper">
            <div class="swiper-slide">
                <div class="product">
                    <div class="img-box">
                        <div class="quick_cart"></div>
                        <img src="./img/items/1460_1.jpg" alt="Product 1_1" class="first_img">
                        <img src="./img/items/1460_1-1.jpg" alt="Product 1_2" class="second_img">
                    </div>
                    <p>1460 스무스</p>
                    <p class="price">₩260,000</p>
                    <div class="color_box1"></div>
                </div>
            </div>
            <div class="swiper-slide">
                <div class="product">
                    <div class="img-box">
                        <div class="quick_cart"></div>
                        <img src="./img/items/1460_2.jpg" alt="Product 2_1" class="first_img">
                        <img src="./img/items/1460_2-1.jpg" alt="Product 2_2" class="second_img">
                    </div>
                    <p>1460 파스칼</p>
                    <p class="price">₩230,000
                        <span class="original_price">₩260,000</span>
                        <span class="discount_off">66%</span>
                    </p>
                    <div class="color_box2"></div>
                </div>
            </div>
            <div class="swiper-slide">
                <div class="product">
                    <div class="img-box">
                        <div class="quick_cart"></div>
                        <img src="./img/items/1460_3.jpg" alt="Product 3_1" class="first_img">
                        <img src="./img/items/1460_3-1.jpg" alt="Product 3_3" class="second_img">
                    </div>
                    <p>1460 버지니아</p>
                    <p class="price">₩260,000</p>
                    <div class="color_box1"></div>
                </div>
            </div>
            <div class="swiper-slide">
                <div class="product">
                    <div class="img-box">
                        <div class="quick_cart"></div>
                        <img src="./img/items/1460_4.jpg" alt="Product 4_1" class="first_img">
                        <img src="./img/items/1460_4-1.jpg" alt="Product 4_2" class="second_img">
                    </div>
                    <p>1460 나파</p>
                    <p class="price">₩260,000</p>
                    <div class="color_box1"></div>
                </div>
            </div>
            <div class="swiper-slide">
                <div class="product">
                    <div class="img-box">
                        <div class="quick_cart"></div>
                        <img src="./img/items/1460_5.jpg" alt="Product 5_1" class="first_img">
                        <img src="./img/items/1460_5-1.jpg" alt="Product 5_2" class="second_img">
                    </div>
                    <p>1460 벡스</p>
                    <p class="price">₩280,000</p>
                    <div class="color_box1"></div>
                </div>
            </div>
            <div class="swiper-slide">
                <div class="product">
                    <div class="img-box">
                        <div class="quick_cart"></div>
                        <img src="./img/items/1460_6.jpg" alt="Product 6_1" class="first_img">
                        <img src="./img/items/1460_6-1.jpg" alt="Product 6_2" class="second_img">
                    </div>
                    <p>1460</p>
                    <p class="price">₩135,000
                        <span class="original_price">₩270,000</span>
                        <span class="discount_off">50%</span>
                    </p>
                    <div class="color_box1"></div>
                </div>
            </div>
            <div class="swiper-slide">
                <div class="product">
                    <div class="img-box">
                        <div class="quick_cart"></div>
                        <img src="./img/items/1461_7.jpg" alt="Product 6_1" class="first_img">
                        <img src="./img/items/1461_7-1.jpg" alt="Product 6_2" class="second_img">
                    </div>
                    <p>1461 WS</p>
                    <p class="price">₩210,000</p>
                    <div class="color_box1"></div>
                </div>
            </div>
            <div class="swiper-slide">
                <div class="product">
                    <div class="img-box">
                        <div class="quick_cart"></div>
                        <img src="./img/items/1461_8.jpg" alt="Product 8_1" class="first_img">
                        <img src="./img/items/1461_8-1.jpg" alt="Product 8_2" class="second_img">
                    </div>
                    <p>1461 길리</p>
                    <p class="price">₩95,000
                        <span class="original_price">₩210,000</span>
                        <span class="discount_off">55%</span>
                    </p>
                    <div class="color_box1"></div>
                </div>
            </div>
            <div class="swiper-slide">
                <div class="product">
                    <div class="img-box">
                        <div class="quick_cart"></div>
                        <img src="./img/items/1461_9.jpg" alt="Product 9_1" class="first_img">
                        <img src="./img/items/1461_9-1.jpg" alt="Product 9_2" class="second_img">
                    </div>
                    <p>1461 스무스</p>
                    <p class="price">₩210,000</p>
                    <div class="color_box5"></div>
                </div>
            </div>
            <div class="swiper-slide">
                <div class="product">
                    <div class="img-box">
                        <div class="quick_cart"></div>
                        <img src="./img/items/1461_10.jpg" alt="Product 10_1" class="first_img">
                        <img src="./img/items/1461_10-1.jpg" alt="Product 10_2" class="second_img">
                    </div>
                    <p>1461 쿼드 II</p>
                    <p class="price">₩125,000
                        <span class="original_price">₩250,000</span>
                        <span class="discount_off">50%</span>
                    </p>
                    <div class="color_box4"></div>
                </div>
            </div>
        </div>
        <div class="swiper-button-prev"></div>
        <div class="swiper-button-next"></div>
    </div>
</div>

<div class="products">
    <div class="category">
        <h1>SANDALS</h1>
    </div>
    <div class="swiper mySwiper">
        <div class="swiper-wrapper">
            <div class="swiper-slide">
                <div class="product">
                    <div class="img-box">
                        <div class="quick_cart"></div>
                        <img src="./img/items/sandal_1.jpg" alt="Product 1_1" class="first_img">
                        <img src="./img/items/sandal_1-1.jpg" alt="Product 1_2" class="second_img">
                    </div>
                    <p>마일즈</p>
                    <p class="price">₩170,000</p>
                    <div class="color_box1"></div>
                </div>
            </div>
            <div class="swiper-slide">
                <div class="product">
                    <div class="img-box">
                        <div class="quick_cart"></div>
                        <img src="./img/items/sandal_2.jpg" alt="Product 2_1" class="first_img">
                        <img src="./img/items/sandal_2-1.jpg" alt="Product 2_2" class="second_img">
                    </div>
                    <p>가린</p>
                    <p class="price">₩170,000
                        <span class="original_price">₩200,000</span>
                        <span class="discount_off">15%</span>
                    </p>
                    <div class="color_box1"></div>
                </div>
            </div>
            <div class="swiper-slide">
                <div class="product">
                    <div class="img-box">
                        <div class="quick_cart"></div>
                        <img src="./img/items/sandal_3.jpg" alt="Product 3_1" class="first_img">
                        <img src="./img/items/sandal_3-1.jpg" alt="Product 3_2" class="second_img">
                    </div>
                    <p>그리폰</p>
                    <p class="price">₩161,500
                        <span class="original_price">₩190,000</span>
                        <span class="discount_off">15%</span>
                    </p>
                    <div class="color_box1"></div>
                </div>
            </div>
            <div class="swiper-slide">
                <div class="product">
                    <div class="img-box">
                        <div class="quick_cart"></div>
                        <img src="./img/items/sandal_4.jpg" alt="Product 4_1" class="first_img">
                        <img src="./img/items/sandal_4-1.jpg" alt="Product 4_2" class="second_img">
                    </div>
                    <p>포스터</p>
                    <p class="price">₩160,000</p>
                    <div class="color_box1"></div>
                </div>
            </div>
            <div class="swiper-slide">
                <div class="product">
                    <div class="img-box">
                        <div class="quick_cart"></div>
                        <img src="./img/items/sandal_5.jpg" alt="Product 5_1" class="first_img">
                        <img src="./img/items/sandal_5-1.jpg" alt="Product 5_2" class="second_img">
                    </div>
                    <p>렌리</p>
                    <p class="price">₩195,500
                        <span class="original_price">₩230,000</span>
                        <span class="discount_off">15%</span>
                    </p>
                    <div class="color_box3"></div>
                </div>
            </div>
            <div class="swiper-slide">
                <div class="product">
                    <div class="img-box">
                        <div class="quick_cart"></div>
                        <img src="./img/items/sandal_6.jpg" alt="Product 6_1" class="first_img">
                        <img src="./img/items/sandal_6-1.jpg" alt="Product 6_2" class="second_img">
                    </div>
                    <p>피어슨</p>
                    <p class="price">₩144,500
                        <span class="original_price">₩170,000</span>
                        <span class="discount_off">15%</span>
                    </p>
                    <div class="color_box2"></div>
                </div>
            </div>
            <div class="swiper-slide">
                <div class="product">
                    <div class="img-box">
                        <div class="quick_cart"></div>
                        <img src="./img/items/1461_7.jpg" alt="Product 6_1" class="first_img">
                        <img src="./img/items/1461_7-1.jpg" alt="Product 6_2" class="second_img">
                    </div>
                    <p>1461 WS</p>
                    <p class="price">₩210,000</p>
                    <div class="color_box1"></div>
                </div>
            </div>
            <div class="swiper-slide">
                <div class="product">
                    <div class="img-box">
                        <div class="quick_cart"></div>
                        <img src="./img/items/1461_8.jpg" alt="Product 8_1" class="first_img">
                        <img src="./img/items/1461_8-1.jpg" alt="Product 8_2" class="second_img">
                    </div>
                    <p>1461 길리</p>
                    <p class="price">₩95,000
                        <span class="original_price">₩210,000</span>
                        <span class="discount_off">55%</span>
                    </p>
                    <div class="color_box1"></div>
                </div>
            </div>
            <div class="swiper-slide">
                <div class="product">
                    <div class="img-box">
                        <div class="quick_cart"></div>
                        <img src="./img/items/1461_9.jpg" alt="Product 9_1" class="first_img">
                        <img src="./img/items/1461_9-1.jpg" alt="Product 9_2" class="second_img">
                    </div>
                    <p>1461 스무스</p>
                    <p class="price">₩210,000</p>
                    <div class="color_box5"></div>
                </div>
            </div>
            <div class="swiper-slide">
                <div class="product">
                    <div class="img-box">
                        <div class="quick_cart"></div>
                        <img src="./img/items/1461_10.jpg" alt="Product 10_1" class="first_img">
                        <img src="./img/items/1461_10-1.jpg" alt="Product 10_2" class="second_img">
                    </div>
                    <p>1461 쿼드 II</p>
                    <p class="price">₩125,000
                        <span class="original_price">₩250,000</span>
                        <span class="discount_off">50%</span>
                    </p>
                    <div class="color_box4"></div>
                </div>
            </div>
        </div>
        <div class="swiper-button-prev"></div>
        <div class="swiper-button-next"></div>
    </div>
</div>

<div class="main-content">
    <div class="collection-header">
        <h2>COLLECTION</h2>
    </div>
    <div class="collection-items">
        <div class="collection-item">
            <a href="#" class="collection_item_img"><img src="./img/bottom_images/bottom_img1.png"
                                                         alt="Collaboration Shoes"></a>
            <span class="sideword">COLLABORATION</span>
            <span>닥터마틴과 아이코닉한 예술가들의 협업 컬렉션</span>
            <a href="#" class="read-more">READ MORE</a>
        </div>
        <div class="collection-item">
            <a href="#" class="collection_item_img"><img src="./img/bottom_images/bottom_img2.png"
                                                         alt="Exclusive Shoes"></a>
            <span class="sideword">EXCLUSIVE</span>
            <span>오직 닥터마틴 공식홈에서만 만나볼 수 있는 컬렉션</span>
            <a href="#" class="read-more">READ MORE</a>
        </div>
        <div class="collection-item">
            <a href="#" class="collection_item_img"><img src="./img/bottom_images/bottom_img3.png"
                                                         alt="Made in England Shoes"></a>
            <span class="sideword">MADE IN ENGLAND</span>
            <span>영국 DM 공장에서 수작업으로 만들어진 컬렉션</span>
            <a href="#" class="read-more">READ MORE</a>
        </div>
    </div>
</div>

<div class="banner">
    <img src="./img/new_arrivals.png" alt="Footer Banner">
    <a href="<c:url value='/'/>">
        <div class="banner-text-box">
            NEW ARRIVALS
        </div>
    </a>
</div>

<div id="popup-layer" class="popup-layer">
    <div class="popup-content">
        <div class="popup-header">
            <span class="popup-header_txt">옵션</span>
            <span class="close">&times;</span>
        </div>
        <div class="popup-body">
            <div class="info_area">
                <div class="img_area"></div>
                <div class="popup-image"></div>
                <div class="info_details">
                    <span>1461 모노</span>
                    <span class="color_detail">
                            <span class="details_color_txt">색상:</span>
                            <span class="details_color">Black</span>
                        </span>
                    <span>₩210,000</span>
                </div>
            </div>
            <div class="size-options">
                <span class="sizes_txt">사이즈(mm):</span>
                <div id="sizes" class="sizes">
                    <button>220</button>
                    <button>230</button>
                    <button>240</button>
                    <button>250</button>
                    <button>260</button>
                    <button>270</button>
                    <button>280</button>
                    <button>290</button>
                    <button>300</button>
                </div>
            </div>
            <div class="total-price">
                <span class="total-price_txt">총 상품 금액:</span>
                <span class="total-price_num">₩210,000</span>
            </div>
            <div class="actions">
                <button class="cart-btn">장바구니</button>
                <button class="buy-btn">구매하기</button>
            </div>
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
                <a href="<c:url value='/'/>"><img src="./img/footer_sns_icons/icon_sns_facebook 1.png"></a>
                <a href="<c:url value='/'/>"><img src="./img/footer_sns_icons/icon_sns_instagram 1.png"></a>
                <a href="<c:url value='/'/>"><img src="./img/footer_sns_icons/icon_sns_twitter 1.png"></a>
                <a href="<c:url value='/'/>"><img src="./img/footer_sns_icons/icon_sns_youtube 1.png"></a>
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
<script src="./js/index.js"></script>
<script src="./js/h_f.js"></script>
</body>
<script>
    const banners = document.querySelectorAll('.main-banner img');
    const bannerMessages = [
        document.querySelector('.banner-message1'),
        document.querySelector('.banner-message2'),
        document.querySelector('.banner-message3'),
        document.querySelector('.banner-message4')
    ];
    let currentBannerIndex = 0;

    function showNextBanner() {
        banners[currentBannerIndex].classList.remove('active');
        banners[currentBannerIndex].classList.add('prev');
        bannerMessages[currentBannerIndex].classList.remove('active');

        currentBannerIndex = (currentBannerIndex + 1) % banners.length;

        banners[currentBannerIndex].classList.remove('next');
        banners[currentBannerIndex].classList.add('active');
        setTimeout(() => {
            bannerMessages[currentBannerIndex].classList.add('active');
        }, 250);

        const nextBannerIndex = (currentBannerIndex + 1) % banners.length;
        banners[nextBannerIndex].classList.remove('prev');
        banners[nextBannerIndex].classList.add('next');
    }

    function showPrevBanner() {
        banners[currentBannerIndex].classList.remove('active');
        banners[currentBannerIndex].classList.add('next');
        bannerMessages[currentBannerIndex].classList.remove('active');

        currentBannerIndex = (currentBannerIndex - 1 + banners.length) % banners.length;

        banners[currentBannerIndex].classList.remove('prev');
        banners[currentBannerIndex].classList.add('active');
        setTimeout(() => {
            bannerMessages[currentBannerIndex].classList.add('active');
        }, 250);

        const prevBannerIndex = (currentBannerIndex - 1 + banners.length) % banners.length;
        banners[prevBannerIndex].classList.remove('next');
        banners[prevBannerIndex].classList.add('prev');
    }

    document.querySelector('.prev-button').addEventListener('click', showPrevBanner);
    document.querySelector('.next-button').addEventListener('click', showNextBanner);


    // setInterval(showNextBanner, 7500);


    var swiper = new Swiper(".mySwiper", {
        slidesPerView: 6,
        spaceBetween: 30,
        navigation: {
            nextEl: ".swiper-button-next",
            prevEl: ".swiper-button-prev",
        },
        breakpoints: {
            200: {
                slidesPerView: 1,
                spaceBetween: 1,
            },
            480: {
                slidesPerView: 2,
                spaceBetween: 5,
            },
            768: {
                slidesPerView: 3,
                spaceBetween: 10,
            },
            1024: {
                slidesPerView: 4,
                spaceBetween: 15,
            },
            1200: {
                slidesPerView: 5,
                spaceBetween: 20,
            },
            1400: {
                slidesPerView: 6,
                spaceBetween: 30,
            }
        },
    });


    document.addEventListener('DOMContentLoaded', () => {
        const quickCartButtons = document.querySelectorAll('.quick_cart');
        const popupLayer = document.getElementById('popup-layer');
        const closeBtn = document.querySelector('.popup-header .close');

        quickCartButtons.forEach(button => {
            button.addEventListener('click', () => {
                popupLayer.style.display = 'block';
            });
        });

        closeBtn.addEventListener('click', () => {
            popupLayer.style.display = 'none';
        });

        window.addEventListener('click', (event) => {
            if (event.target == popupLayer) {
                popupLayer.style.display = 'none';
            }
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
</html>