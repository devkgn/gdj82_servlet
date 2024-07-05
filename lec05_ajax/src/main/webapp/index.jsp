<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비동기 통신</title>
</head>
<body>
	<h1>JavaScript방식</h1>
	<input type="text" id="name">
	<input type="button" value="Get방식" onclick="ajaxTestGet();">
	<div id="ajax_container">로딩중...</div>
	<script>
		const ajaxTestGet = function(){
			// 1. 객체 생성
			const xhr = new XMLHttpRequest();
			const name = document.getElementById("name").value;
			// 2. open 메소드 호출
			xhr.open("get","/jsAjaxGetTest?name="+name,true);
			// 3. 응답 처리 함수
			xhr.onreadystatechange = function(){
				console.log("1 : "+xhr.readyState);
				console.log("2 : "+xhr.status);
				if(xhr.readyState == 4 && xhr.status == 200){
					console.log("3 : "+xhr.responseText);
					document.getElementById("ajax_container").innerHTML = xhr.responseText;
				}
			}
			// 4. 요청을 서버에 보내기
			xhr.send();
		}
	</script>
	
	
	
	
	
	
	
	
	
</body>
</html>