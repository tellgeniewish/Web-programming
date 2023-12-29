<!--응용화학과 20211689 김현진
이 과제는 크롬에 최적화되어 있습니다.-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Calendar" %>
<%!
public String parseDay(int cnt, String day) {
   String color;
   if (cnt == 1)
          color = "red";
    else if (cnt == 7)
          color = "blue";
    else
       color = "black";
   
   return "<td><font color='" + color + "'>" + day + "</font></td>";
       
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice 19</title>
<style>
   h3 {
      text-align: right;
   }
   table {
         margin: auto;
         text-align: center;
         border-collapse: collapse;
          width: 700px;
          height: 270px;/**/
         
      }
   .bold {
      font-weight: bold;
      }
</style>
</head>
<body>
<%
Calendar today = Calendar.getInstance();
Calendar cal = Calendar.getInstance();

int year = cal.get(Calendar.YEAR); // 년
int month = cal.get(Calendar.MONTH) + 1; // 월
int date = cal.get(Calendar.DATE); // 일
//out.println("오늘은 " + year + "년 " + month + "월 " + date + "일 ");
out.println("<div><table border='1'><caption><h3>" + year + "-" + month + "-" + date + "</h3></caption><br>");

int start = cal.getMinimum(Calendar.DATE); // 현재 기준 월(月)의 시작하는 날 구하기
int end = cal.getActualMaximum(Calendar.DAY_OF_MONTH); // 현재 기준 월(月)의 마지막 날 구하기
int startDay = cal.get(Calendar.DAY_OF_WEEK);
//out.println("이번 달은 " + start + "부터 시작하여 " + end + "에 끝납니다.<br><br>");

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
int i = 1;
int spCount = 0;
for (int row = 0; row < 5; row++) {
    out.println("<tr>");
    for (int col = 1; col <= 7; col++) {
       if (row == 0 && col < startDay) {
          out.println("<td> &nbsp; </td>");
       }
       else {
          if (end < i) {
             int stop = 35 - spCount;
             for (int j = 0; j < stop; j++)
                out.println("<td> &nbsp; </td>");
             break;
          }
          String pd = i + "";
          String color = parseDay(col, pd);
          out.println(color);
          i++;
       }
       spCount++;
       if (spCount % 7 == 0)
         out.println("<br>");
    }
    out.println("</tr>");
}
out.println("</table></div>");
%>
</body>
</html>