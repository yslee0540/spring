<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>com</title>
<script type="text/javascript" src="resources/js/jquery-3.6.4.js"></script>
<script type="text/javascript">
	$(function() {
		$('#b2').click(function() {
			$.ajax({
				url: "computer",
				data: {
					com: $('#com').val(),
					price: $('#price').val(),
					mouse: $('#mouse').val(),
					price2: $('#price2').val()
				},
				success: function(x) {
					//alert('컴퓨터 요청 성공')
					$('#result').append(x + "<br>")
				},
				error: function() {
					alert('컴퓨터 요청 실패')
				}
			})
		})
	})
</script>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
컴퓨터 종류 : <input id="com" value="aaa"><br>
컴퓨터 가격 : <input id="price" value="10000"><br>
마우스 종류 : <input id="mouse" value="bbb"><br>
마우스 가격 : <input id="price2" value="5000"><br>
<input id="b2" type="button" value="컴퓨터 구매 항목 확인"><br>
<hr color="red">
<div id="result"></div>
</body>
</html>