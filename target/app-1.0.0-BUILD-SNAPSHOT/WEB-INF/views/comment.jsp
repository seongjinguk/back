<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Title</title>

    <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
</head>
<body>
    <form action="" id="reg_comment">
        <input type="text" id="txt_comment" name="comment" placeholder="댓글 추가" >
        <button type="button" id="btn_submit_comment">등록</button>
    </form>
    <div id="list_comment">
<%--        <div class="list_item">--%>
<%--            <div>--%>
<%--                <div class="item_head">--%>
<%--                    <span>작성자</span>--%>
<%--                    <span>2020-11-25 05:42</span>--%>
<%--                </div>--%>
<%--                <div class="item_body">--%>
<%--                    <input type="text" class="comment_title" name="comment_title" value="댓글 내용" readonly >--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <div>--%>
<%--                <button type="button" class="btn_comment btn_comment_modify">수정</button>--%>
<%--                <button type="button" class="btn_comment btn_comment_del">삭제</button>--%>
<%--            </div>--%>
<%--        </div>--%>
    </div>

<script>
    $(document).ready(function(){

        // 한자리 수면 앞에 0 붙이는 함수
        function zero(num) {
            if(num < 10) {
                return "0"+num;
            }
            return num;
        }

        let bno = ${param.bno};

        /* 댓글 다 불러오기 */
        // function showList(bno) {
        let showList = function(bno) {
            $.ajax({
                url: '/comments?bno='+bno,
                type: 'GET',
                // dataType: "json" // 아예 안쓰면 기본값 json 으로 적용됨.
                // data: JSON.stringify(??)

                success: function(result){

                    let tmp = "";

                    result.forEach(function(rowResult) {

                        let dt = new Date(rowResult.reg_date);
                        console.log(dt);
                        let year = dt.getFullYear();
                        let month = dt.getMonth()+1;
                        let date=dt.getDate();
                        let hour=dt.getHours();
                        let min=dt.getMinutes();
                        let sec=dt.getSeconds();


tmp+=`<div class="list_item">
        <div>
            <div class="item_head">
                <span>${"${rowResult.cno}"} | </span>
                <span>${"${rowResult.commenter}"} | </span>
                <span>${'${year}'}-${'${zero(month)}'}-${'${zero(date)}'} ${'${zero(hour)}'}:${'${zero(min)}'}:${'${zero(sec)}'}</span>
            </div>
            <div class="item_body">
                <input type="text" class="comment_title" name="comment_title" value="${'${rowResult.comment}'}" readonly >
            </div>
        </div>
        <div data-cno="${'${rowResult.cno}'}" data-bno="${'${rowResult.bno}'}">
            <button type="button" class="btn_comment btn_comment_modify">수정</button>
            <button type="button" class="btn_comment btn_comment_del">삭제</button>
            <button type="button" class="btn_comment btn_comment_edit_submit displayNone">등록</button>
            <button type="button" class="btn_comment btn_comment_edit_cancel displayNone">취소

        </div>
    </div>`
                    })
                    $('#list_comment').html(tmp);
                },
                error:function(){
                    alert("실패")
                }
            });
        }
        showList(bno)


        /* 등록 */
        $(document).on('click', '#btn_submit_comment', function(){
            let comment = $('#txt_comment').val().trim();
            if(comment=="") {
                alert("입력해");
                $('#btn_submit_comment').focus();
                return;
            }
            $.ajax({
                type:'POST',
                url:"/comments?bno="+bno,
                headers: {"content-type":"application/json"},
                data:JSON.stringify({bno:bno, comment:comment}),
                // data: {"comment":comment},
                // dataType: 'json',
                success:function(result){
                    $('#txt_comment').val(""); // 댓글 쓴 부분 빈칸으로 초기화 하기
                    showList(bno);
                },
                error:function(request, status, error){
                    console.log(request.status);
                    console.log(request.responseText);
                    console.log(error);

                    alert("등록 실패 - 관리자에게 문의하세요")
                }
            });
        });


        /* 삭제 */
        $(document).on('click', '.btn_comment_del', function(){
            let cno = $(this).parent().attr("data-cno");
            let bno = $(this).parent().attr("data-bno");
console.log("/comments/"+cno+"?bno="+bno);
            $.ajax({
                type:"DELETE",
                url: "/comments/"+cno+"?bno="+bno,
                success:function(result) {
                    showList(bno)
                },
                error:function(){
                    alert("삭제 실패")
                }
            });
        });


        /* '수정'버튼 - 댓글 수정 할 수 있게 활성화 */
        let currComment =""; // 댓글 수정 버튼 누르면 기존값 저장해놨다가, 취소 눌렀을때 원상복귀 시킬때 쓸 변수
        $(document).on('click','.btn_comment_modify',function(){
            console.log("수정 버튼")

            // 해당 댓글 수정 가능하도록 활성화 - 등록, 취소 버튼 나타남
            let el = $(this).parent().prev().find('.comment_title');
            currComment = el.val(); // 나중에 취소 누르면 currComment 값으로 다시 복귀 시킬거임
console.log("currComment1: " + currComment)
            el.attr("readonly", false);
            el.addClass('active_comment_edit');
            el.select();

            $(this).parent().children('.btn_comment').toggleClass('displayNone');
        });

        /* '취소'버튼 - 수정 취소 버튼 */
        $(document).on('click','.btn_comment_edit_cancel',function() {
            let el = $(this).parent().prev().find('.comment_title');
            el.attr("readonly", true);
            el.removeClass('active_comment_edit');
            el.val(currComment); // 원래 값으로 복원 시킴
    console.log("currComment2: " + currComment)

            $(this).parent().children('.btn_comment').toggleClass('displayNone');
        });

        /* '등록'버튼 - 댓글 수정 */
        $(document).on('click','.btn_comment_edit_submit',function() {

            let cno = $(this).parent().attr("data-cno");
            let bno = $(this).parent().attr("data-bno");
            let el = $(this).parent().prev().find('.comment_title');
            let comment = el.val();

            console.log("cno: "+cno+", bno: "+bno+", comment: "+ comment);

            $.ajax({
                type:'PATCH',       // 요청 메서드
                url: '/comments/'+cno,  // 요청 URI - Ex17_CommentController 의 맵핑 "/comments/{cno}"가 받음
                headers : { "content-type": "application/json" }, // 요청 헤더
                //dataType : 'json', // 전송받을 데이터의 타입
                data : JSON.stringify({cno:cno, comment:comment}),  // 서버로 전송할 데이터. stringify()로 직렬화 필요.
                success : function(result){
                    alert("received="+result);       // result는 서버가 전송한 데이터
                    showList(bno);
                },
                error   : function(){ alert("error") } // 에러가 발생했을 때, 호출될 함수
            });
        });

    })
</script>
</body>
</html>













