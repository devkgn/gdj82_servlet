
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 결과 화면</title>
</head>
<body>
	<h1>반가워요 <%=(String)request.getAttribute("user_id")%>님</h1>
	<h2>어떤 메뉴로 이동할까요?</h2>
	<a href="#">공지사항</a>
</body>
</html>
