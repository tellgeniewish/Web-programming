<!--응용화학과 20211689 김현진
이 과제는 크롬에 최적화되어 있습니다.-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forward action</title>
</head>
<body>
	<jsp:forward page="greeting.jsp">
	<jsp:param name="name" value="Dongduk University" />
	<jsp:param name="date" value="2011/04/05" />
	</jsp:forward>
</body>
</html>