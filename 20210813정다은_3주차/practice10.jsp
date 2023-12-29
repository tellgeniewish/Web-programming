<%--컴퓨터학과 20210813 정다은--%>
<%--해당 html 스크립트는 Chrome 브라우저를 기준으로 작성되었습니다.--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice 10</title>
<style>
	table, td, tr {text-align='center';}
</style>
</head>
<body>
	<% out.println("<table border='1;' width='600';>");
		out.println("<tr>");
			out.println("<td>"+"<color='red';>"+"일"+"</td>");
			out.println("<td>"+"월"+"</td>");
			out.println("<td>"+"화"+"</td>");
			out.println("<td>"+"수"+"</td>");
			out.println("<td>"+"목"+"</td>");
			out.println("<td>"+"금"+"</td>");
			out.println("<td>"+"<color='blue'>"+"토"+"</td>");
    	out.println("</tr>");
  
	for(int i=0;i<4;i++) { 
		out.println("<tr>");
      for(int j=0;j<7;j++) {
    	  out.println("<td>");
    	  out.println("&nbsp;");
    	  out.println("</td>");
    	  }
      out.println("</tr>");
      }
	out.println("</table>"); %>
</body>
</html>