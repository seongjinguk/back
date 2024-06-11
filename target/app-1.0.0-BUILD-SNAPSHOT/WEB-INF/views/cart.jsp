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
    <title>Cart</title>
    <link rel="stylesheet" href="./css/h_f.css">
    <link rel="stylesheet" href="./css/cart.css">
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


    <main>
        <div class="content_area1">
            <form action="/payment" method="POST">
            <div class="cart_box">
                <div class="cart_txt">
                    <span>장바구니</span>
                </div>
                <div class="cart_area_L">
                    <div class="select_area">
                        <label>
                            <input type="checkbox" name="checkAll" id="chkall" />
                            전체 선택
                        </label>
                    </div>
                    <c:forEach items="${c}" varStatus="status">
                        <div class="select_box">
                            <label>
                                <input type="checkbox" name="items" id="items${c.get(status.index).getC_seqno()}"/>
                                선택
                            </label>
                            <div class="option_select" readonly>
                                <input type="text" class="c_seqno" name="c_seqno" value="${c.get(status.index).getC_seqno()}"/>
                                <button type="submit" formaction="/cart/remove" formmethod="post" id="delete${c.get(status.index).getC_seqno()}">x</button>
                            </div>
                            <span class="option_select">삭제</span>
                            <button type="button" id="minus${c.get(status.index).getC_seqno()}" class="option_select minus" >수량 -</button>
                            <button type="button" id="plus${c.get(status.index).getC_seqno()}" class="option_select plus">수량 +</button>
                        </div>

                        <div class="select_detail_box">
                            <div class="payment_item_box">
                                <div class="payment_item_box_L">
                                    <div class="item_box">
                                        <img src="./resources/img/1.jpg" alt="">

                                    </div>
                                </div>
                                <%--                            <c:choose>--%>
                                <%--                                <c:when test="${sessionScope.p_seqno eq null}">--%>
                                    <div class='payment_item_box_R'>
                                        <div class='item_info item_name'><span>${c.get(status.index).getCategoryDto().getP_name()}</span></div>
                                        <div class='item_info item_size'><span>사이즈(mm) : </span>${c.get(status.index).getC_size()}</div>
                                        <div class='item_info item_qty'><span>수량 : </span>
                                            <input id="txt_qty${c.get(status.index).getC_seqno()}" type="text" value=" ${c.get(status.index).getC_count()}"  readonly="readonly" name="c_count">
                                        </div>
                                        <div class='item_info item_price${c.get(status.index).getC_seqno()}'>${c.get(status.index).getC_price()}</div>
                                        <input id="ppp${c.get(status.index).getC_seqno()}" type="text" name="c_price">
                                    </div>
                                    <%--                                </c:when>--%>
                                <%--                                <c:otherwise>--%>
                                    <%--                                    <div class='payment_item_box_R'>--%>
                                        <%--                                        <div class='item_info item_name'><span>${p_name}</span></div>--%>
                                        <%--                                        <div class='item_info item_size'><span>사이즈(mm) : </span>${ps_size}</div>--%>
                                        <%--                                        <div class='item_info item_qty'><span>수량 : </span> ${ps_count}</div>--%>
                                        <%--                                        <div class='item_info item_price'>${p_price},000</div>--%>
                                        <%--                                    </div>--%>
                                    <%--                                </c:otherwise>--%>
                                <%--                            </c:choose>--%>
                            </div>
                        </div>
                    </c:forEach>
                </div>


                <div class="cart_area_R">
                    <div class="order_price_txt">
                        <span>주문 예정 금액</span>
                    </div>
                    <div class="order_price_detail">
                        <div class="detail_txt total_price">
                            <span>총 상품 금액</span>

                            <div class="span_wrap">
                                <span>₩</span>
                                <span id="fin_price">${sum}</span>
                                <span>원</span>
                            </div>

                        </div>
                        <div class="detail_txt delivery_price">
                            <span>배송비</span>

                            <span>₩0원</span>

                        </div>
                        <div class="detail_txt discount_price">
                            <span>총 할인 금액</span>
                            <div class="span_wrap disc_pr">
                                <span>₩</span>
                                <span id="discount_price">${sum}</span>
                                <span>원</span>
                            </div>
                        </div>
                        <div class="detail_txt total_price2">
                            <span>총 결제 금액</span>
                            <div class="span_wrap">
                                <span>₩</span>
                                <span id="total_price2">${sum}</span>
                                <span>원</span>
                            </div>
                        </div>
                        <div class="pymt_btn">
                            <span><button class="gotopayment" type="submit">결제하기</button></span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </form>

        <div class="content_area2">
            <div class="products">
                <div class="category">
                    <h2>최근 본 상품</h2>
                </div>
                <div class="product-list">
                    <div class="product">
                        <img src="./img/items/1461_1.jpg" alt="Product 1">
                        <p>1461 모노</p>
                        <p class="price">₩210,000</p>
                        <div class="color_box1"></div>
                    </div>
                    <div class="product">
                        <img src="./img/items/1461_2.jpg" alt="Product 2">
                        <p>1461 벡스</p>
                        <p class="price">₩230,000</p>
                        <div class="color_box1"></div>
                    </div>
                    <div class="product">
                        <img src="./img/items/1461_3.jpg" alt="Product 3">
                        <p>1461 나파</p>
                        <p class="price">₩210,000</p>
                        <div class="color_box1"></div>
                    </div>
                    <div class="product">
                        <img src="./img/items/1461_4.jpg" alt="Product 4">
                        <p>1461 스무스</p>
                        <p class="price">₩210,000</p>
                        <div class="color_box1"></div>
                    </div>
                    <div class="product">
                        <img src="./img/items/1461_5.jpg" alt="Product 5">
                        <p>1461 쿼드</p>
                        <p class="price">₩250,000</p>
                        <div class="color_box1"></div>
                    </div>
                    <div class="product">
                        <img src="./img/items/1461_6.jpg" alt="Product 6">
                        <p>1461 쿼드 스퀘어드</p>
                        <p class="price">₩175,000 <span
                                style="text-decoration: line-through; color: #808080; font-size: 13px;">₩250,000</span>
                            <span style="color: red;">30%</span>
                        </p>
                        <div class="color_box1"></div>
                    </div>
                </div>
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


    <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
    <script src="./js/cart.js"></script>
    <script src="./js/h_f.js"></script>
