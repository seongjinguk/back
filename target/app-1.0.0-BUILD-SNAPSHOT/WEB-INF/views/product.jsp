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
    <title>Document</title>
    <link rel="stylesheet" href="./css/h_f.css">
    <link rel="stylesheet" href="<c:url value='/css/h_f.css'/>">
    <link rel="stylesheet" href="<c:url value='/css/product.css'/>">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="./js/product.js"></script>
</head>

<body>
<div id="wrap">
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
    <div class="view">
    </div>
    <main class="main">
        <div class="content_area">
            <span class="view_txt">HOME > 남성</span>
            <div class="banner_wrap">
                <div class="swiper">
                    <div class="swiper_btn">
                        <div class="btn_circle btn_circle_top">∧</div>
                    </div>
                    <div class="swiper_box">
                        <div class="swiper_img active2">
                            <img src="<c:url value='./img/W${param.p_seqno}/1.jpg'/> " alt="">
                        </div>
                        <div class="swiper_img">
                            <img src="<c:url value='./img/W${param.p_seqno}/2.jpg'/> " alt="">
                        </div>
                        <div class="swiper_img">
                            <img src="<c:url value='./img/W${param.p_seqno}/3.jpg'/> " alt="">
                        </div>
                        <div class="swiper_img">
                            <img src="<c:url value='./img/W${param.p_seqno}/4.jpg'/> " alt="">
                        </div>
                        <div class="swiper_img">
                            <img src="<c:url value='./img/W${param.p_seqno}/5.jpg'/> " alt="">
                        </div>
                        <div class="swiper_img">
                            <img src="<c:url value='./img/W${param.p_seqno}/6.jpg'/> " alt="">
                        </div>
                        <div class="swiper_img">
                            <img src="<c:url value='./img/W${param.p_seqno}/7.jpg'/> " alt="">
                        </div>
                        <div class="swiper_img">
                            <img src="<c:url value='./img/W${param.p_seqno}/8.jpg'/> " alt="">
                        </div>
                        <div class="swiper_img">
                            <img src="<c:url value='./img/W${param.p_seqno}/9.jpg'/> " alt="">
                        </div>
                    </div>
                    <div class="swiper_btn">
                        <div class="btn_circle btn_circle_bottom">∨</div>
                    </div>
                </div>
                <div class="content">
                    <div class="slide_btn slide_btn_L">〈</div>
                    <div class="content_img"><img class="box" src="<c:url value='./img/W${param.p_seqno}/1.jpg'/> " alt=""></div>
                    <div class="content_img"><img class="box" src="<c:url value='./img/W${param.p_seqno}/2.jpg'/> " alt=""></div>
                    <div class="content_img"><img class="box" src="<c:url value='./img/W${param.p_seqno}/3.jpg'/> " alt=""></div>
                    <div class="content_img"><img class="box" src="<c:url value='./img/W${param.p_seqno}/4.jpg'/> " alt=""></div>
                    <div class="content_img"><img class="box" src="<c:url value='./img/W${param.p_seqno}/5.jpg'/> " alt=""></div>
                    <div class="content_img"><img class="box" src="<c:url value='./img/W${param.p_seqno}/6.jpg'/> " alt=""></div>
                    <div class="content_img"><img class="box" src="<c:url value='./img/W${param.p_seqno}/7.jpg'/> " alt=""></div>
                    <div class="content_img"><img class="box" src="<c:url value='./img/W${param.p_seqno}/8.jpg'/> " alt=""></div>
                    <div class="content_img"><img class="box" src="<c:url value='./img/W${param.p_seqno}/9.jpg'/> " alt=""></div>
                    <div class="slide_btn slide_btn_R">〉</div>
                </div>
            </div>
            <form>
                <div class="content_detail">
                    <div class="product_detail">
                        <div class="product_name"><span>${param.p_name}</span></div>
                        <div class="product_review">
                            <img class="star_img" src="./img/r_s_r_s.png" alt="">
                            <a href="#review_tag">${reviewCount}건</a>
                            <img class="sns_img"
                                 src="https://www.drmartens.co.kr/data/skin/responsive_ver1_default_gl/images/newbird/Icons_share.svg"
                                 alt="">
                        </div>
                    </div>
                    <div class="product_img">
                        <img  src="<c:url value='./img/W${param.p_seqno}/1.jpg'/> " alt="">
                    </div>
                    <div class="product_price">
                        <span>상품 금액</span>
                        <span id="item_price">${param.p_price}</span><span>\</span>
                        </span>
                    </div>
                    <div class="product_size">
                        <div class="size_div"><span>사이즈(mm)</span></div>
                        <div class="select_size">
                            <button type="button" class="size_btn" onclick="updateSize(this)" value="220">220</button>
                            <button type="button" class="size_btn" onclick="updateSize(this)" value="230">230</button>
                            <button type="button" class="size_btn" onclick="updateSize(this)" value="240">240</button>
                            <button type="button" class="size_btn" onclick="updateSize(this)" value="250">250</button>
                            <button type="button" class="size_btn" onclick="updateSize(this)" value="260">260</button>
                            <button type="button" class="size_btn" onclick="updateSize(this)" value="270">270</button>
                            <button type="button" class="size_btn" onclick="updateSize(this)" value="280">280</button>
                            <button type="button" class="size_btn" onclick="updateSize(this)" value="290">290</button>
                            <button type="button" class="size_btn" onclick="updateSize(this)" value="300">300</button>
                        </div>
                    </div>
                    <div class="total_box">
                        <div class="total_size"><span>사이즈(mm) :</span>
                            <input type="text" value="0" id="total_size" name="ps_size" readonly="readonly">
                        </div>
                        <div class="total_calc">
                            <div class="total_calc">
                                <strong>수량:</strong>
                                <input type="button" id="btn_minus" class="btn_updown" onclick="minus()" value="-">
                                <input type="text" value="0" id="txt_qty"  readonly="readonly" name="ps_count">
                                <input type="button" id="btn_plus" class="btn_updown" onclick="plus()" value="+">
                            </div>
                        </div>
                    </div>

                    <div class="search_size">
                        <button type="button" class="size_search_btn">
                            <img src="../img/size_search.png" alt="">
                            <span>10초안에 내 사이즈 찾기</span>
                        </button>
                    </div>
                    <div class="total_price">
                        <span>총 상품 금액</span>
                        <span id="fin_price">0</span><span>\</span>
                    </div>
                    <div class="buy_btn">
                        <button formaction="/cart" formmethod="POST">장바구니</button>
                        <button id="payment" formaction='/payment' formmethod="GET">구매하기</button>
                    </div>
                    <div class="detail_nav">
                        <img src="./img/delivery.jpg" alt="">
                    </div>
                </div>
            </form>
        </div>
        <div class="review_area">
            <div class="content_area">
                <div class="review_nav">
                    <span class="comment_item">추천상품</span>
                    <span class="recently_item">최근 본 상품</span>
                    <span class="origin_item">ORIGINAL ICON</span>
                </div>
                <div class="slide_btn2 slide_btn_L2">〈</div>
                <div class="slide_btn2 slide_btn_R2">〉</div>

                <div class="review_nav_item">
                    <div class="item_wrap comment_item_box">
                        <div class="item_box_wrap">
                            <div class="box2 item_box">
                                <div class="item_img">
                                    <img src="./img/12.jpg" alt="">
                                </div>
                                <div class="item_name">1416 모노</div>
                                <div class="item_price">\210,000</div>
                                <div class="item_color">
                                    <a href="">
                                        <div class="color_box"></div>
                                    </a>
                                </div>
                            </div>
                            <div class="box2 item_box">
                                <div class="item_img">
                                    <img src="./img/11.jpg" alt="">
                                </div>
                                <div class="item_name">1416 모노</div>
                                <div class="item_price">\210,000</div>
                                <div class="item_color">
                                    <a href="">
                                        <div class="color_box"></div>
                                    </a>
                                </div>
                            </div>
                            <div class="box2 item_box">
                                <div class="item_img">
                                    <img src="./img/14.png" alt="">
                                </div>
                                <div class="item_name">1416 모노</div>
                                <div class="item_price">\210,000</div>
                                <div class="item_color">
                                    <a href="">
                                        <div class="color_box"></div>
                                    </a>
                                </div>
                            </div>
                            <div class="box2 item_box">
                                <div class="item_img">
                                    <img src="./img/12.jpg" alt="">
                                </div>
                                <div class="item_name">1416 모노</div>
                                <div class="item_price">\210,000</div>
                                <div class="item_color">
                                    <a href="">
                                        <div class="color_box"></div>
                                    </a>
                                </div>
                            </div>
                            <div class="box2 item_box">
                                <div class="item_img">
                                    <img src="./img/11.jpg" alt="">
                                </div>
                                <div class="item_name">1416 모노</div>
                                <div class="item_price">\210,000</div>
                                <div class="item_color">
                                    <a href="">
                                        <div class="color_box"></div>
                                    </a>
                                </div>
                            </div>
                            <div class="box2 item_box">
                                <div class="item_img">
                                    <img src="./img/14.png" alt="">
                                </div>
                                <div class="item_name">1416 모노</div>
                                <div class="item_price">\210,000</div>
                                <div class="item_color">
                                    <a href="">
                                        <div class="color_box"></div>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item_wrap recent_item_box">
                        <div class="item_box_wrap">
                            <div class="box3 item_box">
                                <div class="item_img">
                                    <img src="./img/9.jpg" alt="">
                                </div>
                                <div class="item_name">1416 모노</div>
                                <div class="item_price">\210,000</div>
                                <div class="item_color">
                                    <a href="">
                                        <div class="color_box"></div>
                                    </a>
                                </div>
                            </div>
                            <div class="box3 item_box">
                                <div class="item_img">
                                    <img src="./img/13.jpg" alt="">
                                </div>
                                <div class="item_name">1416 모노</div>
                                <div class="item_price">\210,000</div>
                                <div class="item_color">
                                    <a href="">
                                        <div class="color_box"></div>
                                    </a>
                                </div>
                            </div>
                            <div class="box3 item_box">
                                <div class="item_img">
                                    <img src="./img/12.jpg" alt="">
                                </div>
                                <div class="item_name">1416 모노</div>
                                <div class="item_price">\210,000</div>
                                <div class="item_color">
                                    <a href="">
                                        <div class="color_box"></div>
                                    </a>
                                </div>
                            </div>
                            <div class="box3 item_box">
                                <div class="item_img">
                                    <img src="./img/11.jpg" alt="">
                                </div>
                                <div class="item_name">1416 모노</div>
                                <div class="item_price">\210,000</div>
                                <div class="item_color">
                                    <a href="">
                                        <div class="color_box"></div>
                                    </a>
                                </div>
                            </div>
                            <div class="box3 item_box">
                                <div class="item_img">
                                    <img src="./img/32.jpg" alt="">
                                </div>
                                <div class="item_name">1416 모노</div>
                                <div class="item_price">\210,000</div>
                                <div class="item_color">
                                    <a href="">
                                        <div class="color_box"></div>
                                    </a>
                                </div>
                            </div>
                            <div class="box3 item_box">
                                <div class="item_img">
                                    <img src="./img/26.jpg" alt="">
                                </div>
                                <div class="item_name">1416 모노</div>
                                <div class="item_price">\210,000</div>
                                <div class="item_color">
                                    <a href="">
                                        <div class="color_box"></div>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item_wrap origin_item_box">
                        <div class="item_box_wrap">
                            <div class="box4 item_box">
                                <div class="item_img">
                                    <img src="./img/11.jpg" alt="">
                                </div>
                                <div class="item_name">1416 모노</div>
                                <div class="item_price">\210,000</div>
                                <div class="item_color">
                                    <a href="">
                                        <div class="color_box"></div>

                                    </a>
                                </div>
                            </div>
                            <div class="box4 item_box">
                                <div class="item_img">
                                    <img src="./img/12.jpg" alt="">
                                </div>
                                <div class="item_name">1416 모노</div>
                                <div class="item_price">\210,000</div>
                                <div class="item_color">
                                    <a href="">
                                        <div class="color_box"></div>
                                    </a>
                                </div>
                            </div>
                            <div class="box4 item_box">
                                <div class="item_img">
                                    <img src="./img/13.jpg" alt="">
                                </div>
                                <div class="item_name">1416 모노</div>
                                <div class="item_price">\210,000</div>
                                <div class="item_color">
                                    <a href="">
                                        <div class="color_box"></div>
                                    </a>
                                </div>
                            </div>
                            <div class="box4 item_box">
                                <div class="item_img">
                                    <img src="./img/32.jpg" alt="">
                                </div>
                                <div class="item_name">1416 모노</div>
                                <div class="item_price">\210,000</div>
                                <div class="item_color">
                                    <a href="">
                                        <div class="color_box"></div>
                                    </a>
                                </div>
                            </div>
                            <div class="box4 item_box">
                                <div class="item_img">
                                    <img src="./img/9.jpg" alt="">
                                </div>
                                <div class="item_name">1416 모노</div>
                                <div class="item_price">\210,000</div>
                                <div class="item_color">
                                    <a href="">
                                        <div class="color_box"></div>
                                    </a>
                                </div>
                            </div>
                            <div class="box4 item_box">
                                <div class="item_img">
                                    <img src="./img/26.jpg" alt="">
                                </div>
                                <div class="item_name">1416 모노</div>
                                <div class="item_price">\210,000</div>
                                <div class="item_color">
                                    <a href="">
                                        <div class="color_box"></div>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="content_area">
                <div class="review_txt">
                    <a id="review_tag"><span>REVIEW (${reviewCount})</span></a>
                </div>
                <div class="review_detail">
                    <div class="review_detail_L">
                        <div class="review_detail_star">
                            <img src="./img/full_star.png" alt="">
                        </div>
                        <div class="review_detail_txt">
                            <span>${review_rating}</span>
                        </div>
                        <div class="review_detail_btn">
                            <button type="button" class="register-button">상품 리뷰 작성하기</button>
                        </div>
                    </div>
                    <div class="review_detail_R">
                        <div class="review_box">
                            <div class="review_txt2">
                                <img src="./img/full_star.png" alt="">
                                <img src="./img/full_star.png" alt="">
                                <img src="./img/full_star.png" alt="">
                                <img src="./img/full_star.png" alt="">
                                <img src="./img/full_star.png" alt="">

                            </div>
                            <div class="review_gauge">
                                <div class="gauge gauge_5"></div>
                            </div>
                            <div class="review_count" id="review_count5">300
                                .
                            </div>
                        </div>
                        <div class="review_box">
                            <div class="review_txt2">
                                <img src="./img/full_star.png" alt="">
                                <img src="./img/full_star.png" alt="">
                                <img src="./img/full_star.png" alt="">
                                <img src="./img/full_star.png" alt="">
                            </div>
                            <div class="review_gauge">
                                <div class="gauge gauge_4"></div>
                            </div>
                            <div class="review_count" id="review_count4">5
                                .
                            </div>
                        </div>
                        <div class="review_box">
                            <div class="review_txt2">
                                <img src="./img/full_star.png" alt="">
                                <img src="./img/full_star.png" alt="">
                                <img src="./img/full_star.png" alt="">
                            </div>
                            <div class="review_gauge">
                                <div class="gauge gauge_3"></div>
                            </div>
                            <div class="review_count" id="review_count3">0
                                .
                            </div>
                        </div>
                        <div class="review_box">
                            <div class="review_txt2">
                                <img src="./img/full_star.png" alt="">
                                <img src="./img/full_star.png" alt="">
                            </div>
                            <div class="review_gauge">
                                <div class="gauge gauge_2"></div>
                            </div>
                            <div class="review_count" id="review_count2">0
                                .
                            </div>
                        </div>
                        <div class="review_box">
                            <div class="review_txt2">
                                <img src="./img/full_star.png" alt="">
                            </div>
                            <div class="review_gauge">
                                <div class="gauge gauge_1"></div>
                            </div>
                            <div class="review_count" id="review_count1">0

                            </div>
                        </div>
                    </div>
                </div>
                <div class="popup-overlay">
                    <div class="popup-content">
                        <div class="popup-header">
                            <h2>리뷰작성</h2>
                            <button class="close-button">&times;</button>
                        </div>
                        <div class="star_rating">
                            <span class="star on" value="1"> </span>
                            <span class="star" value="2"></span>
                            <span class="star" value="3"> </span>
                            <span class="star" value="4"> </span>
                            <span class="star" value="5"> </span>
                        </div>
                        <textarea class="star_box" placeholder="리뷰 내용을 작성해주세요."></textarea>
                        <input type="submit" class="btn02" value="리뷰 등록" />

                    </div>
                </div>

                <div class="review_photo">
                    <div class="review_txt3">
                        <span>포토</span>
                        <span class="review_photo_all">전체보기 ></span>
                    </div>
                    <div class="review_photo_zone">
                        <div class="review_photo_img">
                            <img src="./img/review1.jpg" alt="">
                        </div>
                        <div class="review_photo_img">
                            <img src="./img/review2.jpg" alt="">
                        </div>
                        <div class="review_photo_img">
                            <img src="./img/review3.jpg" alt="">
                        </div>
                        <div class="review_photo_img">
                            <img src="./img/review4.jpg" alt="">
                        </div>
                        <div class="review_photo_img">
                            <img src="./img/review5.jpg" alt="">
                        </div>
                        <div class="review_photo_img">
                            <img src="./img/review6.jpg" alt="">
                        </div>
                        <div class="review_photo_img">
                            <img src="./img/review7.jpg" alt="">
                        </div>
                        <div class="review_photo_img">
                            <img src="./img/review8.jpg" alt="">
                        </div>
                    </div>
                </div>
                <div class="review_search">
                    <div class="review_search_txt">
                        <span>추천순</span>
                        <span>최신순</span>
                        <span>별점순</span>
                        <div class="review_search_bar">
                            <input type="text" placeholder="리뷰 키워드 검색">
                        </div>
                    </div>
                </div>
                <div class="review_data_area"></div>
                <!-- <div class="review_data">
                <div class="review_data_L">
                    <div class="review_score_section">
                        <div class="review_score_container">
                            <img src="./img/star_img.png" alt="">
                            <span>아주좋아요</span>
                            <span class="review_data_date">2024.05.24</span>
                        </div>
                        <div class="user_review_txt">
                            <span>Lorem ipsum dolor, sit amet consectetur adipisicing elit.
                                Magni temporibus consequuntur porro distinctio ea aliquid
                                eos quod nam labore laborum, numquam at autem illo.
                                Tempore magni earum rem pariatur qui.
                                lo</span>
                        </div>
                        <div class="user_review_img">
                            <img src="./img/review1.jpg" alt="">
                        </div>
                    </div>
                </div>
                <div class="review_data_R">
                    <div class="review_user_data">
                        <div class="review_detail_data review_id">id<span> 님의 리뷰입니다</span></div>
                        <div class="review_detail_data review_gender"><span>성별 : </span> 남성 </div>
                        <div class="review_detail_data review_age"><span>연령 : </span> 30대</div>
                        <div class="review_detail_data review_size"><span>사이즈 : </span>적당해요</div>
                        <div class="review_detail_data review_size_detail"><span>사이즈(mm) : </span> 270</div>
                    </div>
                </div>
            </div> -->
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
</div>

