<!---컴퓨터학과 20210813 정다은--->
<!--해당 html 스크립트는 Chrome 브라우저를 기준으로 작성되었습니다.-->
<!--18번-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.Calendar"%>
<%
Calendar cal = Calendar.getInstance();
int year = Integer.parseInt(request.getParameter("YEAR"));
int month = Integer.parseInt(request.getParameter("MONTH"));

Calendar today = Calendar.getInstance();
int tYear=today.get(Calendar.YEAR);
int tMonth=today.get(Calendar.MONTH);

if(year==0)
	cal.set(tYear, tMonth+1, 1);
else
	cal.set(year, month - 1, 1); // 주의!! Calendar.MARCH == 2

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