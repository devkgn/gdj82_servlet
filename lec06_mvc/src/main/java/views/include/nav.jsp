<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link href='../../resources/css/include/nav.css' rel="stylesheet" type="text/css">
<nav>
	<div id="nav_wrap">
		<div class="menu">
			<ul>
				<li>
					<a href="#">로그인</a>
				</li>
				<li>
					<a href="/user/join">회원가입</a>
				</li>
				<li>
					<a href="/user/edit">계정수정</a>
				</li>
			</ul>
		</div>
		<div class="search">
			<form action="/board/list" name="search_board_form" method="get">
				<input type="text" name="board_title" placeholder="검색하고자 하는 게시글 제목을 입력하세요.">
				<input type="submit" value="검색">
			</form>
		</div>
	</div>
</nav>	