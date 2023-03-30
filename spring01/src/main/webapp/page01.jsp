<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Cookie c1 = new Cookie("category", "sports");
	Cookie c2 = new Cookie("sports", "soccer");
	
	response.addCookie(c1);
	response.addCookie(c2);
%>
<a href="page02.jsp">쿠키리스트가지고오기</a>
</body>
</html>