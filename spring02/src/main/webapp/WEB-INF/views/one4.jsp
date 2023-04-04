<%@page import="com.multi.mvc02.BbsVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<table class="table table-striped">
	<tr>
		<td width="150">no</td>
		<td>${bag.no}</td>
	</tr>
	<tr>
		<td>title</td>
		<td>${bag.title}</td>
	</tr>
	<tr>
		<td>content</td>
		<td>${bag.content}</td>
	</tr>
	<tr>
		<td>writer</td>
		<td>${bag.writer}</td>
	</tr>
</table>
