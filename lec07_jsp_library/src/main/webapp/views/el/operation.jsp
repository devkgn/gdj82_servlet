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
	<h3>3. 대소 비교 연산</h3>
	<p>
		10이 3보다 큰가요? : ${big > small } 또는 ${big gt small }<br>
		10이 3보다 작은가요? : ${big < small } 또는 ${big lt small }<br>
		10이 3보다 크거나 같은가요? : ${big ge small }<br>
		10이 3보다 작거나 같은가요? : ${big le small }
	</p>
	<h3>4. 동등 비교 연산</h3>
	<p>
		숫자 일치 : ${big eq 10 }<br>
		숫자 불일치 : ${small ne 3 }<br>
		문자 일치 : ${strOne eq strTwo } 또는 ${strOne eq "배" }
	</p>
	<h3>5. 객체의 null 비교</h3>
	<p>
		pTwo가 null인가요? : ${pTwo == null } 또는 ${empty pTwo }
		pOne이 null이 아닌가요? : ${pOne != null } 또는 ${not empty pOne }
	</p>
	<h3>6. 리스트가 비어있는지 확인</h3>
	<p>
		listOne이 비어있나요? : ${empty listOne }
		listTwo에 데이터가 있나요? : ${not empty listTwo }
	</p>
	<h3>7. 논리 연산자</h3>
	<p>
		${true && true } 또는 ${true and true }<br>
		${false || true } 또는 ${false or true }
	</p>

</body>
</html>