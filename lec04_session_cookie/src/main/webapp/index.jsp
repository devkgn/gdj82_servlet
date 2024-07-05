<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%! 
	public String getCookieValue(Cookie[] cookies,String key){
		String result = "쿠키 없음";
		if(cookies != null){
			for(Cookie c : cookies){
				if(key.equals(c.getName())){
					result = c.getValue();
				}
			}
		}
		return result;
	} 
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키, 세션</title>
</head>
<body>
	<%@ page import="com.gn.member.Member" %>
	<%if(session.isNew() || session.getAttribute("member") == null){%>
		<a href="views/login.jsp">로그인</a>
	<%}else{%>
		<a href="/logout">로그아웃</a>
		<ul>
			<% Member member = (Member)session.getAttribute("member"); %>
			<li>이름 : <%=member.getMemberName() %></li>
			<li>이메일 : <%=member.getMemberEmail() %></li>
			<li>전화번호 : <%=member.getMemberPhone() %></li>
		</ul>
	<%}%>
	<h1>쿠키</h1>
	<ul>
		<li>
			<a href="/createCookie">1. 생성하기</a>
		</li>
		<li>
			<a href="/editCookie">2. 수정하기</a>
		</li>
		<li>
			<a href="/removeCookie">3. 삭제하기</a>
		</li>
	</ul>
	<%
		Cookie[] cookies = request.getCookies();
		String id = getCookieValue(cookies,"user_id");
	%>
	<h3>아이디 : <%=id%></h3>	
	<h1>세션(Session)</h1>
	<form action="/createSession" method="get">
		<label>아이디 : </label>
		<input type="text" name="user_id">
		<input type="submit" value="생성하기">
	</form>
	<a href="/getSession">세션값 가져오기</a>
	
	
	
	
	
	
	
	
</body>
</html>