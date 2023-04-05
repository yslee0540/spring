<%@page import="org.json.simple.JSONObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	JSONObject json = new JSONObject();
	json.put("name", "hong");
	json.put("age", 100);
	json.put("id", "apple");
	
	//out.print(json.toJSONString());
%><%= json.toJSONString() %>