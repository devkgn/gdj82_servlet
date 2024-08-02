<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 수정</title>
<link href="<c:url value='/resources/css/board/create.css'/>" rel="stylesheet" type="text/css">
</head>
<body>
	<jsp:include page="../include/header.jsp"/>
	<jsp:include page="../include/nav.jsp"/>
	<section>
		<div id="section_wrap">
			<div class="word">
				<h3>게시글 수정</h3>
			</div><br>
			<div class="register_board_form">
				<form id="boardUpdateFrm">	
					<input type="text" name="board_title" value="${vo.board_title }"> <br>
					<input type="text" name="board_content" value="${vo.board_content }"> <br>
					<input type="file" name="file"><br>
					<span> ※ 이미지 파일을 수정하시려면 새로운 파일을 등록하세요. </span><br>
					<input type="submit" value="수정"> 
				</form>
			</div>
		</div>
	</section>
	<script>
		// 1. id가 boardUpdateFrm인 form태그 submit
		// 2. 기본 이벤트 차단
		// 3. 제목, 내용 입력 여부 확인
		// 4. 파일이 입력됐다면 -> 이미지인지 확인
		// 5. 유효성 검사가 완료되었다면 비동기 통신
		// 6. url : <%=request.getContextPath()%>/board/${vo.board_no}
		// 7. BoardApiController에 updateBoard 메소드 생성
		// 8. Board와 MultipartFile 출력
	</script>
</body>
</html>