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
<%
out.println("<h1>오늘의 공지사항</h1><hr>");
out.println("<ul><li>차년도 약학대학 입학전형 기본계획 공지<br>");
out.println("<li>차년도 정시모집 원서접수 현황</li></ul>");
%>
</body>
</html>