<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL의 연산자</title>
</head>
<body>
	<h3>1. 산술 연산자</h3>
	<p>
		10 + 3 = ${big+small }<br>
		10 - 3 = ${big-small }<br>
		10 * 3 = ${big*small }<br>
		10 / 3 = ${big div small }<br>
		10 % 3 = ${big mod small } 
	</p>
	<h3>2. 문자열 연결</h3>
	<p>${strOne }${strTwo }</p>

</body>
</html>