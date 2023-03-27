<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
회원가입 화면입니다.
<hr color="red">
<form action="insert.jsp">
아이디: <input name="id" value="test"><br>
패스워드: <input name="pw" value="1234"><br>
이름: <input name="name" value="test"><br>
전화번호: <input name="tel" value="010"><br>
<button type="submit" style="background:red;color:white;">서버로 전송</button>
</form>
</body>
</html>