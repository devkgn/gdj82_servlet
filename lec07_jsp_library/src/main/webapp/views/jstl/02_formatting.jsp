<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>포맷팅 라이브러리</title>
</head>
<body>
	<h4>1. 콤마 구분자</h4>
	<c:set var="num1" value="5000000"/>
	<fmt:formatNumber value="${num1 }"/>
	<h4>2. 통화</h4>
	<fmt:formatNumber value="${num1 }" type="currency"/>
	<fmt:formatNumber value="${num1 }" 
	type="currency" currencySymbol="$"/>
	<h4>3. 백분율</h4>
	<fmt:formatNumber value="0.78" type="percent"/>
	<h4>4. 소수점</h4>
	<fmt:formatNumber value="13.427345" pattern=".00"/>
	<h3>날짜</h3>
	<c:set var="now" value="<%= new java.util.Date() %>"/>
	<fmt:formatDate pattern="yyyy-MM-dd" value="${now }"/>
	
</body>
</html>