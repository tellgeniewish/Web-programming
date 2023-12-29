<%--컴퓨터학과 20210813 정다은--%>
<%--해당 html 스크립트는 Chrome 브라우저를 기준으로 작성되었습니다.--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice 09</title>
</head>
<body>
	<%String s="Hello, Welcome to JSP World! Let's go!"; %>
	<%String t="JSP"; %>
	
	<%out.println("입력되어 있는 문자열: " + s); %><br>
	<%out.println("문자열의 길이: " + s.length()); %><br>
	<%out.println("'JSP'" + "라는 문자의 위치: " + s.indexOf(t)); %><br>
	<%out.println("모두 소문자로 변경: " + s.toLowerCase()); %><br>
	<%out.println("모두 대문자로 변경: " + s.toUpperCase()); %>
	
</body>
</html>