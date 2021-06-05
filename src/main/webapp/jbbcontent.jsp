<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="home.css">
<style> 
	.jbbcontent_container {
		margin: 200px auto;
        width: 600px;
        height: 600px;
        box-sizing: border-box;
        border: black solid 5px;
        padding: 20px;
        position: relative;
	}
    .jbbcontent_container h2 {
        display: block;
        text-align: center;
    }
    .jbbcontent_container p {
        border: black solid 1px;
        padding: 10px;
    }
    .jbbcontent_container p:nth-child(3) {
        height: 300px;
    }
    .jbbcontent_btn {
        float: right;
        text-align: center;
    }
    .jbbcontent_btn a {
        display: inline-block;
        width: 60px;
        height: 30px;
        background: #aeaeae;
        border: black solid 1px;
    }
    .jbbcontent_btn a:hover {
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
                       <c:set var="sessioncheck" value="${sessionScope.userId}"/>         
                       <c:choose>
                       <c:when test="${sessioncheck eq null}">
                       		<li> <a href="userlogin.jsp"> 로그인  </a> </li>
                       		<li> <a href="userjoin.jsp"> 회원가입 </a> </li>
                       </c:when>
                       <c:otherwise>
                       		<li> <a href="userlogout.do"> 로그아웃  </a> </li>	
                       		<li><a href="userinform.jsp"> 회원정보 </a></li>
                       </c:otherwise>
                       </c:choose>
                   </ul>
            </div>
        </div>
    </header>
    <div class="jbbcontent_container">
    	<h2> 게시판 글 내용 </h2>
    	<p> 제목 : 제목은 무엇입니까? </p>
    	<p> 내용  <br/><br/> 내용은 무엇입니까? </p>
        <div class="jbbcontent_btn">
            <a href="#"> 글 수정</a>
            <a href="#"> 글 삭제</a>
        </div>
    </div>
</body>
</html>