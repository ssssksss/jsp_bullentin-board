package doContorller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.coin666.jbb.Controller;

public class DoUserLogin implements Controller {
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println(request.getParameter("userId"));
        System.out.println(request.getParameter("userPwd"));
		// 1. 파라미터 추출
		
        // 2. 유효성 체크
        
        // 3. VO 객체에 데이터 바인딩
         
        // 4. Service 객체의 데이터 바인딩
         
        // 5. Output View 페이지로 이동
		response.sendRedirect("userlogin.jsp");
	}
}
//JSP
//<%
//request.setAttribute("member",m);
//pageContext.forwared("userInfo.jsp");
//%>

//doGet(...){
//    request.setAttribute("member",m);
//    RequestDispatcher dispatcher = request.getRequestDispatcher("userInfo.jsp");
//    dispatcher.forward(request, response);
//}
//response.sendRedirect("main.jsp");
