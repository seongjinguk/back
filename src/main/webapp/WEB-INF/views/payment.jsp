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
    <link rel="stylesheet" href="<c:url value='/css/payment.css'/>">
    <link rel="stylesheet" href="<c:url value='/css/h_f.css'/>">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="./js/payment.js"></script>

</head>

<body>
<header class="header_cover">
    <header class="headera">
        <div class="message active">전 상품 무료 배송</div>
        <div class="message next">환영합니다. Dr. Martens' Copy 홈페이지입니다.</div>
        <div class="message prev">신규 가입 10% 혜택</div>
    </header>
    <header class="headerb">
        <div class="logo">
            <a href="#"><img src="./img/DM_Logo.png" alt="Dr. Martens Logo"></a>
        </div>
        <div class="menu">
            <div class="dropdown">
                <a href="#">여성</a>
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
        </div>
        <div class="right-menu">
            <a href="#">로그인/회원가입</a>
            <a href="#">장바구니</a>
            <a href="#" class="mypage">마이페이지<img src="./img/mypage_icons/Icon_mypage.png" alt="My Page Icon"></a>
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
            <li><a href="#">여성</a></li>
            <li><a href="#">남성</a></li>
            <li><a href="#">액세서리</a></li>
            <li><a href="#">SALE</a></li>
            <li><a href="#">NEW IN</a></li>
            <li><a href="#">BEST</a></li>
            <li class="divider"></li>
            <li><a href="#">로그인/회원가입</a></li>
            <li><a href="#">장바구니</a></li>
            <li><a href="#">마이페이지</a></li>
        </ul>
    </nav>
</div>
<main>
    <form action="/paymentFinish" method="POST">
    <div class="payment_txt">
        <span>주문/결제</span>
    </div>
    <div class="content_area">

        <div class="payment_L">
            <div class="payment_item_info"><span>주문상품 정보</span></div>

            <div class="payment_item_box_L">
                <c:choose>
                    <c:when test="${url.contains('cart')}">
<%--                        <input value="${c.get(status.index).getU_seqnoFk()}" name="u_seqnoFk" readonly>--%>
<%--                        <input type="text" name="b_price">--%>
<%--                        <input type="text" name="b_size">--%>
<%--                        <input type="text" name="b_itemcount">--%>
                        <div class="fromCart" >

                            <c:forEach items="${c}" varStatus="status">

                                <div class="payment_item_box">
                                    <div class="payment_item_box_L">
                                        <div class="item_box">
                                            <img src="./img/1.jpg" alt="">
                                        </div>
                                    </div>
                                    <div class="payment_item_box_R">
                                        <div class="item_info item_name"><span>${c.get(status.index).getCategoryDto().getP_name()}</span></div>
                                        <div class="item_info item_size"><span>사이즈(mm) : </span> <input type="text" name="ps_size" value="${c.get(status.index).getC_size()}" readonly></div>
                                        <div class="item_info item_qty"><span>수량 : </span> <input type="text" name="b_itemcount" value="${cd.get(status.index)}" readonly>개</div>
                                        <div class="item_info item_price"><input value="${cc.get(status.index)}" name="b_price" readonly ></div>
                                    </div>
                                    <div>
                                        <input value="${c.get(status.index).getP_seqnoFk()}" name="p_seqnoFk" readonly style="display: none">
                                        <input value="${c.get(status.index).getU_seqnoFk()}" name="u_seqnoFk" readonly style="display: none">
                                    </div>
                                </div>

                            </c:forEach>
                        </div>
                    </c:when>
                    <c:otherwise>
                        <div class="payment_item_box">
                            <div class="payment_item_box_L">
                                <div class="item_box">
                                    <img src="./img/1.jpg" alt="">
                                </div>
                            </div>
                            <div class="payment_item_box_R">
                                <div class="item_info item_name"><span>${p_name}</span></div>
                                <div class="item_info item_size"><span>사이즈(mm) : </span> <input type="text" name="ps_size" value=" ${ps_size}" readonly></div>
                                <div class="item_info item_qty"><span>수량 : </span> <input type="text" name="b_itemcount" value=" ${ps_count}" readonly>개</div>
                                <div class="item_info item_price"><input value="${p_price}"  readonly ></div>
                            </div>
                            <div>
                                <input value="${p_seqnoFk}" name="p_seqnoFk" readonly style="display: none">
