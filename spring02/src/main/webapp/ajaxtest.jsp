<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ajax</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="resources/js/jquery-3.6.4.js"></script>
<script type="text/javascript">
	$(function() {
		$('#b1').click(function() {
			$('#result').empty()
			$.ajax({
				url: "list3",
				success: function(x) {
					$('#result').append(x)
				}
			})
		})
		$('#b2').click(function() {
			$('#result').empty()
			$.ajax({
				url: "list4",
				data: {
					bbsno: $('#bbsno').val()
				},
				success: function(x) {
					$('#result').append(x)
				}
			})
		})
		$('#b21').click(function() {
			$('#result').empty()
			$.ajax({
				url: "list4",
				data: {
					bbsno: 24
				},
				success: function(x) {
					$('#result').append(x)
				}
			})
		})
		$('#b3').click(function() {
			$('#result').empty()
			$.ajax({
				url: "one3",
				data: {
					id: $('#id').val()
				},
				success: function(x) {
					$('#result').append(x)
				}
			})
		})
		$('#b31').click(function() {
			$('#result').empty()
			$.ajax({
				url: "one3",
				data: {
					id: 'spring'
				},
				success: function(x) {
					$('#result').append(x)
				}
			})
		})
		$('#b4').click(function() {
			$('#result').empty()
			$.ajax({
				url: "one4",
				data: {
					no: 1
				},
				success: function(x) {
					$('#result').append(x)
				}
			})
		})
		$('#b5').click(function() {
			$('#result').empty()
			$.ajax({
				url: "list5",
				success: function(x) {
					$('#result').append(x)
				}
			})
		})
	})
</script>
</head>
<body>
<button id="b1">bbs리스트 가지고 오기</button>
<button id="b21">bbs 24번 reply리스트 가지고 오기</button>
<button id="b31">spring member정보 가지고 오기</button><br>
<input id="bbsno" value="1" placeholder="게시판 번호" style="width:100px;">
<button id="b2">reply리스트 가지고 오기</button><br>
<input id="id" value="apple" placeholder="member id" style="width:100px;">
<button id="b3">member정보 가지고 오기</button><br>
<button id="b4">bbs 1번 상세 정보 가지고 오기</button>
<button id="b5">member리스트 가지고 오기</button>
<hr color="red">
<div id="result"></div>
</body>
</html>