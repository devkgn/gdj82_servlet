<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스크립팅 원소</title>
</head>
<body>
	<h1>스크립팅 원소</h1>
	<%-- 1. Scriptlet :일반적인 자바 코드 --%>
	<%
		int sum = 0;
		for(int i = 0 ; i <= 10 ; i++){
			sum += i;
		}
		System.out.println("총합 : "+sum);
	%>
	<%-- 2. Expression : (화면에)출력 --%>
	<h2><% out.println(sum); %></h2>
	<h3><%= sum %></h3>
	<%-- 3. Declaration : 선언(변수,메소드) --%>
	<%! public int sumNum(int a, int b){
			return a + b;
	} %>
	<style>
		p{background-color:skyblue;}
	</style>
	<p><%= sumNum(1,2) %></p>
	
	
	
	
	
</body>
</html>