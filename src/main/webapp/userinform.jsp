<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="home.css">
<style> 
	.userinform_container {
		margin: 200px auto;
        width: 600px;
        height: 600px;
        box-sizing: border-box;
        border: black solid 5px;
        padding: 20px;
        position: relative;
	}
    .userinform_container h2 {
        display: block;
        text-align: center;
    }
    .userinform_container p {
        border: black solid 1px;
        padding: 10px;
    }
    .userinform_container p:nth-child(3) {
        height: 300px;
    }
    .userinform_btn {
        float: right;
        text-align: center;
    }
    .userinform_btn a {
        display: inline-block;
        height: 30px;
        background: #aeaeae;
        border: black solid 1px;
    }
    .userinform_btn a:hover {
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
    <div class="userinform_container">
    	<h2> 유저 정보 </h2>
        <p> 유저 아이디 : 홍길동 </p>
        <div class="userinform_btn">
            <a href="#"> 비밀번호 수정 </a>
            <a href="#"> 계정 삭제 </a>
        </div>
    </div>
</body>
</html>