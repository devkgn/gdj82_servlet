<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>코어 라이브러리</title>
</head>
<body>
	<h1>1. 변수 관련 태그</h1>
	<c:set var="num1" value="10"/>
	<c:set var="num2" value="20"/>
	<c:set var="result" value="${num1 + num2 }"/>
	<c:out value="<script>alert('Hi');</script>"/>
	<c:out value="<script>console.log('Bye');</script>" 
	escapeXml="false"/>
	<c:out value="${result }"/>
	<h1>2. 조건문(if)</h1>
	<c:if test="${num1 le num2 }">
		<p>10이 20보다 작거나 같습니다.</p>
	</c:if>
	<h1>3. 조건문(choose)</h1>
	<c:choose>
		<c:when test="${num1 gt 20 }">
			<b>num1이 20보다 클 때</b>
		</c:when>
		<c:when test="${num1 ge 10 }">
			<b>num1이 10보다 크거나 같을 때</b>
		</c:when>
		<c:otherwise>
			<b>그 외의 상황</b>
		</c:otherwise>
	</c:choose>
	
	
	
	
	
</body>
</html>