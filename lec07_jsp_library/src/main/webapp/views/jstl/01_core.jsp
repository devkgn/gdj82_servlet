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
	<h1>4. 반복문(forEach)</h1>
	<% for(int i = 1 ; i <= 10 ; i += 2) {%>
		<p>스크립틀릿 반복 : <%=i %></p>
	<%} %>
	<c:forEach var="i" begin="1" end="10" step="2">
		<p>jstl 반복 : ${i} </p>
	</c:forEach>
	<!-- 태그 안에 반복문 사용 가능 -->
	<c:forEach var="i" begin="1" end="6">
		<h${i }>Hello~!</h${i }>
	</c:forEach>
	<% String[] colors = {"red","green","blue"};
	request.setAttribute("colors",colors);%>
	<% for(String s : colors){ %>
		<mark><%=s %></mark>
	<%} %>
	<ul>
		<c:forEach var="c" items="${colors }">
			<li style="color:${c };">${c }</li>
		</c:forEach>
	</ul>
	<h1>varStatus 사용해보기</h1>
	<%@ page import="java.util.*, com.gn.vo.Person" %>
	<%
		List<Person> list = new ArrayList<Person>();
		list.add(new Person("홍길동",20));
		list.add(new Person("이영희",30));
		list.add(new Person("김철수",40));
		request.setAttribute("resultList", list);
	%>
	<table border="1">
		<thead>
			<tr>
				<th>번호</th>
				<th>이름</th>
				<th>나이</th>
			</tr>
		</thead>
		<tbody>
			<c:choose>
				<c:when test="${empty resultList }">
					<tr>
						<td colspan="3">조회된 사람이 없습니다.</td>
					</tr>
				</c:when>
				<c:otherwise>
					<c:forEach items="${resultList }" var="p" varStatus="status">
						<tr>
							<td>${status.count }</td>
							<td>${p.name }</td>
							<td>${p.age }</td>
						</tr>
					</c:forEach>
				</c:otherwise>
			</c:choose>
		</tbody>
	</table>
	<h1>4. url</h1>
	<a href="/user/detail">기존방식</a>
	<a href="<c:url value='/user/detail'/>">jstl 방식</a>
	
	
	
	
	
	
	
	
	
</body>
</html>