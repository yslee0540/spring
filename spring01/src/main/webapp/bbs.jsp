<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>bbs</title>
</head>
<body>
<h3>게시물 등록 화면입니다.</h3>
<form action="insert2.multi" method="get">
	<!-- no : <input name="no" value="1"><br> -->
	title : <input name="title" value="1234"><br>
	content : <input name="content" value="park"><br>
	writer : <input name="writer" value="apple"><br>
	<button type="submit">서버로 전송</button>
</form>
<hr color="red">
<h3>게시물 수정 화면입니다.</h3>
<form action="update2.multi" method="get">
	no : <input name="no" value="1"><br>
	content : <input name="content" value="aaa"><br>
	<button type="submit">서버로 전송</button>
</form>
<hr color="red">
<h3>게시물 삭제 화면입니다.</h3>
<form action="delete2.multi" method="get">
	no : <input name="no" value="1"><br>
	<button type="submit">서버로 전송</button>
</form>
<hr color="red">
<h3>게시물 검색 화면입니다.</h3>
<form action="one2.multi" method="get">
	no : <input name="no" value="1"><br>
	<button type="submit">서버로 전송</button>
</form>
</body>
</html>