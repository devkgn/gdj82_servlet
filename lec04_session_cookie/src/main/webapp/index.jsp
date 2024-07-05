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
	<h1>쿠키</h1>
	<ul>
		<li>
			<a href="/createCookie">1. 생성하기</a>
		</li>
	</ul>
	<%
		Cookie[] cookies = request.getCookies();
		String id = getCookieValue(cookies,"user_id");
	%>
	<h3>아이디 : <%=id%></h3>	
</body>
</html>