<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>include 지시어</title>
</head>
<body>
	<h2>=== start ===</h2>
	<%@ include file="scriptingElement.jsp" %>
	<h2>=== end ===</h2>
	<% int multiple = sum * 3; %>
	<p>계산 결과 : <%=multiple%></p>
</body>
</html>