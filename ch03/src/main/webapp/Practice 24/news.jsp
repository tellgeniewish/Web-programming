<!--응용화학과 20211689 김현진
이 과제는 크롬에 최적화되어 있습니다.-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>news.jsp</title>
   <style type="text/css">
            h1 {
               text-align: center;
               font-family:'Courier New', Courier, monospace;
            }
            li {
                 text-align: left;
                 width: 300px;
                 font-size: small;
                 font-family:'Courier New', Courier, monospace;
               /*margin: auto;
               border-collapse:collapse;
                /*height: 200px;
                 font-weight: bold;
               */
            }
   </style>
</head>
<body>
<h1>오늘의 일정</h1><hr>
<% 
	String task1 = request.getParameter("TASK1");
	if (task1 == null || task1 == "")
		task1 = "일정 없음";
	String task2 = request.getParameter("TASK2");
	if (task2 == null || task2 == "")
		task2 = "일정 없음";
%>
<ol>
	<li><%= task1 %></li>
	<li><%= task2 %></li>
</ol>

</body>
</html>