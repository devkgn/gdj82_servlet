<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>
	<% int type = 1; %>
	<% if(type == 1) { %>
		<jsp:forward page="admin_login.jsp"/>
	<%}else{%>
		<jsp:forward page="user_login.jsp"/>
	<%}%>
</body>
</html>