<%@page import="com.multi.mvc03.BbsVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
	<a href="bbs.jsp"><button class="btn btn-info">처음페이지로</button></a>
	<a href="list2"><button class="btn btn-warning">게시물 전체
			목록페이지</button></a>
	<%
	String id = (String) session.getAttribute("id");
	if (id != null) {
		BbsVO bag = (BbsVO) request.getAttribute("bag");
		String writer = bag.getWriter();
		if (id.equals(writer)) {
	%>
	<a href="update2.multi"><button class="btn btn-danger">수정</button></a>
	<a href="delete2.multi?no=${bag.no}"><button class="btn btn-danger">삭제</button></a>
	<%
		}
	}
	%>
	<hr>
	<table class="table table-striped">
		<tr>
			<td width="150">no</td>
			<td>${bag.no}</td>
		</tr>
		<tr>
			<td>title</td>
			<td>${bag.title}</td>
		</tr>
		<tr>
			<td>content</td>
			<td>${bag.content}</td>
		</tr>
		<tr>
			<td>writer</td>
			<td>${bag.writer}</td>
		</tr>
	</table>
</body>
</html>