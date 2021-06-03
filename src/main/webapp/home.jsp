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
	.login_container {
		margin: auto;
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
                       		<li><a href="#"> 회원정보 </a></li>
                       </c:otherwise>
                       </c:choose>
                   </ul>
            </div>
        </div>
    </header>
    메인 페이지 입니다.
</body>
</html>