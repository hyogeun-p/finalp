package userTest;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpSession;

//세션과 쿠키를 관리하는 클래스
public class SessionChk {

	public static boolean loginCheck(HttpSession session, Cookie[] cookie) {
		
		// 이미 로그인 되어있는 경우.( 등록된 세션인 경우)
		if(session.getAttribute("userID") != null) {
			return true;
		} else if(cookie != null) {
			// 쿠키 확인
			for(int i=0; 1<cookie.length; i++) {
				
				if(cookie[i].getName().equals("userID")) {
					System.out.println(cookie[i].getPath());
					// 쿠키에 들어있는 userID를 세션에 추가.
					session.setAttribute("userID", cookie[i].getValue());
					return true;
				}
				
			}
		}
		//세션 쿠키가 없다면?
		return false;
	}
	
	
	
}