<script>
    //컨텐츠박스 스크립트
    $(document).ready(function(){
        let box_count = $('.box').length;
        let box_w = $('.box').outerWidth();
        for(let i=0; i<box_count; i++) {
            $('.box').eq(i).css({left: box_w * i})
        }

        $(window).resize(function(){

            box_w = $('.box').outerWidth();

            for(let i=0; i<box_count; i++) {
                $('.box').eq((i+bang)%box_count).css({left: box_w * i})
            }

        });


        let bang = 0;
        $('.slide_btn_R').click(function(){

            btn_init();

            $('.box').animate({
                left: '-=' + box_w
            }, 500, 'linear')

            $('.box').eq(bang % box_count).animate({
                left: box_w * (box_count - 1)
            }, 0, 'linear')

            bang+=1;

            swiper_active()
        })
        $('.slide_btn_L').click(function(){

            btn_init();

            $('.box').eq((bang - 1) % box_count).animate({
                left: -box_w
            }, 0, 'linear')

            $('.box').animate({
                left: '+=' + box_w
            }, 500, 'linear')

            bang-=1;

            swiper_active()
        })
        function btn_init() {
            $('.slide_btn').css({pointerEvents: 'none'})
            setTimeout(function(){
                $('.slide_btn').css({pointerEvents: 'auto'})
            }, 500)
        }

        function swiper_active() {
            $('.swiper_img').removeClass('active2');
            $('.swiper_img').eq(bang % box_count).addClass('active2');
        }

        $('.swiper_img').click(function(){

            let gap = $(this).index() - $('.active2').index();

            if(gap > 0) {
                for(let i=0; i<gap; i++) {
                    $('.slide_btn_R').trigger('click')
                }
            }


            else if(gap < 0) {
                for(let i=0; i<gap*-1; i++) {
                    $('.slide_btn_L').trigger('click')
                }

            }
        })

    })

    //추천상품 슬라이드
    $(document).ready(function(){
        let box_w = $('.box2').outerWidth();
        let box_count = $('.box2').length;

        for(let i=0; i<box_count; i++) {
            $('.box2').eq(i).css({left: box_w * i})
        }

        let bang = 0;
        $('.slide_btn_R2').click(function(){
            $('.box2').animate({
                left: '-=' + box_w
            }, 1000)

            $('.box2').eq(bang % box_count).animate({
                left: box_w * (box_count - 1)
            }, 0)

            bang+=1;
        })
        $('.slide_btn_L2').click(function(){
            $('.box2').eq((bang - 1) % box_count).animate({
                left: -box_w
            }, 0)

            $('.box2').animate({
                left: '+=' + box_w
            }, 1000)

            bang-=1;
        })
        function btn_init() {
            $('.slide_btn2').css({pointerEvents: 'none'})
            setTimeout(function(){
                $('.slide_btn2').css({pointerEvents: 'auto'})
            }, 500)
        }
    })

    //최근 본 상품 슬라이드
    $(document).ready(function(){
        let box_w = $('.box3').outerWidth();
        let box_count = $('.box3').length;

        for(let i=0; i<box_count; i++) {
            $('.box3').eq(i).css({left: box_w * i})
        }

        let bang = 0;
        $('.slide_btn_R2').click(function(){
            $('.box3').animate({
                left: '-=' + box_w
            }, 1000)

            $('.box3').eq(bang % box_count).animate({
                left: box_w * (box_count - 1)
            }, 0)

            bang+=1;
        })
        $('.slide_btn_L2').click(function(){
            $('.box3').eq((bang - 1) % box_count).animate({
                left: -box_w
            }, 0)

            $('.box3').animate({
                left: '+=' + box_w
            }, 1000)

            bang-=1;
        })
        function btn_init() {
            $('.slide_btn2').css({pointerEvents: 'none'})
            setTimeout(function(){
                $('.slide_btn2').css({pointerEvents: 'auto'})
            }, 500)
        }
    })
    //오리진 아이콘 슬라이드
    $(document).ready(function(){
        let box_w = $('.box4').outerWidth();
        let box_count = $('.box4').length;

        for(let i=0; i<box_count; i++) {
            $('.box4').eq(i).css({left: box_w * i})
        }

        let bang = 0;
        $('.slide_btn_R2').click(function(){
            $('.box4').animate({
                left: '-=' + box_w
            }, 1000)

            $('.box4').eq(bang % box_count).animate({
                left: box_w * (box_count - 1)
            }, 0)

            bang+=1;
        })
        $('.slide_btn_L2').click(function(){
            $('.box4').eq((bang - 1) % box_count).animate({
                left: -box_w
            }, 0)

            $('.box4').animate({
                left: '+=' + box_w
            }, 1000)

            bang-=1;
        })
        function btn_init() {
            $('.slide_btn2').css({pointerEvents: 'none'})
            setTimeout(function(){
                $('.slide_btn2').css({pointerEvents: 'auto'})
            }, 500)
        }
    })


    //리뷰 무한스크롤
    $(document).ready(function(){

        // 무한스크롤 용도
        for(let i=0; i<1; i++) {
            $('.review_data_area').append(`                <div class="review_data">
        <div class="review_data_L">
            <div class="review_score_section">
                <div class="review_score_container">
                    <img src="./img/star_img.png" alt="">
                    <span>아주좋아요</span>
                    <span class="review_data_date">2024.05.24</span>
                </div>
                <div class="user_review_txt">
                    <span>Lorem ipsum dolor, sit amet consectetur adipisicing elit.
                        Magni temporibus consequuntur porro distinctio ea aliquid
                        eos quod nam labore laborum, numquam at autem illo.
                        Tempore magni earum rem pariatur qui.
                        lo</span>
                </div>
                <div class="user_review_img">
                    <img src="./img/review1.jpg" alt="">
                </div>
            </div>
        </div>
        <div class="review_data_R">
            <div class="review_user_data">
                <div class="review_detail_data review_id">id<span> 님의 리뷰입니다</span></div>
                <div class="review_detail_data review_gender"><span>성별 : </span> 남성 </div>
                <div class="review_detail_data review_age"><span>연령 : </span> 30대</div>
                <div class="review_detail_data review_size"><span>사이즈 : </span>적당해요</div>
                <div class="review_detail_data review_size_detail"><span>사이즈(mm) : </span> 270</div>
            </div>
        </div>
    </div>`)
        }
        let f_o_top = $('.footer').offset().top; // 무한스크롤 방법2 에서 사용
        let count = 1; // 무한스크롤 몇번 될지 정하는 용도
        $(window).scroll(function(){
            let s_top = $(window).scrollTop();

            if(count <= 6) {
                let s_bot = s_top + $(window).height();
                if(f_o_top + 100 <= s_bot) {
                    for(let i=0; i<1; i++) {
                        $('.review_data_area').append(`<div class="review_data">
                    <div class="review_data_L">
                        <div class="review_score_section">
                            <div class="review_score_container">
                                <img src="./img/star_img.png" alt="">
                                <span>아주좋아요</span>
                                <span class="review_data_date">2024.05.24</span>
                            </div>
                            <div class="user_review_txt">
                                <span>Lorem ipsum dolor, sit amet consectetur adipisicing elit.
                                    Magni temporibus consequuntur porro distinctio ea aliquid
                                    eos quod nam labore laborum, numquam at autem illo.
                                    Tempore magni earum rem pariatur qui.
                                    lo</span>
                            </div>
                            <div class="user_review_img">
                                <img src="./img/review1.jpg" alt="">
                            </div>
                        </div>
                    </div>
                    <div class="review_data_R">
                        <div class="review_user_data">
                            <div class="review_detail_data review_id">id<span> 님의 리뷰입니다</span></div>
                            <div class="review_detail_data review_gender"><span>성별 : </span> 남성 </div>
                            <div class="review_detail_data review_age"><span>연령 : </span> 30대</div>
                            <div class="review_detail_data review_size"><span>사이즈 : </span>적당해요</div>
                            <div class="review_detail_data review_size_detail"><span>사이즈(mm) : </span> 270</div>
                        </div>
                    </div>
                </div>`)
                    }
                    count+=1;
                    f_o_top = $('.footer').offset().top;
                }
            }

        })


    })


    //게이지 리뷰 갯수값 받고 게이지바 늘리기
    $(document).ready(function() {
        var rv_ct5 = parseInt($('#review_count5').text().trim());
        var rv_ct4 = parseInt($('#review_count4').text().trim());
        var rv_ct3 = parseInt($('#review_count3').text().trim());
        var rv_ct2 = parseInt($('#review_count2').text().trim());
        var rv_ct1 = parseInt($('#review_count1').text().trim());


        var newWidth5 = (rv_ct5 * 0.3);
        var newWidth4 = (rv_ct4 * 0.3);
        var newWidth3 = (rv_ct3 * 0.3);
        var newWidth2 = (rv_ct2 * 0.3);
        var newWidth1 = (rv_ct1 * 0.3);


        $('.gauge_5').css('width', newWidth5 + '%');
        $('.gauge_4').css('width', newWidth4 + '%');
        $('.gauge_3').css('width', newWidth3 + '%');
        $('.gauge_2').css('width', newWidth2 + '%');
        $('.gauge_1').css('width', newWidth1 + '%');

    });

