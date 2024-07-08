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
			xhr.open("post","<%=request.getContextPath()%>/jsAjaxPostTest",true);
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
	<h2>jQuery방식</h2>
	<button id="get_btn">Get방식</button>
	<button id="post_btn">Post방식</button>
	<div id="jquery_container">진행중...</div>
	<script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
	<script>
		$(function(){
			$('#post_btn').on('click',function(){
				$.ajax({
					type:'post',
					url:'<%=request.getContextPath()%>/jsAjaxPostTest',
					contentType:"application/x-www-form-urlencoded; charset=UTF-8",
					data:{name:'홍길동'},
					success : function(data){
						console.log(data);
					},
					error : function(request,status,error){
						console.log(request.status);
						console.log(request.responseText);
					}
				});
			});
			
			
			$('#get_btn').on('click',function(){
				$.ajax({
					type:'GET',
					url:"<%=request.getContextPath()%>/jsAjaxGetTest?name=김철수",
					success:function(data){
						$('#jquery_container').html(data);
					}
				});
			});
		});
	</script>
	<a href="<%=request.getContextPath()%>/reply/list">댓글 페이지</a>
	
	
	
</body>
</html>