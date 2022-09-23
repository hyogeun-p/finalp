package userTest;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UserCon
 */
@WebServlet("/")
public class userCon extends HttpServlet {
   private static final long serialVersionUID = 1L;
    
   //command라는 클래스를 통해 결과(출력할 페이지)를 제어
   
   public static final int TRUE = 0;
   public static final int FALSE = 0;
   public static final int EXCEPT = 0;
   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public userCon() {
        super();
        // TODO Auto-generated constructor stub
    }

   /**
    * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
    */
   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      // TODO Auto-generated method stub
      response.getWriter().append("Served at: ").append(request.getContextPath());
   }

   /**
    * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
    */
   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      // TODO Auto-generated method stub
      doGet(request, response);
   }

   protected void doAction(HttpServletRequest request, HttpServletResponse response) 
	   throws ServletException, IOException{
		   
	   request.setCharacterEncoding("UTF-8");
	   
	   // 프로젝트 이름 뒤의 uri만 남기도록 커(프로젝트명/페이지명 - /프로젝트명 = /페이
	   String uri = request.getRequestURI().substring(request.getContextPath().length());
	   
	   String page = null; // 리다이렉트할 페이지를 넣을 문자열
	   Command command = null; // 
	   
	   
	   // 로그인 버튼 눌렀을때
	   if(uri.contentEquals("/login")) {
		   page = "/login.jsp";
	   }
	   
	   // 회원가입 버튼 눌렀을때
	   else if(uri.contentEquals("/join")) {
		   page = "/join.jsp";
	   }
	   // 로그인 처리시
	   else if(uri.contentEquals("/loginAsk")) {
		   
		   //command = new LoginAction(request, response);
		   int result = command.excute();
		   
	   
	   		// true면 메인으로
	   		if(result == userCon.TRUE) {
	   			page = "/Main.jsp";
	   		}
	   		// false면 로그페이지로
	   		else if(result == userCon.FALSE) {
	   			page = "/login.jsp";
	   		}
	   		// 에러면 에러페이지로
	   		else if(result == userCon.FALSE) {
	   			page = "/exception.jsp";
	   		}
	   
	   // 회원가입 작성후 가입버튼 눌렀을때
	   } else if(uri.contentEquals("/registerAsk")) {
		   	//command = new RegisterAction(request);
		   	int result = command.excute();
		   	// true면 로그인 페이지로
		   	if(result == userCon.TRUE) {
	   			page = "/login.jsp";
	   		}
	   		// false면 회원가입 페이지로
		   	else if(result == userCon.FALSE) {
	   			page = "/join.jsp";
	   		}
	   		// except이면 에러 페이지로. 
		   	else if(result == userCon.FALSE) {
	   			page = "/exception.jsp";
	   		}
	   // 로그아웃 버튼 눌렀을때		   	
	   } else if(uri.equals("/logout")) {
		   //logoutAction 클래스 활용 예정
		   page="/main.jsp";
		   
		   
	   // 회원정보조회 버튼 눌렀을때	   
	   } else if(uri.equals("/userInfo")) {
		   //command = new UserInfo(request);
		   int result = command.excute();
		   
		   if(result == userCon.TRUE) {
			   page="/userInfo.jsp";
		   //false일경우 로그인 페이지 이동.
		   }else if(result == userCon.FALSE) {
			   page="/login.jsp";
		   }else if(result == userCon.EXCEPT) {
			   page="/exception.jsp";
		   }

	   //작업시 에러 발생하면?
	   } else if(uri.equals("/exception")) {
		   page ="/exception.jsp";
	   } else {
		   page = "/main.jsp";
	   }
	   
	   response.sendRedirect(page);

	   
	   // 그 외면 메인으로
   
   
   }
   
   
   
}