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
	.jbbupdate_container {
		margin: 200px auto;
        width: 600px;
        height: 600px;
        box-sizing: border-box;
        border: black solid 5px;
	}
    .jbbupdate_container h2 {
        display: block;
        text-align: center;
    }
    .jbbupdate_container form {
        padding: 20px;
    }
    .jbbupdate_container input[type="text"] {
        width: 90%;
        margin-bottom: 20px;
    }
    .jbbupdate_container textarea {
        width:100%;
        height: 300px;
        margin-top: 20px;
    }
    .jbbupdate_container input[type="submit"] {
        float: right;
        margin: 20px;
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
    <div class="jbbupdate_container">
    	<h2> 게시판 글 수정 </h2>
        <form method="POST" action="">
            제목 : <input type="text" placeholder="제목을 입력해주세요" required> <br/>
            내용 :  <br/> <textarea placeholder="제목을 입력해주세요" required> </textarea>  <br/>
            <input type="submit" value="글 수정">
        </form>
    </div>
</body>
</html>