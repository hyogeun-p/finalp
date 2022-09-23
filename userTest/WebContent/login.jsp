<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="head.jsp"></jsp:include>

<% if(session.getAttribute("userID")==null) {%>
<div>
	<form action="loginAsk" method="post">
		ID : <input type="text" name="userID" size="15"><br>
		pw : <input type="password" name="userPW" size="15">
		<input type="submit" value="로그인">
	</form>
</div>
<% } %>

</body>
</html>