<%@page import="com.multi.mvc02.BbsVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resources/js/jquery-3.6.4.js"></script>
<script type="text/javascript">
	$(function() {
		$('#b1').click(function() {
			content = $('#content').val()
			writer = $('#writer').val()
			$.ajax({
				url: "insert21",
				data: {
					bbsno: "${bag.no}",
					content: content,
					writer: writer
				},
				success: function() {
					$('#result').append("- " + content + ", " + writer + "<br>")
					$('#content').val("")
				}
			})
		})
	})
</script>
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
	<br>
	<h6>댓글</h6>
	내용: <input id="content"><br>
	작성자: <input id="writer" value="apple">
	<input id="b1" value="댓글달기" type="button"><hr>
	<div id="result">
		<c:forEach items="${list}" var="x">
			 - ${x.content}, ${x.writer}<br>
		</c:forEach>
	</div>
</body>
</html>