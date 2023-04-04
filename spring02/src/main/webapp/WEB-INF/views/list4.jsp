<%@page import="com.multi.mvc02.BbsVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<table class="table">
	<tr class="table-success">
		<th>no</th>
		<th>bbsno</th>
		<th>content</th>
		<th>writer</th>
	</tr>
	<c:forEach items="${list}" var="x">
		<tr>
			<td>${x.no}</td>
			<td>${x.bbsno}</td>
			<td>${x.content}</td>
			<td>${x.writer}</td>
		</tr>
	</c:forEach>
</table>
