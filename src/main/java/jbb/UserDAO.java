package jbb;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDAO {
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String user = "c##coin666";
	String password = "1234";
	Connection conn = null;
	PreparedStatement pstmt=null;
	
	public void connect() { //OracleDB연결
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(url, user, password);
			System.out.println("DB에 연결되었습니다.");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void disconnect() {
		try {
			System.out.println("DB가 종료되었습니다.");
			if(pstmt!=null) {
				pstmt.close();
			}
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	//유저 찾기 - 회원가입에서 아이디 유효성 검사 사용
	public boolean userSearch(String userId){
		connect();
		String sql = "SELECT user_id FROM JBB_USER_TABLE WHERE user_id="+userId;
		ResultSet rs;
		try {
			pstmt=conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				if(rs.getString("user_id").equals(userId)) {
					return true;
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	//유저 로그인
	public int userLogin(UserDTO userDTO) {
		connect();
		String sql = "SELECT * FROM JBB_USER_TABLE";
		try {
			pstmt=conn.prepareStatement(sql);
			ResultSet rs=pstmt.executeQuery();
			while(rs.next()) {
				if(rs.getString("user_id").equals(userDTO.getUserId())) {
					if(rs.getString("user_pwd").equals(userDTO.getUserId())) {
						System.out.println("UserDAO : 유저 로그인 성공");
						return 1;
					}
					System.out.println("UserDAO : 유저의 비번이 틀렸습니다.");
					return 2;
				}
			}
			System.out.println("UserDAO : 유저의 정보가 존재하지 않습니다.");
			return 3;
		}  catch (Exception e) {
			e.printStackTrace();
		} finally {
			disconnect();
		}
		System.out.println("UserDAO : 로그인 중 에러 발생");
		return 4;
	}
	//유저 회원가입
	public boolean userJoin(UserDTO userDTO) {
		connect();
		String user_id = userDTO.getUserId();
		String user_pwd = userDTO.getUserPwd();
		String sql="insert into jbb_user_table values('"+user_id+"','"+user_pwd+"')";
		
		//일치하는 아이디가 없을 경우
		if(!userSearch(userDTO.getUserId())) {
			try {
				pstmt=null;
				pstmt=conn.prepareStatement(sql);
				pstmt.executeUpdate();
				System.out.println("DB에 회원의 정보를 저장하였습니다.");
				disconnect();
				return true;
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		else {
			System.out.println("DB에 일치하는 아이디가 존재합니다.");
		}
		disconnect();
		return false;
	}

	//유저 비밀번호 변경
	
	//유저 회원정보 수정
	
	//유저 삭제
}
