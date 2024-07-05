<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 페이지</title>
</head>
<body>
	<form action="/login" method="post">
		<label for="member_id">아이디 : </label>
		<input type="text" name="member_id" id="member_id">
		<label for="member_pw">비밀번호 : </label>
		<input type="password" name="member_pw" id="member_pw">
		<input type="submit" value="로그인">
	</form>
</body>
</html>