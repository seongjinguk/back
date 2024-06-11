
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="<c:url value='/css/mypage_address.css'/> ">
</head>
<body>
<script>
    window.resizeTo(440, 640);
</script>
<div class="popup-overlay">
    <div class="popup-content">
        <div class="popup-header">
            <h2>배송지 등록</h2>
            <button class="close-button">&times;</button>
        </div>
        <form name ="frm" action="<c:url value='/addrResults'/>" method="POST"  >
            <div class="popup-body">
                <div class="checkbox-container">
                    <input type="checkbox" id="default-address">
                    <label for="default-address">기본 배송지로 지정합니다.</label>
                </div>
                <input type="text" name="u_seqnoFk" value="${u_seqno}" style="display: block">
                <input type="text"  name="a_group"  placeholder="배송지명" required>
                <input type="text"  name="a_rec" placeholder="받는분" required>
                <input type="text" name="a_zipcode" placeholder="우편번호" required>
                <input type="text"  name="a_addr" placeholder="주소" required>
                <input type="text"name="a_addr_detail" placeholder="나머지 주소" required>
            </div>
            <div class="popup-footer">

                <button class="confirm-button" onclick="window.close(), window.opener.reloadPage()">확인</button>
            </div>
        </form>
        <button class="cancel-button" >취소</button>
    </div>
    <script>
    // document.querySelector('.register-button').addEventListener('click', function () {
    // document.querySelector('.popup-overlay').style.display = 'flex';
    // });
    //
    // document.querySelector('.close-button').addEventListener('click', function () {
    // document.querySelector('.popup-overlay').style.display = 'none';
    // });
    //
    // document.querySelector('.cancel-button').addEventListener('click', function () {
    // document.querySelector('.popup-overlay').style.display = 'none';
    // });
    //
    // document.querySelector('.popup-overlay').addEventListener('click', function (event) {
    // if (event.target === this) {
    // this.style.display = 'none';
    // }
    // });
    document.frm.target= "addr";
    </script>
</div>
</body>
</html>
