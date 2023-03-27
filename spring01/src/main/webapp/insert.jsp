<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    //MVC방법론 버전1 ==> MVC1(jsp로만 만들었을 때)
    //		  버전2 ==> MVC2(spring으로 만들었을 때)
    //넘어오는 값 제어해주는 코드
    //Controller(자바코드)
    String id = request.getParameter("id");
    String pw = request.getParameter("pw");
    String name = request.getParameter("name");
    String tel = request.getParameter("tel");
    
    //DAO(JDBC4단계에 의해 코딩됨)
    //Model(자바코드)
    
    //보여주는 부분
    //View(html)
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
아이디: <%= id %> <br>
패스워드: <%= pw %> <br>
이름: <%= name %> <br>
전화번호: <%= tel %> <br>
</body>
</html>