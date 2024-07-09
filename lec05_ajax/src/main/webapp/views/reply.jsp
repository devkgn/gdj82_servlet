<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>댓글창</title>
<link rel="stylesheet" href="../resources/bootstrap.min.css">
<script src="../resources/bootstrap.min.js"></script>
<script src="../resources/jquery-3.7.1.js"></script>
</head>
<body>
	<div class="row d-flex justify-content-center">
	  <div class="col-md-8 col-lg-6">
	    <div class="card shadow-0 border" style="background-color: #f0f2f5;">
	      <div id="result_div" class="card-body p-4">
	        <div data-mdb-input-init class="form-outline mb-4">
	          <textarea id="add_text" class="form-control" placeholder="댓글을 입력하세요." ></textarea>
	          <input type="text" id="add_user" class=" form-control float-end text-end" placeholder="작성자를 입력하세요.">
	          <a class="form-label" href="#" id="add_btn">+ 추가하기</a>
	        </div>
	        
	        <div class="card mb-4">
	          <div class="card-body">
	            <p>안녕하세요 김철수입니다!!</p>
	
	            <div class="d-flex justify-content-between">
	              <div class="d-flex flex-row align-items-center">
	                <img src="https://item.kakaocdn.net/do/494ea37cf81a6a1efb5dfab1783ab487616b58f7bf017e58d417ccb3283deeb3" alt="avatar" width="25"
	                  height="25" />
	                <p class="small mb-0 ms-2">김철수</p>
	              </div>
	              <div class="d-flex flex-row align-items-center">
	                <p class="small text-muted mb-0">2024-07-05 08:35</p>
	              </div>
	            </div>
	          </div>
	        </div>
	      </div>
	    </div>
	  </div>
	</div>
	<script>
		$(function(){
			$("#add_btn").on('click',function(event){
				event.preventDefault();
				const text = $("#add_text").val();
				const user = $("#add_user").val();
				$.ajax({
					type:'post',
					url:'<%=request.getContextPath()%>/replyAjax',
					contentType:'application/x-www-form-urlencoded; charset=utf-8',
					dataType:'JSON',
					data:{"text":text,"user":user},
					success: function(data){
						console.log(data);
					}
				});
			});
		});
		
	
	
	
	
	
	
	
	
	</script>
</body>
</html>