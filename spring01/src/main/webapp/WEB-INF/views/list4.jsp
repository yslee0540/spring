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
<style type="text/css">
a {
	text-decoration: none;
}
</style>
</head>
<body>
<h5>공항 정보</h5>
<table class="table table-hover">
	<tr class="table-warning">
		<th>code</th>
		<th>name</th>
		<th>latitude</th>
		<th>longitude</th>
	</tr>
	<c:forEach items="${list}" var="bag" begin="90" end="120">
	<tr>
		<td>${bag.code}</td>
		<td><a href="one4?code=${bag.code}">${bag.name}</a></td>
		<td>${bag.latitude}</td>
		<td>${bag.longitude}</td>
	</tr>	
	</c:forEach>
</table>
<input type="button" value="이전 페이지로" onclick="history_back()">
<script>
	function history_back() {
		history.back();
	}
</script>
</body>
</html>