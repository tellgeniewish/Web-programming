<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice 11</title>
</head>
<body>
	<div>
	<% out.println("<table border='1' width='600' text-align='center' margin-left='auto' margin-right='auto'>");
	out.println("<tr>");
	for(int i=2;i<6;i++) { 
      out.println("<td>");
      for(int j=1;j<=9;j++)
              out.println(i+"*"+j+"="+(i*j)+"<br>");
      out.println("</td>");
      }
	out.println("</tr>");
	out.println("<tr>");
	for(int i=6;i<10;i++) { 
      out.println("<td>");
      for(int j=1;j<=9;j++)
              out.println(i+"*"+j+"="+(i*j)+"<br>");
      out.println("</td>");
      }
	out.println("</tr>");
	out.println("</table>"); %>
	</div>
</body>
</html>