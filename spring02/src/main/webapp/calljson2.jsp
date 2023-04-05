<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>json</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<script type="text/javascript">
	$(function() {
		$('#b1').click(function() {
			$.ajax({
				url: "json1",
				dataType: "json",
				success: function(json) {
					id = json.id
					pw = json.pw
					name = json.name
					tel = json.tel
					$('#result').append(id + " " + pw + " " + name + " " + tel + "<br>")
				}
			})
		})
		$('#b11').click(function() {
			$.ajax({
				url: "json1",
				dataType: "json",
				success: function(json) {
					$('#result').empty()
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
		$('#b12').click(function() {
			$.ajax({
				url: "json1",
				dataType: "json",
				success: function(json) {
					$('#result').empty()
					id = json.id
					pw = json.pw
					name = json.name
					tel = json.tel
					$('#result').append("<ul><li>아이디</li><li>" + id +"</li></ul>" + 
							"<ul><li>패스워드</li><li>" + pw +"</li></ul>" + 
							"<ul><li>이름</li><li>" + name +"</li></ul>" + 
							"<ul><li>전화번호</li><li>" + tel +"</li></ul>")
				}
			})
		})
		$('#b2').click(function() {
			$.ajax({
				url: "json2",
				dataType: "json",
				success: function(json) {
					for (var i = 0; i < 2; i++) {
						id = json[i].id
						pw = json[i].pw
						name = json[i].name
						tel = json[i].tel
						$('#result').append(id + " " + pw + " " + name + " " + tel + "<br>")
					}
				}
			})
		})
		$('#b3').click(function() {
			$.ajax({
				url: "json3",
				dataType: "json",
				success: function(json) {
					no = json.no
					title = json.title
					content = json.content
					writer = json.writer
					$('#result').append(no + " " + title + " " + content + " " + writer + "<br>")
				}
			})
		})
		$('#b4').click(function() {
			$.ajax({
				url: "json4",
				dataType: "json",
				success: function(json) {
					$('#result').empty()
					$('#result').append("<table cellspacing=0>" + 
							"<tr><td class=t1>no</td><td class=t1>title</td>" + 
							"<td class=t1>content</td><td class=t1>writer</td></tr>")
					for (var i = 0; i < 2; i++) {
						no = json[i].no
						title = json[i].title
						content = json[i].content
						writer = json[i].writer
						$('#result').append("<tr><td>" + no + "</td><td>" + title +"</td>" + 
								"<td>" + content +"</td><td>" + writer +"</td></tr>")
					}
					$('#result').append("</table>")
				}
			})
		})
		$('#reset').click(function() {
			$('#result').empty()
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
<button id="b1">컨트롤러에서 JSON(텍스트)을 받아오자</button>
<button id="b11">컨트롤러에서 JSON(테이블)을 받아오자</button>
<button id="b12">컨트롤러에서 JSON(li)을 받아오자</button>
<button id="b2">컨트롤러에서 JSONArray를 받아오자</button><br>
<button id="b3">컨트롤러에서 JSON3을 받아오자</button>
<button id="b4">컨트롤러에서 JSONArray4를 받아오자</button>
<button id="reset">reset</button><br>
<hr color="red">
<div id="result"></div>
</body>
</html>