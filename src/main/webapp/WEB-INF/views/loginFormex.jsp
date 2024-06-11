<%@ page contentType="text/html;charset=utf-8"%>
<%@ page import="java.net.URLDecoder" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:set var="logInOutLink" value="${ sessionScope.id==null ? '/login':'/logout' }" />
<c:set var="logInOutTxt" value="${ sessionScope.id==null ? 'login':'logout' }" />

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />

   <link rel="stylesheet" href="<c:url value='/css/common.css'/>">
   <link rel="stylesheet" href="<c:url value='/css/h_f.css'/>">
    
    <style>
       * { box-sizing:border-box; }
       a { text-decoration: none; }
        form {
            width:400px;
            height:500px;
            display : flex;
            flex-direction: column;
            align-items:center;
            position : absolute;
            top:50%;
            left:50%;
            transform: translate(-50%, -50%) ;
            border: 1px solid rgb(89,117,196);
            border-radius: 10px;
        }
        input[type='text'], input[type='password'] {
            width: 300px;
            height: 40px;
            border : 1px solid rgb(89,117,196);
            border-radius:5px;
            padding: 0 10px;
            margin-bottom: 10px;
        }
        button {
            background-color: #eee8aa;
            color : #333;
            width:300px;
            height:50px;
            font-size: 17px;
            font-weight: 900;
            border : none;
            border-radius: 5px;
            margin : 20px 0 30px 0;
        }
        #title {
            font-size : 50px;
            margin: 40px 0 30px 0;
        }
        #msg {
            height: 30px;
            text-align:center;
            font-size:16px;
            color:red;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
	<div class="header">
      <div class="content_area">
         <div id="logo"><a href="<c:url value='/'/>">BITSTUDY</a></div>

         <ul class="menu">
            <%-- <li class="item">
               <a href="<c:url value='/'/>">Home</a>
            </li> --%>
            <li class="item">
               <a href="<c:url value='/product'/>">Board</a>
            </li>
            <%-- <li class="item">
               <a href="<c:url value='/login'/>">login</a>
            </li> --%>
            <li class="item">
				<a href="<c:url value='${logInOutLink} '/>">${logInOutTxt}</a>	
            </li>
            <c:if test="${ sessionScope.id==null }">
	            <li class="item">
	               <a href="<c:url value='/register/join'/>">Sign in</a>
	            </li> 
            </c:if> 
         </ul> 
      </div>
   </div>

    <form action="<c:url value='/login'/>" method="post" onsubmit="return formCheck(this);">
        <h3 id="title">Login</h3>
        <div id="msg">
		    <c:if test="${not empty param.msg}">
				<i class="fa fa-exclamation-circle"> ${URLDecoder.decode(param.msg)}</i>            
		    </c:if>        
		</div> 

        <input type="text" name="u_id" value="${ cookie.id.value }" placeholder="아이디 입력" autofocus>
        <input type="password" name="u_pw" value="1234" placeholder="비밀번호">
        
        
        <!-- board 페이지용 - 메인페이지에서 board 눌렀을때 로그인 안되어 있으면 로그인 페이지에서 로그인 하고 원래 가던 board페이지로 이동하게 할때 사용 -->
        <input type="text" name="prevPage" value="${ prevPage }" />
        
        
        <button>로그인</button>
        
        <div>
            <label><input type="checkbox" name=u_rId" ${empty cookie.id.value?"":"checked" }> 아이디 기억</label> |

            <a href="">비밀번호 찾기</a> |
            <a href="">회원가입</a>
        </div>
    </form>
        <script>
            function formCheck(frm) {
            	let msg ='';
                
                if(frm.id.value.length==0) {
                    setMessage('id를 입력해주세요.', frm.id);
                    return false;
                }
    
                if(frm.pwd.value.length==0) {
                    setMessage('password를 입력해주세요.', frm.pwd);
                    return false;
                }

                return true;
            }
     
            function setMessage(msg, element){
                 document.getElementById("msg").innerHTML = ` ${'${msg}'}`;
     
                 if(element) {
                     element.select();
                 }
            }
        </script>
</body>
</html>
