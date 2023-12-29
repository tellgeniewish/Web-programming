<!--응용화학과 20211689 김현진
이 과제는 크롬에 최적화되어 있습니다.-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Application Object 02</title>
</head>
<body>
    <%= request.getParameter("id")%>님 환영합니다.
    <p>
    현재 시간:
    <%
    Date date = new Date();
    String strDate = date.toString();
    out.println(strDate);
    %>
    <p>
    오늘의 접속자수:
    <%
    Integer count = (Integer) application.getAttribute("count"); // 0으로 초기화된 Integer 클래스 객체를 생성하여
    
    if (count != null) // 제일 처음 접속했음을 의미
    	count++; // count 값을 1만큼 증가시키고 
    else
    	count = Integer.valueOf(0); // count 참조변수에 대입
    	
    application.setAttribute("count", count); // application 내장객체에 “count” 속성을 다시 저장
    application.log("오늘의 접속자수:" + count); // 로그 관리! 지금은 이클립스 콘솔창에 뜨지만 톰캣을 수정하면 다른데 저장도 가능
    out.println(count);
    %>

</body>
</html>