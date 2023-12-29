<!--응용화학과 20211689 김현진
이 과제는 크롬에 최적화되어 있습니다.-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="javax.servlet.http.HttpSession" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>시간표 작성</title>
<style>
    body {
        text-align: center;
    }
</style>
</head>
<body>

<% 
String[] typeNames = {"전공필수", "전공선택", "교양", "자유선택"};
String[] titleNames = {"웹프로그래밍", "운영체제", "소프트웨어프로그래밍", "데이터베이스개론", "자료구조", "네트워크", "창의와감성", "사회봉사"};
String[] days = {"월", "화", "수", "목", "금"};
String[] times = {"1", "2", "3", "4", "5", "6"};
String[] consecutives = {"1", "2", "3", "4"}; 
%>
<%
		//HttpSession session = request.getSession();
		ArrayList<String> tt_List = (ArrayList<String>) session.getAttribute("timetable");
		
		if (tt_List == null) {
			tt_List = new ArrayList<String>();
		}
		//HttpSession session = request.getSession();
        String lectureType = request.getParameter("lectureType");
        String lectureTitle = request.getParameter("lectureTitle");
        String day = request.getParameter("day");
        String time = request.getParameter("time");
        String consecutive = request.getParameter("consecutive");

        if (lectureType != null && lectureTitle != null && day != null && time != null && consecutive != null) {
        	String tt_Info = typeNames[Integer.parseInt(lectureType)] + "/" +
                    titleNames[Integer.parseInt(lectureTitle)] + "/" +
                    days[Integer.parseInt(day)] + "/" +
                    times[Integer.parseInt(time)] + "/" +
                    consecutives[Integer.parseInt(consecutive)];

            //ArrayList<String> tt_List = (ArrayList<String>) session.getAttribute("timetable");

            //if (tt_List == null) {
            //	tt_List = new ArrayList<String>();
            //}

            tt_List.add(tt_Info);

            session.setAttribute("timetable", tt_List);
        }
%>
<% int i; %>
<form name="time_table" method="post" action="Practice 29.jsp">
과목타입:
<select name="lectureType">
    <% for (i = 0; i < typeNames.length; i++) { %>
    <option value="<%= i %>" <%= i == 0 ? "selected" : "" %>><%= typeNames[i] %></option>
    <% } %>
</select>
과목명:
<select name="lectureTitle">
	<% for (i = 0; i < titleNames.length; i++) { %>
    <option value="<%= i %>" <%= i == 0 ? "selected" : "" %>><%= titleNames[i] %></option>
    <% } %>
</select>
요일:
<select name="day">
	<% for (i = 0; i < days.length; i++) { %>
    <option value="<%= i %>" <%= i == 0 ? "selected" : "" %>><%= days[i] %></option>
    <% } %>
</select>
시간:
<select name="time">
	<% for (i = 0; i < times.length; i++) { %>
    <option value="<%= i %>" <%= i == 0 ? "selected" : "" %>><%= times[i] %></option>
    <% } %>
</select>
연강여부:
<select name="consecutive">
	<% for (i = 0; i < consecutives.length; i++) { %>
    <option value="<%= i %>" <%= i == 0 ? "selected" : "" %>><%= consecutives[i] %></option>
    <% } %>
</select>
<input type="submit" class="ask" value="등록">
<hr>
<%
		for (i = 0; i < tt_List.size(); i++) {
	    	out.println(tt_List.get(i) + "<br>");
		}
%>
</form>

</body>
</html>