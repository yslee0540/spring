<%@page import="org.json.simple.JSONArray"%>
<%@page import="org.json.simple.JSONObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	JSONObject json = new JSONObject();
	json.put("high", 63800);
	json.put("low", 62800);
	json.put("end", 63600);
	
	JSONObject json2 = new JSONObject();
	json2.put("high", 63900);
	json2.put("low", 63400);
	json2.put("end", 63700);
	
	JSONArray array = new JSONArray();
	array.add(json);
	array.add(json2);
	
%><%= array.toJSONString() %>