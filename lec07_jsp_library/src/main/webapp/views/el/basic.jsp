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
	<h3>3.여러 내장객체에 저장된 key값이 동일할때</h3>
	<% pageContext.setAttribute("test","페이지");%>
	<span>${test}</span>
	<p>
		page에 담긴값 : ${pageScope.test }<br>
		request에 담긴값 : ${requestScope.test }<br>
		session에 담긴값 : ${sessionScope.test }<br>
		application에 담긴값 : ${applicationScope.test }
	</p>
	
	
	
	
	
</body>
</html>