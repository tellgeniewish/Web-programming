<!---컴퓨터학과 20210813 정다은--->
<!--해당 html 스크립트는 Chrome 브라우저를 기준으로 작성되었습니다.-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>calendar.jsp</title>
<style>
table {
	border-collapse: collapse;
}
td.red {
	color: red;
}
td.blue {
	color: blue;
}
</style>
</head>
<body>
	<% out.println("<table border='1px'; width='300px'; height='250px';>");
		out.println("<tr align='center'>");
			out.println("<td class='red'>"+"일"+"</td>");
			out.println("<td>"+"월"+"</td>");
			out.println("<td>"+"화"+"</td>");
			out.println("<td>"+"수"+"</td>");
			out.println("<td>"+"목"+"</td>");
			out.println("<td>"+"금"+"</td>");
			out.println("<td class='blue'>"+"토"+"</td>");
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