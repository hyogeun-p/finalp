<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 문제
HEAD.JSP를 추가하시고
다음의 입력받을 항목들을 만들어주세요
ID
패스워드
패스워드 확인
이름
이메일
전화번호
성별

버튼 : 가입
위의 항목들은 FORM으로 감싸주세요.
 -->
 <jsp:include page="head.jsp"></jsp:include>
 <% if(session.getAttribute("userID")==null) {%>
<div>
	<form action="registerAsk" method="post">
		ID : <input type="text" name="userID" size="10"nrequired><br>
		패스워드 : <input type="password" name="userPW" size="12" required><br>
		패스워드 확인 : <input type="password" name="userPW2" size="12" required><br>
		이름 : <input type="text" name="userName" size="10" required><br>
		이메일 : <input type="text" name="userEmail" size="30" required><br>
		전화번호 : <input type="text" name="userPhone" size="15" required><br>
		성별 : <input type="radio" name="userGender" value="men" required/>남
			  <input type="radio" name="userGender" value="women"/>여<br>	
		<input type="submit" value="가입하기">
	</form>
</div>
<% }%>
<!-- 퀴즈
세션에 로그인값이 있으면 회원가입 요소들을 볼수 없도록 처리하세요.

 -->



</body>
</html>