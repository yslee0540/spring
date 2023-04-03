<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>movie</title>
<script type="text/javascript" src="resources/js/jquery-3.6.4.js"></script>
<script type="text/javascript">
	$(function() {
		$('#b1').click(function() {
			$.ajax({
				url: "movie",
				data: {
					title: $('#title').val(),
					price: $('#price').val()
				},
				success: function(x) {
					$('#result').append(x)
				}
			})
		})
		$('#b2').click(function() {
			$.ajax({
				url: "fruit",
				success: function(x) {
					$('#result').html(x)
				}
			})
		})
		$('#b3').click(function() {
			$.ajax({
				url: "tour",
				success: function(x) {
					$('#result').html(x)
				}
			})
		})
	})
</script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
	영화제목:
	<input id="title" value="테넷">
	<br> 영화관람료:
	<input id="price" value="15000">
	<br>
	<input id="b1" value="영화 관람 확인" type="button"><br>
	<input id="b2" value="과일 목록을 가지고 오기" type="button"><br>
	<input id="b3" value="여행 목록을 가지고 오기" type="button"><br>
	<hr class="text-danger">
	<div id="result"></div>
</body>
</html>