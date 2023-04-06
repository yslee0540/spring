<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>json</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey="></script>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
	$(function() {
		$('#b1').click(function() {
			$.ajax({
				url: "jsonResponse3",
				dataType: "json",
				data: {
					id: 'apple'
				},
				success: function(json) {
					$('#result').empty()
					$('#map').empty()
					id = json.id
					pw = json.pw
					name = json.name
					tel = json.tel
					$('#result').append("<table cellspacing=0>" +
							"<tr><td class=t1>항목명</td><td class=t1>값</td></tr>" + 
							"<tr><td>아이디</td><td>" + id +"</td></tr>" + 
							"<tr><td>패스워드</td><td>" + pw +"</td></tr>" + 
							"<tr><td>이름</td><td>" + name +"</td></tr>" + 
							"<tr><td>전화번호</td><td>" + tel +"</td></tr></table>")
				}
			})
		})
		$('#b2').click(function() {
			$.ajax({
				url: "jsonResponse4",
				dataType: "json",
				success: function(json) {
					$('#result').empty()
					$('#map').empty()
					for (var i = 0; i < json.length; i++) {
						id = json[i].id
						pw = json[i].pw
						name = json[i].name
						tel = json[i].tel
						$('#result').append(id + " " + pw + " " + name + " " + tel + "<br>")
					}
				}
			})
		})
		$('#b21').click(function() {
			$.ajax({
				url: "jsonResponse4",
				dataType: "json",
				success: function(json) {
					$('#result').empty()
					$('#map').empty()
					$('#result').append("<table cellspacing=0>" + 
							"<tr><td class=t1>id</td><td class=t1>pw</td>" + 
							"<td class=t1>name</td><td class=t1>tel</td></tr>")
					for (var i = 0; i < json.length; i++) {
						id = json[i].id
						pw = json[i].pw
						name = json[i].name
						tel = json[i].tel
						$('#result').append("<tr><td>" + id + "</td><td>" + pw +"</td>" + 
								"<td>" + name +"</td><td>" + tel +"</td></tr>")
					}
					$('#result').append("</table>")
				}
			})
		})
		$('#b3').click(function() {
			$.ajax({
				url: "jsonResponse5",
				dataType: "json",
				success: function(json) {
					$('#result').empty()
					$('#map').empty()
					for (var i = 0; i < json.length; i++) {
						if (json[i].location == $('#loc').val()) {
						var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	    
							mapOption = {
									center : new kakao.maps.LatLng(json[i].lat, json[i].lon), // 지도의 중심좌표
									level : 3 // 지도의 확대 레벨
								};
	
								var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
	
								// 마커가 표시될 위치입니다 
								var markerPosition = new kakao.maps.LatLng(json[i].lat, json[i].lon);
	
								// 마커를 생성합니다
								var marker = new kakao.maps.Marker({
									position : markerPosition
								});
	
								// 마커가 지도 위에 표시되도록 설정합니다
								marker.setMap(map);
	
								// 아래 코드는 지도 위의 마커를 제거하는 코드입니다
								// marker.setMap(null);     
						}
					}
				}
			})
		})
		$('#b4').click(function() {
			$.ajax({
				url: "jsonResponse6",
				dataType: "json",
				success: function(list) {
					$('#result').empty()
					$('#map').empty()
					google.charts.load('current', {packages: ['corechart', 'bar']});
					google.charts.setOnLoadCallback(drawBasic);
					
					function drawBasic() {
						var arr2 = new Array(list.length + 1);
					    var header = ["영화", "평점"];
					    arr2[0] = header
						//2차원배열은 배열을 만들어서
						//1차원을 2차원배열에 하나씩 끼면 됨.
						for(i = 0; i < list.length; i++){
					    	one = new Array(2)
					    	one[0] = list[i].movie;
					    	one[1] = list[i].score;
					    	arr2[i + 1] = one
						}
				        var data = google.visualization.arrayToDataTable(arr2);
					
					      /* var data = google.visualization.arrayToDataTable([
					        ['영화', '평점',],
					        [list[0].movie, list[0].score],
					        [list[1].movie, list[1].score],
					        [list[2].movie, list[2].score],
					        [list[3].movie, list[3].score],
					        [list[4].movie, list[4].score]
					      ]); */
					
					      var options = {
					        title: '',
					        chartArea: {width: '50%'},
					        hAxis: {
					          title: '평점',
					          minValue: 7.0
					        },
					        vAxis: {
					          title: '영화'
					        }
					      };
					
					      var chart = new google.visualization.BarChart(document.getElementById('result'));
					
					      chart.draw(data, options);
					 }
				}
			})
		})
	})
</script>
<style type="text/css">
.t1 {
	border-bottom: 1px solid #aaa;
}
td {
	width: 100px;
	padding: 5px;
}
</style>
</head>
<body>
<button id="b1">member JSON을 받아오자</button>
<button id="b2">member JSONArray(text)를 받아오자</button>
<button id="b21">member JSONArray(table)을 받아오자</button><br>
<input id="loc" value="코엑스">
<button id="b3">지도 나타내기</button>
<button id="b4">차트 나타내기</button><br>
<hr color="red">
<div id="result"></div>
<div id="map" style="width:500px;height:350px;"></div>
</body>
</html>