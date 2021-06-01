<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="home.css">
<style> 
	.userlogin_container {
		margin: 200px auto;
        width: 400px;
        height: 200px;
        box-sizing: border-box;
        border: black solid 5px;
	}
    .userlogin_container h2 {
        display: block;
        text-align: center;
    }
    .userlogin_container input {
        display: block;
        margin: auto;
        padding: 10px;
        box-sizing: border-box;
        width: 100%;
    }

    .userlogin_container input[type="submit"]:hover {
        background: skyblue;
    }
</style>
</head>
<body>
    <header>
        <div class="header_container">
            <div class="header_menu_container"> 
                   <ul>
                       <li> 로고 </li>
                       <li> <a href="home.jsp"> 홈 </a> </li>
                       <li> <a href="#"> 게시판 </a>  </li>
                       <li> <a href="userlogin.jsp"> 로그인  </a> </li>
                       <li> <a href="userjoin.jsp"> 회원가입 </a> </li>
                   </ul>
            </div>
        </div>
    </header>
    <div class="userlogin_container">
    	<h2> 로그인 페이지 </h2>
    	<form method="post" action="userlogin.do">
    		<input type="text" name="userId" placeholder="아이디를 입력하세요" required> 
    		<input type="text" name="userPwd" placeholder="비밀번호를 입력하세요" required> 
    		<input type="submit" value="로그인"> 
    	</form>
    </div>
</body>
</html>