<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<table class="table">
	<tr class="table-success">
		<td>no</td>
		<td>content</td>
		<td>writer</td>
	</tr>
	<c:forEach items="${list}" var="x">
		<tr>
			<td>${x.no}</td>
			<td>${x.content}</td>
			<td>${x.writer}</td>
		</tr>
	</c:forEach>
</table>