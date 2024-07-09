<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link href='../../resources/css/user/create.css' rel="stylesheet" type="text/css">
</head>
<body>	
	<%@ include file="../include/header.jsp" %>
	<%@ include file="../include/nav.jsp" %>
	<section>
		<div id="section_wrap">
			<div class="word">
				<h3>회원가입</h3>
				<br>
				<span>※아이디는 추후에 수정할 수 없습니다. <br>신중하게 선택해주세요.</span>
			</div><br>
			<div class="create_account_form">
				<form name="create_account_form">
					<input type="text" name="user_id" placeholder="아이디"> <br>
					<input type="password" name="user_pw" placeholder="비밀번호"> <br>
					<input type="password" name="user_pw_check" placeholder="비밀번호 확인"> <br>
					<input type="text" name="user_name" placeholder="닉네임"> <br>
					<input type="button" value="회원가입"> 
					<input type="reset" value="초기화">
				</form>
			</div>
			<div class="login">
				<a href="#">로그인</a>
			</div>
		</div>
	</section>	
</body>
</html>