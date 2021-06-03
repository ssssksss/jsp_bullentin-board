package doContorller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.coin666.jbb.Controller;

import jbb.UserDAO;
import jbb.UserDTO;

public class DoUserJoin implements Controller {
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 1. 파라미터 추출
		String userId = request.getParameter("userId");
		String userPwd = request.getParameter("userPwd");
		// 2. 유효성 체크
		// 3. VO 객체에 데이터 바인딩
		System.out.println(userId);
		System.out.println(userPwd);
		UserDTO userDTO = new UserDTO(userId, userPwd);
		// 4. Service 객체의 데이터 바인딩
		boolean join = new UserDAO().userJoin(userDTO);
		// 5. Output View 페이지로 이동
		if (join) {
			response.sendRedirect("userlogin.jsp");
		} else {
			//회원가입 실패          
			response.sendRedirect("home.jsp");
		}
	}
}
