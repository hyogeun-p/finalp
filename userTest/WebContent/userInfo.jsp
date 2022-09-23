<%@page import="db.UserInfoDTO"%>
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
<%!UserInfoDTO dto; %>
<!-- 로그인된 사용자 및 정보(userinfo가 있는 사용자만)가 있는 사용자만 이페이지의 내용을
볼수있도록 jsp 태그를 완성해주세요. -->
<% if(session.getAttribute("userID")!=null &&(dto = (UserInfoDTO)session.getAttribute("userinfo"))!=null){
%>
<div class="container">
	<div class="row">
		<div>
			<table class="table">
				<thead>
					<tr>
						<th class="text-center">구분</th>
						<th class="text-center">회원정보</th>
					</tr>	
				</thead>	
				<tbody>
					<tr>
						<th scope="row" class="text-center">ID</th>
						<td class="text-center"><%=dto.getUserID()%></td>
					</tr>
					<tr>
						<th scope="row" class="text-center">이름</th>
						<td class="text-center"><%=dto.getUserName()%></td>
					</tr>
					<tr>
						<th scope="row" class="text-center">이메일</th>
						<td class="text-center"><%=dto.getUserEmail()%></td>
					</tr>
					<tr>
						<th scope="row" class="text-center">전화번호</th>
						<td class="text-center"><%=dto.getUserPhone()%></td>
					</tr>	
				</tbody>					
			</table>
		</div>
	</div>
	<!-- 그림 -->
	<div></div>
</div>
<% 
}
%>
</body>
</html>