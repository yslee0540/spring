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
				url: "one22",
				dataType: "json",
				data: {
					no: $('#no').val()
				},
				success: function(json) {
					no = json.no
					title = json.title
					content = json.content
					writer = json.writer
					$('#result').append(no + " " + title + " " + content + " " + writer + "<br>")
				}
			})
		})
		$('#b11').click(function() {
			$.ajax({
				url: "one22",
				data: {
					//no: 14
					no: $('#no').val()
				},
				dataType: "json",
				success: function(json) {
					$('#result').empty()
					no = json.no
					title = json.title
					content = json.content
					writer = json.writer
					$('#result').append("<table cellspacing=0>" +
							"<tr><td class=t1>항목명</td><td class=t1>값</td></tr>" + 
							"<tr><td>번호</td><td>" + no +"</td></tr>" + 
							"<tr><td>제목</td><td>" + title +"</td></tr>" + 
							"<tr><td>내용</td><td>" + content +"</td></tr>" + 
							"<tr><td>작성자</td><td>" + writer +"</td></tr></table>")
				}
			})
		})
		$('#b2').click(function() {
			$.ajax({
				url: "list55",
				dataType: "json",
				success: function(json) {
					$('#result').empty()
					$('#result').append("<table cellspacing=0>" + 
							"<tr><td class=t1>no</td><td class=t1>title</td>" + 
							"<td class=t1>content</td><td class=t1>writer</td></tr>")
					for (var i = 0; i < json.length; i++) {
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
<input id="no" value="2">
<button id="b1">컨트롤러에서 bbs JSON(text)을 받아오자</button>
<button id="b11">컨트롤러에서 bbs JSON(table)을 받아오자</button><br>
<button id="b2">컨트롤러에서 bbs JSONArray를 받아오자</button>
<button id="reset">reset</button><br>
<hr color="red">
<div id="result"></div>
</body>
</html>