</script>

<!--상품수량/가격 스크립-->
<script>
    let el_qty = document.getElementById('txt_qty');
    let el_ip = document.getElementById('item_price');
    let el_fp = document.getElementById('fin_price');
    let el_ts = document.getElementById('total_size');
    function plus() {
        if (!selectedButton) {
            alert("사이즈 버튼을 먼저 눌러주세요.");
            return;
        }
        let curr_qty = +(el_qty.value) + 1;
        el_qty.value = curr_qty;

        el_fp.innerText = (+(el_ip.innerText.replace(",", "")) * curr_qty).toLocaleString("ko")

    }

    function minus() {

        if (el_qty.value <= 0) {
            alert("수량을 한개이상 선택해주세요")
        }
        else {
            let curr_qty = +(el_qty.value) - 1;
            el_qty.value = curr_qty;

            el_fp.innerText = (+(el_ip.innerText.replace(",", "")) * curr_qty).toLocaleString("ko")
        }
        if (!selectedButton) {
            alert("사이즈 버튼을 먼저 눌러주세요.");
            return;
        }

    }

    function updateSize(button) {
        document.getElementById('total_size').value = button.value;
    }


    let selectedButton = null;

    function updateSize(button) {
        document.getElementById('total_size').value = button.value;

        if (selectedButton) {
            selectedButton.classList.remove('selected');
        }

        button.classList.add('selected');

        selectedButton = button;
    }
