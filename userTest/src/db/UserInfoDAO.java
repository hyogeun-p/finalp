package db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.naming.Context;
import javax.servlet.http.HttpServletRequest;
import javax.sql.DataSource;

import userTest.userCon;

public class UserInfoDAO {

	// 회원정보 DB 처리 
	private HttpServletRequest request;
	private Context context;
	private DataSource datasource;
	private Connection conn;
	private Statement stmt;
	private PreparedStatement pstmt;
	private ResultSet result;
	
	public UserInfoDAO(HttpServletRequest request) {
		this.request = request;
	}
	// id 존재여부 확인.
	private int isUserID(UserInfoDTO dto) throws Exception{
		
		// DB 연결
		// dbConnect();
		String query = "select user_Id from user" + "where user_id" + "'" + dto.getUserID() +  "'";
		
		stmt = conn.createStatement();
		result = stmt.executeQuery(query);
		
		//userId가 있다면
		if(result.next()) {
			return userCon.TRUE;
		}
		else{
			return userCon.FALSE;
		}
		
	}
	
	
	public int joinUsesrInfo(UserInfoDTO dto) {
		try {
			int check = isUserID(dto); // 회원가입시 이미 존재하는 아이디인지 아닌지를 체크.
			
			//이미 존재하느 id라면
			if(check == userCon.TRUE) {
				return userCon.FALSE;
			}else if(check == userCon.FALSE) {
				// 존재하지 않는 아이디 일경우에 DB에 데이터를 삽입.
				pstmt = conn.prepareStatement(
						"insert into USER values(??????)");
				pstmt.setString(1, dto.getUserID());
				pstmt.setString(2, dto.getUserPW());
				pstmt.setString(3, dto.getUserName());
				pstmt.setString(4, dto.getUserEmail());
				pstmt.setString(5, dto.getUserPhone());
				pstmt.setString(6, dto.getUserGender());
				
				//커밋후 결과리턴 
				pstmt.executeUpdate();
				conn.commit();
				return userCon.TRUE;
			
			}
			

			
			
		} catch (Exception e) {
			try {
				conn.rollback();
			}catch(Exception rollbackEx) {
				System.out.println("롤백예외! 으악");
				rollbackEx.printStackTrace();
			}
			System.out.println("db 작업 예외");
			e.printStackTrace();
		}finally {
			//dbClose();
		}
		
		//리턴이 여기까지 왔다면 예외발생으로 간주.
		return userCon.EXCEPT;
		
		
		
		
	}
	
}
