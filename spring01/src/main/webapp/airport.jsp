<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<h3>공항 정보 글쓰기</h3>
<form action="insert4">
code: <input name="code" value="AAA"><br>
name: <input name="name" value="airport"><br>
latitude: <input name="latitude" value="111"><br>
longitude: <input name="longitude" value="222"><br>
<button>서버로 전송</button>
</form>
<hr color="orange">
<h3>공항 정보 삭제하기</h3>
<form action="delete4">
code: <input name="code" value="AAA"><br>
<button>서버로 전송</button>
</form>
<hr color="orange">
<h3>공항 정보 수정하기</h3>
<form action="update4">
code: <input name="code" value="AAA"><br>
name: <input name="name" value="airport2"><br>
<button>서버로 전송</button>
</form>
<hr color="orange">
<h3>공항 정보 검색하기</h3>
<a href="list4">모든 공항 정보 가지고 오기</a><hr>
<form action="one4">
code: <input name="code" value="AAA"><br>
<button>서버로 전송</button>
</form>
</body>
</html>