</script>


<!--추천메뉴/최근본/orgin스크립-->
<script>
    $(document).ready(function () {
        $(document).on('click', '.comment_item', function () {
            $('.comment_item_box').css({
                display: 'block'
            });
            $('.recent_item_box').css({
                display: 'none'
            });
            $('.orgin_item_box').css({
                display: 'none'
            });
            $('.comment_item').css({
                color: 'gray'
            });
            $('.recently_item').css({
                color: 'black'
            });
            $('.origin_item').css({
                color: 'black'
            });

        });

        $(document).on('click', '.recently_item', function () {
            $('.recent_item_box').css({
                display: 'block'
            });
            $('.comment_item_box').css({
                display: 'none'
            });
            $('.orgin_item_box').css({
                display: 'none'
            });

            $('.recently_item').css({
                color: 'gray'
            });
            $('.comment_item').css({
                color: 'black'
            });
            $('.origin_item').css({
                color: 'black'
            });
        });

        $(document).on('click', '.origin_item', function () {
            $('.orgin_item_box').css({
                display: 'block'
            });
            $('.comment_item_box').css({
                display: 'none'
            });
            $('.recent_item_box').css({
                display: 'none'
            });
            $('.origin_item').css({
                color: 'gray'
            });
            $('.comment_item').css({
                color: 'black'
            });
            $('.recently_item').css({
                color: 'black'
            });
        });


    })
