<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>El Basic</title>
</head>
<body>
	<h3>1. 기존방식(스크립틀릿)</h3>
	<%@ page import ="com.gn.vo.Person" %>
	<%
		Person s = (Person)request.getAttribute("student");
		Person t = (Person)session.getAttribute("teacher");
	%>
	<ol>
		<li> 학생 : <%=s.getName()%></li>
		<li> 강사 : <%=t.getName()%></li> 
	</ol>
	<h3>2. EL 방식</h3>
	<ol>
		<li>${student.age}세</li>
		<li>${teacher.age}세</li>
	</ol>
	
	
	
	
	
	
	
	
	
</body>
</html>