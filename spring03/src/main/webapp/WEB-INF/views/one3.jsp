<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body {
	background: yellow;
}
</style>
</head>
<body>
북마크 검색이 완료되었습니다.<br>
id: ${bag.id} <br> 
name: ${bag.name} <br>
url: <a href="${bag.url}" target="_blank">${bag.url}</a> <br>
img: <img src="resources/img/${bag.img}" width="200"> <br>
</body>
</html>