package doContorller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.coin666.jbb.Controller;

import jbb.UserDAO;
import jbb.UserDTO;

public class DoUserLogout implements Controller {
	
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession usersession = request.getSession();
		// 1. 파라미터 추출
		// 2. 유효성 체크
		// 3. VO 객체에 데이터 바인딩
		// 4. Service 객체의 데이터 바인딩
		// 5. Output View 페이지로 이동
		usersession.removeAttribute("userId");
		response.sendRedirect("home.jsp");
	}
}

