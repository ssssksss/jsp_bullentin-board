package doContorller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.coin666.jbb.Controller;

import jbb.UserDAO;
import jbb.UserDTO;

public class DoUserLogin implements Controller {
	HttpSession usersession = null;
	
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 1. 파라미터 추출
		String userId = request.getParameter("userId");
		String userPwd = request.getParameter("userPwd");
		// 2. 유효성 체크
		
		// 3. VO 객체에 데이터 바인딩
		UserDTO userDTO = new UserDTO(userId, userPwd);
		// 4. Service 객체의 데이터 바인딩
		int num = new UserDAO().userLogin(userDTO);
		// 5. Output View 페이지로 이동
		if (num == 1) {
			usersession = request.getSession(true); //세션이 있으면 안만들고 없으면 생성
			usersession.setAttribute("userId",userId);
			response.sendRedirect("home.jsp");
		} else if (num == 2) {
			response.sendRedirect("userlogin.jsp");
		} else if (num == 3) {
			response.sendRedirect("userlogin.jsp");
		} else if (num == 4) {
			response.sendRedirect("userlogin.jsp");
		}
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