<%--                                <input value="${u_seqnoFk}" name="u_seqnoFk" readonly>--%>
                            </div>
                        </div>
                    </c:otherwise>

                </c:choose>
            </div>

        <div class="user_info">
            <div class="user_info_txt">
                <span>주문자 정보</span>
            </div>
            <div class="user_info_area">
                    <div class="user-box">
                        <input type="text" id="username" name="username" />
                        <label for="username">이름</label>
                    </div>
                    <div class="user-box">
                        <input type="text" id="user_tel" name="user_tel" />
                        <label for="user_tel">연락처</label>
                    </div>
            </div>
        </div>
        <div class="address_info">
            <div class="address_info_txt">
                <span>배송지 정보</span>
            </div>
            <div class="address_info_area">
                    <div class="user-box">
                        <input type="text" id="receiver" name="b_rec"  />
                        <label for="receiver">받는 분</label>
                    </div>
                    <div class="user-box">
                        <input type="text" id="post_num" name="b_zipcode"  />
                        <label for="post_num">우편번호</label>
                    </div>
                    <div class="user-box">
                        <input type="text" id="address" name="b_addr" />
                        <label for="address">주소</label>
                    </div>
                    <div class="user-box">
                        <input type="text"  name="b_addr_detail" />
                        <label for="address">상세주소</label>
                    </div>
                    <div class="user-box" id="phonebox">
                        <input type="tel" id="phone" name="b_phone" />
                        <label for="phone">전화번호</label>
                    </div>
                    <div class="address_chk_box">
                        <input type="checkbox" id="add_chk_1"><label for="add_chk_1">
                        <span>기본 배송지로 저장</span>
                    </label>
                    </div>
                    <div class="user-box">
                        <input type="text" id="add_msg" name="b_message" value="" />
                        <label for="add_msg">배송 시 요청사항</label>
                    </div>
            </div>
        </div>
        <div class="payment_method">
            <div class="address_info_txt payment_method">
                <span>결제 수단</span>
            </div>
            <div class="payment_method_area">
                <a href="#"><input type="radio" id="creditcard" value="신용카드" class="p_methods" name="b_buy"></a>
                <label for="creditcard">신용카드</label>
                <a href="#"><input type="radio" id="kakaopay" value="카카오페이" class="p_methods" name="b_buy"></a>
                <label for="kakaopay">카카오페이</label>
                <a href="#"><input type="radio" id="directpay" value="계좌이체" class="p_methods" name="b_buy"></a>
                <label for="directpay">계좌이체</label>
            </div>
        </div>
    </div>
    <div class="payment_R">
        <div class="order_price">
            <div class="order_price_txt">
                <span>주문 예정 금액</span>
            </div>
            <div class="order_price_detail">
                <div class="detail_txt total_price">
                    <span>총 상품 금액</span>
                    <span>${p_price}</span>
                </div>
                <div class="detail_txt delivery_price">
                    <span>배송비</span>
                    <span>₩(+)0</span>
                </div>
                <div class="detail_txt total_price2">
                    <span>총 상품 금액</span>
                    <span name="b_price">${p_price}</span>
                    <input name="b_price" value="${p_price}" style="display: none">
                </div>
            </div>
            <div class="order_agree">
                <span>약관 동의</span>
            </div>
            <div class="caution">
                <div class="chk_area all_agree">
                    <input type="checkbox" id="rd1" name="checkAll">
                    <label for="rd1">
                        <span>전체동의</span>
                    </label>
                </div>

                <div class="chk_area">
                    <input type="checkbox" id="rd2" name="checkbox" required>
                    <label for="rd2">
                                <span>개인정보 제3자 제공 동의
                                    (필수)</span>
                    </label>
                </div>

                <div class="chk_area">
                    <input type="checkbox" id="rd3" name="checkbox" required>
                    <label for="rd3">
                                <span>반품 시 결제금액에서 반품 왕복
                                    배송비를 차감한 금액이 환불되는 것에
                                    동의합니다. 네이버페이 및 비회원으로 구매 시
                                    무료 교환 제외입니다.</span>
                    </label>
                </div>

                <div class="chk_area">
                    <input type="checkbox" id="rd4" name="checkbox" required>
                    <label for="rd4">
                                <span>교환/반품 시 신청 사유 동봉하여 발송해 주십시오.
                                    내용 미 동봉 시 처리가 지연될 수 있습니다.</span>
                    </label>
                </div>
                <input id="b_code" name="b_code" >
                <button class="payment_btn" type="submit" onclick="console.log(1)">결제하기</button>
            </div>
        </div>
    </div>

    </div>
    </form>
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
                <a href="#"><img src="./img/footer_sns_icons/icon_sns_facebook 1.png"></a>
                <a href="#"><img src="./img/footer_sns_icons/icon_sns_instagram 1.png"></a>
                <a href="#"><img src="./img/footer_sns_icons/icon_sns_twitter 1.png"></a>
                <a href="#"><img src="./img/footer_sns_icons/icon_sns_youtube 1.png"></a>
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
<script src="./js/payment.js"></script>
<script src="./js/h_f.js"></script>
<script type="text/javascript">
    // history.replaceState({}, null, location.pathname);
    $(document).ready(function (){
        $('#b_code').attr('value',Math.floor(Math.random()*50000+1));

    })
</script>
</body>

</html>