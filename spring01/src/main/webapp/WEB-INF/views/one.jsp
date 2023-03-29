<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
회원검색 처리 요청이 완료되었습니다.<br>
<!-- model의 속성으로 전달받은 bag은 EL로 출력 -->
id: ${bag.id} <br> <!-- 출력용(expression language-EL) -->
pw: ${bag.pw} <br>
name: ${bag.name} <br>
tel: ${bag.tel} <br>
</body>
</html>