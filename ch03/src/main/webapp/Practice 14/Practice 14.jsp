<!--응용화학과 20211689 김현진
이 과제는 크롬에 최적화되어 있습니다.-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Calendar" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice 14</title>
</head>
<body>
<%
Calendar cal = Calendar.getInstance(); // Calendar 클래스의 객체를 생성하면 오늘 날짜가 내부의 기준 날짜로 설정됨

int year = cal.get(Calendar.YEAR); // 년
int month = cal.get(Calendar.MONTH) + 1; // 월
int date = cal.get(Calendar.DATE); // 일
int day = cal.get(Calendar.DAY_OF_WEEK); // 요일

String[] week = {" ", "일", "월", "화", "수", "목", "금", "토"};

out.println("오늘은 " + year + "년 " + month + "월 " + date + "일 " + week[day] + "요일입니다.<br><br>");
/*switch (day) {
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
out.println("요일입니다.<br><br>");*/

int start = cal.getMinimum(Calendar.DATE); // 현재 기준 월(月)의 시작하는 날 구하기
int end = cal.getActualMaximum(Calendar.DAY_OF_MONTH); // 현재 기준 월(月)의 마지막 날 구하기
out.println("이번 달은 " + start + "부터 시작하여 " + end + "일에 끝납니다.<br><br>");

Calendar HBD = Calendar.getInstance();
HBD.set(2002, Calendar.MARCH, 28); // 2002 03 28 목
year = HBD.get(Calendar.YEAR);
month = HBD.get(Calendar.MONTH) + 1;
date = HBD.get(Calendar.DATE);
int startDay = HBD.get(Calendar.DAY_OF_WEEK);

out.println("내 생일 " + year + "년 " + month + "월 " + date + "일은 " + week[startDay] + "요일입니다.<br><br>");

//out.println("startDay " + startDay);
/*switch (startDay) {
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
out.println("요일입니다.<br><br>");*/

%>
<%--
cal = Calendar.getInstance(); // Calendar 클래스의 객체를 생성하면 오늘 날짜가 내부의 기준 날짜로 설정됨

// 기준 날짜 알아내기
year = cal.get(Calendar.YEAR); // 년
month = cal.get(Calendar.MONTH) + 1; // 월
date = cal.get(Calendar.DATE); // 일
day = cal.get(Calendar.DAY_OF_WEEK); // 요일
out.println(year + "\n\n" + month + "\n\n" + date+ "\n\n" + day+ "<br>");

start = cal.getMinimum(Calendar.DATE); // 현재 기준 월(月)의 시작하는 날 구하기
end = cal.getActualMaximum(Calendar.DAY_OF_MONTH); // 현재 기준 월(月)의 마지막 날 구하기
startDay = cal.get(Calendar.DAY_OF_WEEK);
out.println(start + "\n\n" + end + "\n\n" + startDay + "<br>");

// 기준 날짜 변경
cal.set(2008, Calendar.FEBRUARY, 1); // 2008년 2월 1일로 기준 날짜 설정
year = cal.get(Calendar.YEAR); // 년
month = cal.get(Calendar.MONTH) + 1; // 월
date = cal.get(Calendar.DATE); // 일
day = cal.get(Calendar.DAY_OF_WEEK); // 요일
out.println(year + "\n\n" + month + "\n\n" + date+ "\n\n" + day+ "<br>");

start = cal.getMinimum(Calendar.DATE); // 현재 기준 월(月)의 시작하는 날 구하기
end = cal.getActualMaximum(Calendar.DAY_OF_MONTH); // 현재 기준 월(月)의 마지막 날 구하기
startDay = cal.get(Calendar.DAY_OF_WEEK); // 시작 날짜의 요일을 구하기
//기준 날짜를 해당 년월(年月)의 1일로 변경
//새로 설정된 기준날짜의 요일을 구함
out.println(start + "\n\n" + end + "\n\n" + startDay + "<br>");


--%>

</body>
</html>