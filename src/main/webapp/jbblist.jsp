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
	.jbblist_container {
		margin: 200px auto;
        width: 600px;
        height: 600px;
        box-sizing: border-box;
        border: black solid 5px;
	}
    .jbblist_container h2 {
        display: block;
        text-align: center;
    }
    .jbblist_container table {
        margin: auto;
        box-sizing: border-box;
        background: #aeaeae;
    }
    .jbblist_container th {
        border: black solid 1px;
    }
    .jbblist_container tr:nth-child(2n+3) {
        background: blanchedalmond;
    }
    .jbblist_container tr:nth-child(2n) {
        background:cornflowerblue;
    }
    .jbblist_container  th:nth-child(1) {
        width: 50px;
    }
    .jbblist_container  th:nth-child(2) {
        width: 250px;
    }
    .jbblist_container  th:nth-child(3) {
        width: 100px;
    }
    .jbblist_container  th:nth-child(4) {
        width: 160px;
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
    <div class="jbblist_container">
    	<h2> 게시판 </h2>
    	<table>
            <tr> 
                <th> 번호 </th>
                <th> 제목 </th>
                <th> 작성자 </th>
                <th> 작성일 </th>
            </tr>
            <tr>
                <td> 1</td>
                <td> 처음 작성된 글입니다.</td>
                <td> 홍길동 </td>
                <td> 2021-05-31</td>
            </tr>
            <tr>
                <td> 2</td>
                <td> 2번쨰 작성된 글입니다.</td>
                <td> 홍길동 </td>
                <td> 2021-05-31</td>
            </tr>
    	</table>
    </div>
</body>
</html>