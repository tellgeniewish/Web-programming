<!---컴퓨터학과 20210813 정다은--->
<!--해당 html 스크립트는 Chrome 브라우저를 기준으로 작성되었습니다.-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.Calendar"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice 14</title>
</head>
<body>

	<%
	Calendar cal = Calendar.getInstance();
	int year = cal.get(Calendar.YEAR);
	int month = cal.get(Calendar.MONTH);
	int date = cal.get(Calendar.DATE);
	int day = cal.get(Calendar.DAY_OF_WEEK);
	int start = cal.getMinimum(Calendar.DATE);
	int end = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
	%>

	오늘은
	<%
	out.print(year);
	%>년
	<%
	out.print(month + 1);
	%>월
	<%
	out.print(date);
	%>일
	<%
	switch (day) {
	case 1:
		out.print("일");
		break;
	case 2:
		out.print("월");
		break;
	case 3:
		out.print("화");
		break;
	case 4:
		out.print("수");
		break;
	case 5:
		out.print("목");
		break;
	case 6:
		out.print("금");
		break;
	case 7:
		out.print("토");
		break;
	}
	%>요일입니다.
	<br> 이번 달은
	<%
	out.print(start);
	%>일부터 시작하여
	<%
	out.print(end);
	%>일에 끝납니다.
	<br>

	<%
	cal.set(2002, Calendar.FEBRUARY, 22);
	year = cal.get(Calendar.YEAR);
	month = cal.get(Calendar.MONTH);
	date = cal.get(Calendar.DATE);
	int myDay = cal.get(Calendar.DAY_OF_WEEK);

	%>
	내 생일
	<%
	out.print(year);
	%>년
	<%
	out.print(month + 1);
	%>월
	<%
	out.print(date);
	%>일은
	<%
	switch (myDay) {
	case 1:
		out.print("일");
		break;
	case 2:
		out.print("월");
		break;
	case 3:
		out.print("화");
		break;
	case 4:
		out.print("수");
		break;
	case 5:
		out.print("목");
		break;
	case 6:
		out.print("금");
		break;
	case 7:
		out.print("토");
		break;
	}
	%>요일입니다.

</body>
</html>