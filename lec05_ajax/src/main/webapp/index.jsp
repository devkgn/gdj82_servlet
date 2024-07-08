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
	<input type="button" value="Post방식" onclick="ajaxTestPost();">
	<div id="ajax_container">로딩중...</div>
	<script>
		const ajaxTestPost = function(){
			const xhr = new XMLHttpRequest();
			const name = document.getElementById("name").value;
			xhr.open("post","/jsAjaxPostTest",true);
			xhr.onreadystatechange = function(){
				if(xhr.readyState == 4 && xhr.status == 200){
					document.getElementById("ajax_container").innerHTML = xhr.responseText;
				}
			}
			xhr.setRequestHeader("Content-Type","application/x-www-form-urlencoded; charset=UTF-8");
			xhr.send("name="+name);
		}
	
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