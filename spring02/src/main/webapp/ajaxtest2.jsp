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
lat = '';
lon = '';
if (navigator.geolocation) {
	  navigator.geolocation.getCurrentPosition(showPosition);
	} else {
	  console.log("Geolocation is not supported by this browser.");
	}

	function showPosition(position) {
	  console.log("Latitude: " + position.coords.latitude);
	  lat = position.coords.latitude;
	  console.log("Longitude: " + position.coords.longitude);
	  lon =position.coords.longitude;
	}
	
	$(function() {
		$.ajax({
			url: "list3",
			success: function(x) {
				$('#result').append(x)
			}
		})
		$('#b1').click(function() {
			$.ajax({
				url: "update2",
				data: {
					no: $('#no').val(),
					content: $('#content').val()
				},
				success: function() {
					alert('수정 완료!')
					location.reload()
				}
			})
		})
		$('#b2').click(function() {
			$.ajax({
				url: "delete2",
				data: {
					no: $('#no2').val(),
				},
				success: function() {
					location.href = "ajaxtest2.jsp"
				}
			})
		})
		$('#b3').click(function() {
			$('#result').empty()
			$.ajax({
				url: 'http://api.openweathermap.org/data/2.8/onecall?lat='+ lat +'&lon='+lon+'&exclude=hourly,daily,minutely&appid=7c4e5aca9e58ce7b3cbf4a59fef179d2&units=metric&lang=kr',
				success: function(doc) {
					l = doc.timezone
					t = doc.current.temp
					f = doc.current.feels_like
					c = doc.current.clouds
					w = doc.current.wind_speed
					$('#result').append("위치: " + l + "<br>온도: " + t + "<br>체감온도: " + f +
										"<br>구름: " + c + "<br>풍속: " + w )
				}//success
			})
		})
	})
</script>
</head>
<body>
no: <input id="no" value="2" style="width:100px;">
content: <input id="content">
<button id="b1">bbs수정</button><br>
no: <input id="no2" value="9" style="width:100px;">
<button id="b2">bbs삭제</button><br>
<button id="b3">날씨정보 가지고 오기</button><br>
<hr color="red">
<div id="result"></div>
</body>
</html>