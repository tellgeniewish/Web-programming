<!--응용화학과 20211689 김현진
이 과제는 크롬에 최적화되어 있습니다.-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>greeting message</title>
</head>
<body>
<h4>greeting.jsp에서 출력한 메시지입니다.</h4>
<br>
<%= request.getParameter("name") %>님 환영합니다.
<br>
오늘은 <%= request.getParameter("date") %>입니다.

</body>
</html>