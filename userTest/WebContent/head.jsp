<%@ page import="userTest.SessionChk" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	Cookie[] cookie = request.getCookies();
	boolean chk = SessionChk.loginCheck(session, cookie);
	
	// chk가 true라면?
	if(chk){		 

%>

<div>
	<form action="/main" method="post">
		<input type="submit" value="메인으로 이동">
	</form>
	<form action="/logout" method="post">
		<input type="submit" value="로그아웃">
	</form>
	<form action="/getUserInfo" method="post">
		<input type="submit" value="메인으로 이동">
	</form>
</div>

<%
	} else{
%>

<div>
	<form action="/main" method="post">
		<input type="submit" value="메인으로 이동">
	</form>
	<form action="/login" method="post">
		<input type="submit" value="로그인">
	</form>
	<form action="/getUserInfo" method="post">
		<input type="submit" value="메인으로 이동">
	</form>
</div>
<%
	}
%>


</body>
</html>