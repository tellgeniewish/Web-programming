<!--응용화학과 20211689 김현진
이 과제는 크롬에 최적화되어 있습니다.-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
out.println("<!DOCTYPE html>");
out.println("<html>");
out.println("<head>");
out.println("<meta charset=\"UTF-8\">");
out.println("<title>Practice 10</title>");
out.println("<style type=\"text/css\">");
out.println("table {");
out.println("	text-align: center;");
out.println("	width: 650px;");
out.println("	height: 200px;");
out.println("}");
out.println(".bold {");
out.println("	font-weight: bold;");
out.println("}");
out.println("</style>");
out.println("</head>");
out.println("<body>");
	out.println("<div align='center'>");
			out.println("<table border='1'>");
				out.println("<tr>");
				    String[] WeekDay = { "일", "월", "화", "수", "목", "금", "토" };
				    for (int i = 0; i < 7; i++) {
				    	String day = WeekDay[i];
				    	String color;
				    	if (i == 0)
				    		color = "red";
				    	else if (i == 6)
				    		color = "blue";
				    	else
				    		color = "black";
				    	out.println("<td class='bold'><font color='" + color + "'>" + day + "</font></td>");
				    }
			    out.println("</tr>");
				for (int row = 0; row < 4; row++) {
			        out.println("<tr>");
			        for (int col = 0; col < 7; col++) {
			            out.println("<td> &nbsp; </td>");
			        }
			        out.println("</tr>");
			    }
			out.println("</table>");
		out.println("</div>");
out.println("</body>");
out.println("</html>");
%>