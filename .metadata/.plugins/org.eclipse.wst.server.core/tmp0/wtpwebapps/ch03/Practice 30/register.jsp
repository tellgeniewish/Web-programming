<!--응용화학과 20211689 김현진
이 과제는 크롬에 최적화되어 있습니다.-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%@ page import="java.util.Enumeration" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice 30.jsp</title>
<style>
	body {
		text-align: center;
	}
	table {
		margin: auto;
		text-align: center;
	}
</style>
</head>
<body>
    <h1>등록내용</h1>
    <jsp:useBean id="login" class="jspbook.pr30.LoginBean" scope="page" />
    <jsp:setProperty name="login" property="*" />
    이름: <%= login.getId() %>
    <p>
    패스워드: <%= login.getPw() %>
    <p>
    이메일: <%= login.getEmail() %>
    <p>
    성별: <%= login.getGender() %>
    <p>
    생일: <%= login.getBirth() %>
    <hr>
    <%= login.getId() %>씨는
    <% 
    String gender;
    if (login.getGender() == 0)
    	out.print("남성");
    else
    	out.print("여성");
    %>이고
    <%
    if (login.isGrownUp() == true)
    	out.println("성인입니다.");
    else
    	out.println("성인이 아닙니다.");
    %>
</body>
</html>