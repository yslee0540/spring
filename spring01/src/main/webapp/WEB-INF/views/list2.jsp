<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
게시물 검색 처리 요청이 완료되었습니다.
<hr color="blue">
<table class="table table-striped">
	<tr class="table-primary">
		<th>no</th>
		<th>title</th>
		<th>content</th>
		<th>writer</th>
	</tr> 
	<c:forEach items="${list}" var="bag">
	<tr>
		<td>${bag.no}</td>
		<td><a href="one2.multi?no=${bag.no}">${bag.title}</a></td>
		<td>${bag.content}</td>
		<td>${bag.writer}</td>
	</tr>
	</c:forEach>
</table>
</body>
</html>