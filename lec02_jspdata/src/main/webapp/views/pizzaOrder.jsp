<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내장 객체 연습하기</title>
</head>
<body>
	<h2>피자 주문하기</h2>
	<form action="/order" method="post">
		<fieldset>
			<legend>고객 정보</legend>
			<label for="user_name">고객명 : </label>
			<input type="text" id="user_name" name="user_name">
			<label for="user_phone">전화번호 : </label>
			<input type="text" id="user_phone" name="user_phone">
			<label for="user_email">E-mail : </label>
			<input type="email" id="user_email" name="user_email">
		</fieldset>
	
	</form>
</body>
</html>