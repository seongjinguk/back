<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="logInOutLink" value="${ sessionScope.u_id==null ? '/login':'/loginout' }" />
<c:set var="logInOutTxt" value="${ sessionScope.u_id==null ? '로그인/회원가입':'로그아웃' }" />
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Main_Page</title>
    <link rel="icon" href="/img/DM_Logo.png">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css">
    <link rel="stylesheet" href="<c:url value='/css/index.css'/>">
    <link rel="stylesheet" href="<c:url value='/css/category.css'/>">
    <link rel="stylesheet" href="<c:url value='/css/h_f.css'/>">
    <link rel="stylesheet" href="<c:url value='/JS/category.js'/>">
</head>
<style>
    @import url('https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&display=swap');
</style>

<body>
<div id="wrap">
    <header class="header_cover">
        <header class="headera">
            <div class="message active">전 상품 무료 배송</div>
            <div class="message next">환영합니다. Dr. Martens' Copy 홈페이지입니다.</div>
            <div class="message prev">신규 가입 10% 혜택</div>
        </header>
        <header class="headerb">
            <div class="logo">
                <a href="#"><img src="/img/DM_Logo.png" alt="Dr. Martens Logo"></a>
            </div>
            <nav class="menu">
                <div class="dropdown">
                    <a href="#">여성</a>
                    <div class="dropdown-content">
                        <a href="#">슈즈</a>
                        <a href="#">부츠</a>
                        <a href="#">샌들</a>
                    </div>
                </div>
                <div class="dropdown">
                    <a href="<c:url value='/category'/>">남성</a>
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
                <a href="#" class="mypage">마이페이지<img src="/img/mypage_icons/Icon_mypage.png" alt="My Page Icon"></a>
                <div class="search">
                    <input type="text" placeholder="Search...">
                    <button>검색</button>
                </div>
            </div>
        </header>
    </header>

    <div class="view">
    </div>
    <main class="main">
        <div class="content_area">
            <span class="view_txt">HOME > 여성</span>
            <div class="cate_nav">
                <div class="cate_nav_box"><span>여성</span>
                    <p>부츠, 슈즈, 샌들 등 닥터마틴의 여성용 신발들을 한 번에 모아서 구경하세요.</p>
                    <div class="cate_btn">
                        <button type="button">전체보기</button>
                        <button type="button">BEST</button>
                        <button type="button">슈즈</button>
                        <button type="button">샌들</button>
                        <button type="button">부츠</button>
                    </div>
                    <div class="cate_filter">
                        <div class="cate_filter_box box_filter">
                            <img src="/img/filter.jpg"
                            <img src="/img/filter.jpg" alt="">
                            <span class="filter_box_txt2">필터</span>
                            <span>∨</span>
                        </div>
                        <div class="cate_filter_box box_sort">
                            <img src="/img/sort.jpg" alt="">
                            <span class="filter_box_txt1">정렬기준</span>
                            <span>∨</span>
                        </div>
                        <div class="filter_box toggle">
                            <form action="">
                                <div class="filter_option filter_color">
                                    <span>색상</span>
                                    <input type="checkbox" class="color_box" id="color_red">
                                    <label for="color_red"></label>
                                    <input type="checkbox" class="color_box" id="color_green">
                                    <label for="color_green"></label>
                                    <input type="checkbox" class="color_box" id="color_blue">
                                    <label for="color_blue"></label>
                                    <input type="checkbox" class="color_box" id="color_gray">
                                    <label for="color_gray"></label>
                                    <input type="checkbox" class="color_box" id="color_black">
                                    <label for="color_black"></label>
                                    <input type="checkbox" class="color_box" id="color_white">
                                    <label for="color_white"></label>
                                    <input type="checkbox" class="color_box" id="color_pink">
                                    <label for="color_pink"></label>
                                    <input type="checkbox" class="color_box" id="color_purple">
                                    <label for="color_purple"></label>
                                    <input type="checkbox" class="color_box" id="color_yellow">
                                    <label for="color_yellow"></label>
                                    <input type="checkbox" class="color_box" id="color_brown">
                                    <label for="color_brown"></label>
                                </div>
                                <div class="filter_option filter_price">
                                    <span>가격</span>
                                    <input type="range" name="price_f" id="price_f"
                                           min="0" max="500000" step="100" value="0" oninput="document.getElementById('value1').innerHTML = Number(this.value).toLocaleString('ko-KR')">
                                    <span>0</span><span>~</span><span id="value1">500,000</span>
                                </div>
                                <div class="filter_option filter_size">
                                    <span>사이즈</span>
                                    <input type="checkbox" id="S220" name="size" class="size_box" checked><label for="S220"><span>220</span></label>
                                    <input type="checkbox" id="S230" name="size" class="size_box"><label for="S230"><span>230</span></label>
                                    <input type="checkbox" id="S240" name="size" class="size_box"><label for="S240"><span>240</span></label>
                                    <input type="checkbox" id="S250" name="size" class="size_box"><label for="S240"><span>240</span></label>
                                    <input type="checkbox" id="S260" name="size" class="size_box"><label for="S240"><span>240</span></label>
                                    <input type="checkbox" id="S270" name="size" class="size_box"><label for="S240"><span>240</span></label>
                                    <input type="checkbox" id="S280" name="size" class="size_box"><label for="S240"><span>240</span></label>
                                    <input type="checkbox" id="S290" name="size" class="size_box"><label for="S290"><span>290</span></label>
                                    <input type="checkbox" id="S300" name="size" class="size_box"><label for="S300"><span>300</span></label>
                                </div>
                                <div class="filter_option filter_type">
                                    <span>구분</span>
                                    <input type="checkbox" id="common" name="gender" class="type_box" ><label for="common"><span>공용</span></label>
                                    <input type="checkbox" id="male" name="gender" class="type_box"><label for="male"><span>남성</span></label>
                                    <input type="checkbox" id="female" name="gender" class="type_box" checked><label for="female"><span>여성</span></label>
                                </div>
                                <div class="filter_btn">
                                    <button type="reset">초기화</button>
                                    <button type="button" id="btn_search" name="btn_search">검색</button>
                                </div>
                            </form>
                        </div>
                        <div class="sort_box toggle2">
                            <div class="sort_input_box">
                                <input type="radio" name="orderBy" value="date" id="orderByDate" checked><label for="orderByDate">신규등록순</label>
                            </div>
                            <div class="sort_input_box">
                                <input type="radio" name="orderBy" value="popularity" id="orderByPopularity"><label for="orderByPopularity">랭킹순</label>
                            </div>
                            <div class="sort_input_box">
                                <input type="radio" name="orderBy" value="priceLowToHigh" id="orderByPriceLowToHigh"><label for="orderByPriceLowToHigh">낮은가격순</label>
                            </div>
                            <div class="sort_input_box">
                                <input type="radio" name="orderBy" value="priceHighToLow" id="orderByPriceHighToLow"><label for="orderByPriceHighToLow">높은가격순</label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="cate_product_area">
            <div class="content_area2">
                <div class="cate_item_area">
                    <c:forEach var="CategoryDto" items="${list}">
                        <a href="<c:url value='/product/read?p_seqno=${CategoryDto.p_seqno}&p_name=${CategoryDto.p_name}&p_price=${CategoryDto.p_price}'/>" id="productLink">
                            <div class="cate_item_box">
                                <div class="item_img">
                                    <img src="/img/category/${CategoryDto.p_seqno}.jpg" alt="">

                                </div>
                                <div class="item_name">${CategoryDto.p_name}</div>
                                <div class="item_price">${CategoryDto.p_price}</div>
                                <div class="item_color">
                                    <div class="color_box"  style="background-color: ${CategoryDto.p_color}"></div>
                                </div>
                            </div>
                        </a>
                    </c:forEach>
                </div>
            </div>
        </div>
    </main>


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
                    <a href="#"><img src="/img/footer_sns_icons/icon_sns_facebook 1.png"></a>
                    <a href="#"><img src="/img/footer_sns_icons/icon_sns_instagram 1.png"></a>
                    <a href="#"><img src="/img/footer_sns_icons/icon_sns_twitter 1.png"></a>
                    <a href="#"><img src="/img/footer_sns_icons/icon_sns_youtube 1.png"></a>
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
</div>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
<script>
    $(document).ready(function() {
        function filterAndSort() {
            var colors = [];
            $('.color_box:checked').each(function() {
                colors.push($(this).attr('id').replace('color_', ''));
            });
            if (colors.length === 0) {
                colors = null;
            }
            console.log("색깔: " + colors);

            var minPrice = $('#price_f').attr('min');
            var maxPrice = $('#price_f').val();
            console.log("최소 가격: " + minPrice);
            console.log("최대 가격: " + maxPrice);

            var size = $('input[name="size"]:checked').attr('id');
            size = size ? size.replace('S', '') : null;
            console.log("사이즈: " + size);

            var gender = $('input[name="gender"]:checked').attr('id');
            gender = gender ? gender : null;
            console.log("성별: " + gender);

            var orderBy = $('input[name="orderBy"]:checked').val();
            console.log("정렬 기준: " + orderBy);

            $.ajax({
                type: "GET",
                url: "/category/filter",
                data: {
                    colors: colors,
                    minPrice: minPrice,
                    maxPrice: maxPrice,
                    sizeCount: size,
                    gender: gender,
                    orderBy: orderBy
                },
                traditional: true,
                success: function(response) {
                    console.log("서버 응답: ", response);  // 응답 데이터를 콘솔에 출력
                    displayFilteredResults(response);
                },
                error: function(xhr, status, error) {
                    console.log("서버에 데이터를 전송하는 중 오류가 발생했습니다:", error);
                }
            });
        }

        $('#btn_search').on('click', function() {
            filterAndSort();
        });

        $('input[name="orderBy"]').on('change', function() {
            filterAndSort();
        });
    });

    function displayFilteredResults(data) {
        let cateItemArea = $('.cate_item_area');
        cateItemArea.empty(); // 기존 결과 삭제

        data.forEach(function(item) {
            console.log("상품 데이터: ", item);  // 각 항목 데이터를 콘솔에 출력
            cateItemArea.append(`
            <a href="/product/read?p_seqno=${'${item.p_seqno}'}&p_name=${'${item.p_name}'}&p_price=${'${item.p_price}'}">
                <div class="cate_item_box">
                    <div class="item_img">
                         <img src="/img/category/${'${item.p_seqno}'}.jpg" alt="">
                    </div>
                    <div class="item_name">${'${item.p_name}'}</div>
                    <div class="item_price">${'${item.p_price}'}</div>
                    <div class="item_color">
                   <div class="color_box"  style="background-color: ${'${item.p_color}'}"></div>
                    </div>
                </div>
            </a>
        `);
        });
        let f_o_top = $('.footer').offset().top; // 무한스크롤 방법2 에서 사용
        let count = 1; // 무한스크롤 몇번 될지 정하는 용도
        $(window).scroll(function(){
            let s_top = $(window).scrollTop();

            if(count <= 5) {
                let s_bot = s_top + $(window).height();
                if(f_o_top + 100 <= s_bot) {
                    for(let i=0; i<1; i++) {
                        $('.cate_item_area').append(`
                            <c:forEach var="CategoryDto" items="${list}">
                                <a href="<c:url value='/product/read?p_seqno=${CategoryDto.p_seqno}&p_name=${CategoryDto.p_name}&p_price=${CategoryDto.p_price}'/>" id="productLink">
                                    <div class="cate_item_box">
                                        <div class="item_img">
                                            <img src="/img/category/${CategoryDto.p_seqno}.jpg" alt="">
                                        </div>
                                        <div class="item_name" >${CategoryDto.p_name}</div>
                                        <div class="item_price" >${CategoryDto.p_price}</div>
                                        <div class="item_color">
                                             <div class="color_box"  style="background-color: ${CategoryDto.p_color}"></div>
                                        </div>
                                    </div>
                                </a>
                            </c:forEach>
                        `);
                    }
                    count += 1;
                    f_o_top = $('.footer').offset().top;
                }
            }

        });

    }

    let filterBox = document.querySelector('.filter_box');
    let filterBtn = document.querySelector('.box_filter');
    let sortBox = document.querySelector('.sort_box');
    let sortBtn = document.querySelector('.box_sort');

    function closeAll() {
        filterBox.classList.add('toggle');
        sortBox.classList.add('toggle2');
    }

    filterBtn.addEventListener('click', () => {
        if (filterBox.classList.contains('toggle')) {
            closeAll();
            filterBox.classList.remove('toggle');
        } else {
            filterBox.classList.add('toggle');
        }
    });

    sortBtn.addEventListener('click', () => {
        if (sortBox.classList.contains('toggle2')) {
            closeAll();
            sortBox.classList.remove('toggle2');
        } else {
            sortBox.classList.add('toggle2');
        }
    });

    closeAll();