<script>
    $(document).ready(function () {
        <c:forEach items="${c}" varStatus="status">
            $('#ppp${c.get(status.index).getC_seqno()}').attr('value', ${c.get(status.index).getC_price()});
            $('#plus${c.get(status.index).getC_seqno()}').click(function plus() {
            let el_qty${c.get(status.index).getC_seqno()} = document.getElementById('txt_qty${c.get(status.index).getC_seqno()}');
            let curr_qty${c.get(status.index).getC_seqno()} = (el_qty${c.get(status.index).getC_seqno()}).value;
            let count = Number(curr_qty${c.get(status.index).getC_seqno()});
            let result = 0;
            result = Number(curr_qty${c.get(status.index).getC_seqno()}) + 1
            $('#txt_qty${c.get(status.index).getC_seqno()}').attr('value', result);
            let price = +($('.item_price${c.get(status.index).getC_seqno()}').text().replace(/,/g, ''));
            let p_result = (price / count) * result;
            $('#ppp${c.get(status.index).getC_seqno()}').attr('value', p_result);
            let money = addComma(p_result);
            $('.item_price${c.get(status.index).getC_seqno()}').text(money);

        })
            $('#minus${c.get(status.index).getC_seqno()}').click(function minus() {

            let el_qty${c.get(status.index).getC_seqno()} = document.getElementById('txt_qty${c.get(status.index).getC_seqno()}');
            let curr_qty${c.get(status.index).getC_seqno()} = (el_qty${c.get(status.index).getC_seqno()}).value;
            let count = Number(curr_qty${c.get(status.index).getC_seqno()});
            let result = 0;
            result = Number(curr_qty${c.get(status.index).getC_seqno()}) - 1
            $('#txt_qty${c.get(status.index).getC_seqno()}').attr('value', result);
            if (result <= 0) {
            alert('삭제된다?');
            $('#delete${c.get(status.index).getC_seqno()}').click();
        }
            let price = +($('.item_price${c.get(status.index).getC_seqno()}').text().replace(/,/g, ''));
            let p_result = (price / count) * result;
            $('#ppp${c.get(status.index).getC_seqno()}').attr('value', p_result);
            let money = addComma(p_result);
            $('.item_price${c.get(status.index).getC_seqno()}').text(money);


        }
            )
        </c:forEach>

        function addComma(value) {
            value = value.toLocaleString("ko");
            return value;
        }


        $('.plus').click(function add() {
            let a = 0;
            <c:forEach items="${c}" varStatus="status">
                a += +($('#ppp${c.get(status.index).getC_seqno()}').val().replace(/,/g, ''));
            </c:forEach>
            let aa = addComma(a);
            console.log(aa);
            $('#chk_price').text(aa + "원")
            $('#total_price').text(aa + "원")
        });

        $('.minus').click(function drop() {
            let a = 0;
            <c:forEach items="${c}" varStatus="status">
                a += +($('#ppp${c.get(status.index).getC_seqno()}').val().replace(/,/g, ''));

            </c:forEach>
            let aa = addComma(a);
            console.log(aa);
            $('#chk_price').text(aa + "원")
            $('#total_price').text(aa + "원")
        });
        <%--            <c:forEach items="${c}" varStatus="status">--%>
            <%--            $('#items${c.get(status.index).getC_seqno()}').(function chk() {--%>
                <%--                let a = 0;--%>

                <%--                a += +($('#ppp${c.get(status.index).getC_seqno()}').val().replace(/,/g, ''));--%>
                <%--                let aa = addComma(a);--%>
                <%--                console.log(aa);--%>
                <%--                $('#chk_price').text(aa + "원")--%>
                <%--                $('#total_price').text(aa + "원")--%>
                <%--            });--%>
            <%--            </c:forEach>--%>
    })

