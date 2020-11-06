<%@page pageEncoding="utf-8" contentType="text/html; charset=utf-8"%>
<%
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath()+"/";
	request.setAttribute("basePath",basePath);
%>
