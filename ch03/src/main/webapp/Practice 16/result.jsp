<!--응용화학과 20211689 김현진
이 과제는 크롬에 최적화되어 있습니다.-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Enumeration" %>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice 16</title>
<style>
	div, span {
		font-weight: bold;
	}
</style>
</head>
<body>
<h1>전달된 파라미터 이름들</h1>
<div>
	<%
		Enumeration<String> e = request.getParameterNames();
		while (e.hasMoreElements()) {
			String element = e.nextElement();
			out.println(element + "<br>");
		}
	%>
</div>
<hr>
타입: <%= request.getParameter("type") %>
<br>
아이디: <span><%= request.getParameter("strID") %></span>
<br>
패스워드: <span><%= request.getParameter("strPwd") %></span>
</body>
</html>