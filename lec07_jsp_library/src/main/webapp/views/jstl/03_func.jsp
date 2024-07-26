<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>펑션 라이브러리</title>
</head>
<body>
	<c:set var="data" value="How Are You? I am fine"/>
	<p>
		<c:out value="${fn:toUpperCase(data) }"/><br>
		<c:out value="${fn:replace(data,'fine','tired') }"/><br>
		<c:out value="${fn:contains(data,'You') }"/><br>
		<c:if test="${fn:contains(data,'You') }">
			You가 있네!!
		</c:if>
	</p>
	
	
	
	
	
	
	
	
</body>
</html>