<!--응용화학과 20211689 김현진
이 과제는 크롬에 최적화되어 있습니다.-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Calendar" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calendar</title>
<style>
	table {
			text-align: center;
			border-collapse: collapse;
			
		    /*width: 290px;
		    height: 250px;*/
			
		}
	.bold {
		font-weight: bold;
		}
</style>
</head>
<body>
<%
Calendar cal = Calendar.getInstance();
int year = 1919;
int month = 3; // 주의!! Calendar.MARCH == 2

cal.set(year, month - 1, 1);
out.println("<h1>" + year + "년 " + month + "월<br><hr></h1>");

int start = cal.getMinimum(Calendar.DATE); // 현재 기준 월(月)의 시작하는 날 구하기
int end = cal.getActualMaximum(Calendar.DAY_OF_MONTH); // 현재 기준 월(月)의 마지막 날 구하기
int startDay = cal.get(Calendar.DAY_OF_WEEK);
//out.println(start + "\n\n" + end + "\n\n" + startDay + "<br>");

int i = 1;
if (i < startDay) {
	out.println("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
	out.println("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
	out.println("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
	out.println("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
	out.println("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
	}
int spCount = startDay - 1;
for (; i<=end; i++) {
	out.print(i + "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
	spCount++;
	if (spCount % 7 == 0)
		out.println("<br>");
}

%>
</body>
</html>