</script>

<!--스위퍼 움직이는 스크립트-->
<script>
    document.addEventListener('DOMContentLoaded', function () {
        const swiperBox = document.querySelector('.swiper_box');
        const btnTop = document.querySelector('.btn_circle_top');
        const btnBottom = document.querySelector('.btn_circle_bottom');
        const imgs = swiperBox.querySelectorAll('.swiper_img');
        const visibleCount = 7; // 보이는 이미지 개수

        let startIndex = 0; // 현재 보이는 이미지의 시작 인덱스

        function updateButtonState() {
            btnTop.disabled = startIndex === 0;
            btnBottom.disabled = startIndex + visibleCount >= imgs.length;
        }

        function updateVisibleImages() {
            imgs.forEach((img, index) => {
                img.style.display = (index >= startIndex && index < startIndex + visibleCount) ? 'flex' : 'none';
            });
        }

        btnTop.addEventListener('click', function () {
            if (startIndex > 0) {
                startIndex--;
                updateVisibleImages();
                updateButtonState();
            }
        });

        btnBottom.addEventListener('click', function () {
            if (startIndex + visibleCount < imgs.length) {
                startIndex++;
                updateVisibleImages();
                updateButtonState();
            }
        });

        updateVisibleImages();
        updateButtonState();
    });
</script>

<!--리뷰작성 버튼 누르면 팝업레이어 -->
<script>
    document.querySelector('.register-button').addEventListener('click', function () {
        document.querySelector('.popup-overlay').style.display = 'block';
    });

    document.querySelector('.close-button').addEventListener('click', function () {
        document.querySelector('.popup-overlay').style.display = 'none';
    });

    $('.star_rating > .star').click(function () {
        $(this).parent().children('span').removeClass('on');
        $(this).addClass('on').prevAll('span').addClass('on');
    })

</script>



</body>
</html>
