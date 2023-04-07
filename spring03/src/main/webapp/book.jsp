<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>book</title>
<style type="text/css">
body {
	background: lightblue;
}
</style>
</head>
<body>
<h3>북마크 글쓰기</h3>
<form action="insert3.multi">
name: <input name="name" value="naver"><br>
url: <input name="url" value="http://www.naver.com"><br>
img: <input name="img" value="naver.png"><br>
<button>서버로 전송</button>
</form>
<hr color="blue">
<h3>북마크 삭제하기</h3>
<form action="delete3.multi">
id: <input name="id"><br>
<button>서버로 전송</button>
</form>
<hr color="blue">
<h3>북마크 수정하기</h3>
<form action="update3.multi">
id: <input name="id"><br>
name: <input name="name"><br>
<button>서버로 전송</button>
</form>
<hr color="blue">
<h3>북마크 검색하기</h3>
<a href="list3.multi">모든 북마크 가지고 오기</a><hr>
<form action="one3.multi">
id: <input name="id" value="1"><br>
<button>서버로 전송</button>
</form>
</body>
</html>