<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>표준 액션태그로 포함되는 페이지</title>
</head>
<body>
	<% int level = 3; %>
	<% String getAge = request.getParameter("age");%>
	나이는 <%=getAge%> 입니다.
</body>
</html>