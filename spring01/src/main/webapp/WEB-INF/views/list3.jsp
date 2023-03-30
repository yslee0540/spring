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
<h5>북마크 검색 결과</h5>
<table class="table table-hover">
	<tr class="table-warning">
		<th>id</th>
		<th>name</th>
		<th>url</th>
		<th>img</th>
	</tr>
	<c:forEach items="${list}" var="bag">
	<tr>
		<td>${bag.id}</td>
		<td>${bag.name}</td>
		<td><a href="${bag.url}">${bag.url}</a></td>
		<td><img src="resources/img/${bag.img}" width="200"></td>
	</tr>	
	</c:forEach>
</table>
</body>
</html>