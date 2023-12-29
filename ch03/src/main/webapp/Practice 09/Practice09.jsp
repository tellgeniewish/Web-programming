<!--응용화학과 20211689 김현진
이 과제는 크롬에 최적화되어 있습니다.-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice 09</title>
</head>
<body>
<%--
<%!
String s = "Hello, Welcome to JSP World! Let's go!";
String t = "JSP";
%>

입력되어 있는 문자열: <%=s %><p>
문자열의 길이: <%=s.length() %><p>
<% out.println("'JSP'"); %>라는 문자의 위치: <%=s.indexOf(t) %><p>
모두 소문자로 변경: <%=s.toLowerCase() %><p>
모두 대문자로 변경: <%=s.toUpperCase() %>
 --%>
<%
String s = "Hello, Welcome to JSP World! Let's go!";
String t = "JSP";
out.println("입력되어 있는 문자열: " + s + "<br>");
out.println("문자열의 길이: " + s.length() + "<br>");
out.println("'" + t + "'라는 문자의 위치: " + s.indexOf(t) + "<br>");
out.println("모두 소문자로 변경: " + s.toLowerCase() + "<br>");
out.println("모두 대문자로 변경: " + s.toUpperCase() + "<br>");

%>

</body>
</html>