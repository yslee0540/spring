<%@page import="org.json.simple.JSONObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	JSONObject json = new JSONObject();
	json.put("today", "rain");
	json.put("temp", 13.5);
	json.put("hu", 95);
	
%><%= json.toJSONString() %>