<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<table class="table" style="width:500px;">
	<tr class="table-info">
		<th>항목명</th>
		<th>가격</th>
	</tr>
	<tr>
		<td>${vo.com}</td>
		<td>${vo.price}</td>
	</tr>
	<tr>
		<td>${vo.mouse}</td>
		<td>${vo.price2}</td>
	</tr>
	<tr>
		<td>총합</td>
		<td>${vo.sum}</td>
	</tr>
</table>