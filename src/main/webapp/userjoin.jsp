<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="home.css">
<style> 
	.userjoin_container {
		margin: 200px auto;
        width: 400px;
        height: 200px;
        box-sizing: border-box;
        border: black solid 5px;
	}
    .userjoin_container h2 {
        display: block;
        text-align: center;
    }
    .userjoin_container input {
        display: block;
        margin: auto;
        padding: 10px;
        box-sizing: border-box;
        width: 100%;
    }

    .userjoin_container input[type="submit"]:hover {
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
                       <li> <a href="#"> 홈 </a> </li>
                       <li> <a href="#"> 게시판 </a>  </li>
                       <li> <a href="#"> 로그인  </a> </li>
                       <li> <a href="#"> 회원가입 </a> </li>
                   </ul>
            </div>
        </div>
    </header>
    <div class="userjoin_container">
    	<h2> 회원가입 페이지 </h2>
    	<form method="post" action="home.do">
    		<input type="text" placeholder="아이디를 입력하세요" required> 
    		<input type="text" placeholder="비밀번호를 입력하세요" required> 
    		<input type="submit" value="회원가입"> 
    	</form>
    </div>
</body>
</html>