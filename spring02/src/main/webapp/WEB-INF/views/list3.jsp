<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<table class="table">
	<tr class="table-primary">
		<th>no</th>
		<th>title</th>
		<th>content</th>
		<th>writer</th>
	</tr> 
	<c:forEach items="${list}" var="bag">
	<tr>
		<td>${bag.no}</td>
		<td><a href="one2.multi?no=${bag.no}">${bag.title}</a></td>
		<td>${bag.content}</td>
		<td>${bag.writer}</td>
	</tr>
	</c:forEach>
</table>
