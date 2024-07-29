<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 목록</title>
</head>
<body>
	<table border="1">
		<thead>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>내용</th>
				<th>등록일</th>
			</tr>
		</thead>
		<tbody>
			<c:choose>
				<c:when test="${empty resultList }">
					<tr>
						<td colspan="4">게시글이 없습니다.</td>
					</tr>
				</c:when>
				<c:otherwise>
					<c:forEach items="${resultList }" var="b" varStatus="status">
						<tr>
							<td><c:out value="${status.count }"/></td>
							<td><c:out value="${b.board_title }"/></td>
							<td><c:out value="${b.board_content }"/></td>
							<td><fmt:formatDate pattern="yy-MM-dd" value="${b.reg_date }"/></td>
						</tr>
					</c:forEach>
				</c:otherwise>
			</c:choose>
		</tbody>
	</table>
</body>
</html>