<!--응용화학과 20211689 김현진
이 과제는 크롬에 최적화되어 있습니다.-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session_03</title>
</head>
<body>
세션이 생성된 후 
<%
long glat = session.getLastAccessedTime();
long gct = session.getCreationTime();
long mseconds = glat - gct;
mseconds /= 1000;
%>
<%= mseconds %>초가 지났습니다.
</body>
</html>