<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>json</title>
<!-- content delivery network : CDN -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<script type="text/javascript">
	$(function() {
		$('#b1').click(function() {
			$.ajax({
				url: "json.jsp",
				dataType: "json",
				success: function(json) {
					age = json.age
					name = json.name
					id = json.id
					$('#result').append(age + " " + name + " " + id + "<br>")
				}
			})
		})
		$('#b2').click(function() {
			$.ajax({
				url: "json2.jsp",
				dataType: "json",
				success: function(json) {
					age = json[1].age
					name = json[1].name
					id = json[1].id
					$('#result').append(age + " " + name + " " + id + "<br>")
				}
			})
		})
		$('#b3').click(function() {
			$.ajax({
				url: "json3.jsp",
				dataType: "json",
				success: function(json) {
					today = json.today
					temp = json.temp
					hu = json.hu
					if(today == 'rain') {
						$('#result').append("<img src=resources/img/rain.png width=50>")
					}else if(today == 'sun'){
						$('#result').append("<img src=resources/img/sun.jpg>")
					}
					$('#result').append(today + " " + temp + " " + hu + "<br>")
				}
			})
		})
		$('#b4').click(function() {
			$.ajax({
				url: "json4.jsp",
				dataType: "json",
				success: function(json) {
					high = "<font color=red>" + json[0].high + "</font>"
					low = "<font color=blue>" + json[0].low + "</font>"
					end = json[0].end
					high2 = "<font color=red>" + json[1].high + "</font>"
					low2 = "<font color=blue>" + json[1].low + "</font>"
					end2 = json[1].end
					$('#result').append("어제 주가: " + high + " " + low + " " + end + "<br>" +
							            "오늘 주가: " + high2 + " " + low2 + " " + end2 + "<br>")
				}
			})
		})
	})
</script>
</head>
<body>
<button id="b1">JSON을 받아오자</button>
<button id="b2">JSONArray를 받아오자</button>
<button id="b3">JSON3을 받아오자</button>
<button id="b4">JSONArray4를 받아오자</button><br>
<hr color="red">
<div id="result"></div>
</body>
</html>