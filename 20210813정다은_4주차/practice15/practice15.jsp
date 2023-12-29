<!---컴퓨터학과 20210813 정다은--->
<!--해당 html 스크립트는 Chrome 브라우저를 기준으로 작성되었습니다.-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.Calendar"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice 15</title>
</head>
<body>
	<%
	Calendar cal = Calendar.getInstance();
	int year = 1919;
	int month = 3; // 주의!! Calendar.MARCH == 2
	cal.set(year, month - 1, 1);
	int end = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
	int startDay = cal.get(Calendar.DAY_OF_WEEK);
	int i;
	int j = 1;

	out.print("<h1>" + year + "년 " + month + "월" + "</h1>" + "<hr>" + "<br>");
	for (i = 1; i < end + startDay; i++) {

		if (i < startDay)
			out.print("&nbsp&nbsp&nbsp&nbsp&nbsp");
		else {
			out.print(j + "&nbsp&nbsp&nbsp");
			j++;
		}

		if (i % 7 == 0)
			out.print("<br>");
	}
	%>

</body>
</html>