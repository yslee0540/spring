<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>‘길복순’ 전도연이 선보이는 킬러의 세계</h3>
<img src="https://ssl.pstatic.net/mimgnews/image/144/2023/03/31/0000877141_001_20230331134601293.jpg?type=w540" width="200">
<% if(session.getAttribute("id") != null) { %>
<form action="aaa">
	댓글: <input name="reply"><button>댓글달기</button>
</form>
<br><a href="logout2"><button>로그아웃</button></a>
<% } else { %>
<a href="login.jsp"><button>로그인</button></a>
<% } %>
</body>
</html>