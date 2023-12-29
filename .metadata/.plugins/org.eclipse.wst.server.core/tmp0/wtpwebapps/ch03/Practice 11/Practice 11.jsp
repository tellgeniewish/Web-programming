<!--응용화학과 20211689 김현진
이 과제는 크롬에 최적화되어 있습니다.-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice 11</title>
	<style type="text/css">
		h1 {
			font-family:'Courier New', Courier, monospace;
		}
		table {
			width: 650px;
			height: 200px;
			font-size: 25px;
			font-family:'Times New Roman', Times, serif;
		}
		td { padding: 15px; }
	</style>
</head>
<body>
<%
	out.println("<div align='center'>");
	out.println("<h1>구구단 출력</h1><p><hr>");
			out.println("<table border='1'>");
				int mul = 2;
				for (int row = 0; row < 2; row++) {
			        out.println("<tr>");
			        for (int col = 0; col < 4; col++) {
			        	out.println("<td>");
			        	for (int i = 1; i <= 9; i++) {
				            out.println(mul + " * " + i + " = " + mul * i + "<br>");
				        }
			        	mul++;
			        	out.println("</td>");
			        }
			        out.println("</tr>");
			    }
			out.println("</table>");
		out.println("</div>");
%>
</body>
</html>