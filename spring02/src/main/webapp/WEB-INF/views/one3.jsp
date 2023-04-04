<%@page import="com.multi.mvc02.BbsVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<table class="table">
	<tr class="table-warning">
		<th>id</th>
		<th>pw</th>
		<th>name</th>
		<th>tel</th>
	</tr>
	<tr>
		<td>${bag.id}</td>
		<td>${bag.pw}</td>
		<td>${bag.name}</td>
		<td>${bag.tel}</td>
	</tr>
</table>