</script>
<script>
    $(document ).ready(function() {

        history.replaceState({}, null, location.pathname);

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


    const checkAll = document.querySelector("[name=checkAll]");
    const items = [...document.querySelectorAll("[name=items]")];

    // 아이템 선택 이벤트
    // items.forEach(async (item) => {
    //   item.onchange = (e) => {
    //     checkAll.checked = items.every((item) => item.checked);
    //   }
    // });

    // 전체 선택 이벤트
    checkAll.onchange = (e) => {
        items.forEach(async (item) => item.checked = e.target.checked)
    };



    <%--        function minus() {--%>
    <%--            <c:forEach items="${c}" varStatus="status">--%>
        <%--            let curr_qty${c.get(status.index).getC_seqno()} = +(el_qty${c.get(status.index).getC_seqno()}.value) + 1;--%>
        <%--            </c:forEach>--%>
    <%--            <c:forEach items="${c}" varStatus="status">--%>
        <%--            el_qty${c.get(status.index).getC_seqno()}.value = curr_qty${c.get(status.index).getC_seqno()};--%>
        <%--            </c:forEach>--%>
//             el_fp.innerText = (+(el_ip.innerText.replace(",", "")) * curr_qty).toLocaleString("ko")
//             ls_pr.innerText = (+(el_ip.innerText.replace(",", "")) * curr_qty).toLocaleString("ko")

    }

    // let el_ip = document.getElementById('item_price');
    // let el_fp = document.getElementById('fin_price');
    // let dc_pr = document.getElementById('discount_price');
    // let ls_pr = document.getElementById('total_price2');
    <%--        <c:forEach items="${c}" varStatus="status">--%>
        <%--        $('plus${c.get(status.index).getC_seqno()}').onclick(plus());--%>
        <%--        $('minus${c.get(status.index).getC_seqno()}').onclick(plus());--%>
        <%--        </c:forEach>--%>


    <%--function plus() {--%>
    <%--    <c:forEach items="${c}" varStatus="status">--%>
        <%--    if (el_qty${c.get(status.index).getC_seqno()}.value <= 0) {--%>
            <%--        onclick(name = 'c_seqno');--%>

            <%--    }--%>
        <%--        </c:forEach>--%>
    <%--    else {--%>
    <%--        <c:forEach items="${c}" varStatus="status">--%>
        <%--        let curr_qty${c.get(status.index).getC_seqno()} = +(el_qty${c.get(status.index).getC_seqno()}.value) - 1;--%>
        <%--        el_qty${c.get(status.index).getC_seqno()}.value = curr_qty${c.get(status.index).getC_seqno()};--%>
        <%--        </c:forEach>--%>
    <%--        el_fp.innerText = (+(el_ip.innerText.replace(",", "")) * curr_qty).toLocaleString("ko")--%>
    <%--        ls_pr.innerText = (+(el_ip.innerText.replace(",", "")) * curr_qty).toLocaleString("ko")--%>
        <%--    }--%>

    <%--}--%>

    var swiper = new Swiper(".mySwiper", {
        slidesPerView: 6,
        spaceBetween: 30,
        navigation: {
            nextEl: ".swiper-button-next",
            prevEl: ".swiper-button-prev",
        },
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
</script>
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
</script>

</body>

</html>