</script>
<script>
    $(document).ready(function(){
        let f_o_top = $('.footer').offset().top; // 무한스크롤 방법2 에서 사용
        let count = 1; // 무한스크롤 몇번 될지 정하는 용도
        $(window).scroll(function(){
            let s_top = $(window).scrollTop();

            if(count <= 5) {
                let s_bot = s_top + $(window).height();
                if(f_o_top + 100 <= s_bot) {
                    for(let i=0; i<1; i++) {
                        $('.cate_item_area').append(`
                            <c:forEach var="CategoryDto" items="${list}">
                                <a href="<c:url value='/product/read?p_seqno=${CategoryDto.p_seqno}&p_name=${CategoryDto.p_name}&p_price=${CategoryDto.p_price}'/>" id="productLink">
                                    <div class="cate_item_box">
                                        <div class="item_img">
                                            <img src="/img/category/${CategoryDto.p_seqno}.jpg" alt="">
                                        </div>
                                        <div class="item_name" >${CategoryDto.p_name}</div>
                                        <div class="item_price" >${CategoryDto.p_price}</div>
                                        <div class="item_color">
                                             <div class="color_box"  style="background-color: ${CategoryDto.p_color}"></div>
                                        </div>
                                    </div>
                                </a>
                            </c:forEach>
                        `);
                    }
                    count += 1;
                    f_o_top = $('.footer').offset().top;
                }
            }

        });
    });
</script>
<script>
    $(document).ready(function(){

        $('input[type="checkbox"][class="size_box"]').click(function(){

            if ($(this).prop('checked')) {
                $('input[type="checkbox"][class="size_box"]').prop('checked', false);
                $(this).prop('checked', true);
            }
        });
        $('input[type="checkbox"][class="type_box"]').click(function(){

            if ($(this).prop('checked')) {
                $('input[type="checkbox"][class="type_box"]').prop('checked', false);
                $(this).prop('checked', true);
            }
        });

    });
</script>

</body>
</html>
