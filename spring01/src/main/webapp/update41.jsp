<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%
   String code = request.getParameter("code");
   String name = request.getParameter("name");
   %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>book</title>
<style type="text/css">
body {
	background: lightyellow;
}
</style>
</head>
<body>
<h3>공항 정보 수정하기</h3>
<form action="update4">
code: <input name="code" value="<%= code %>" readonly><br>
name: <input name="name" value="<%= name %>"><br>
<button>서버로 전송</button>
</form>
</body>
</html>