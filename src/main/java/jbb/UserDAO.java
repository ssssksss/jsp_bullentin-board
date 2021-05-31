package jbb;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


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
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void userjoin() {
		connect();
		String sql = "SELECT * FROM JBB_USER_TABLE";
		try {
			System.out.println("아이디를 찾습니다.");
			pstmt=conn.prepareStatement(sql);
			ResultSet rs=pstmt.executeQuery();
			while(rs.next()) {
				if(rs.getString("USER_ID")==userDTO.getUserId()) {
					System.out.println("아이디를 찾았습니다.");
					disconnect();
					return userDTO.getUserId();
				}
			}
			rs.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println("아이디 찾기에 실패했습니다.");
		disconnect();
		return null;
	}
	//유저 회원가입
	
	//유저 로그인
	
	//유저 비밀번호 변경
	
	//유저 삭제
}
