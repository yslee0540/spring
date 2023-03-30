<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert name here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
공항 정보<hr>
<table class="table table-striped">
	<tr>
		<td width="150">code</td>
		<td>${bag.code}</td>
	</tr>
	<tr>
		<td>name</td>
		<td>${bag.name}</td>
	</tr>
	<tr>
		<td>latitude</td>
		<td>${bag.latitude}</td>
	</tr>
	<tr>
		<td>longitude</td>
		<td>${bag.longitude}</td>
	</tr>
</table>
<a href="delete4?code=${bag.code}">
	<button class="btn btn-danger">삭제하기</button></a>
<a href="update41.jsp?code=${bag.code}&name=${bag.name}">
	<button class="btn btn-primary">수정하기</button>
</a>
</body>
</html>