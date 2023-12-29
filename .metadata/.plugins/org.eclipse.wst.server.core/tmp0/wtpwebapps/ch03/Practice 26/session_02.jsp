<!--응용화학과 20211689 김현진
이 과제는 크롬에 최적화되어 있습니다.-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session_02</title>
</head>
<body>
<%= request.getParameter("username") %>님 반갑습니다.
<br>
<br>
세션 ID: <%= session.getId() %>
<br>
세션 지속기간(default): <%= session.getMaxInactiveInterval() %>초
<br>
<br>
<a href="session_03.jsp">session_03.jsp로 가기</a>
</body>
</html>