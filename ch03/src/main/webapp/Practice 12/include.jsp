<!--응용화학과 20211689 김현진
이 과제는 크롬에 최적화되어 있습니다.-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>include.jsp</title>
   <style type="text/css">
         h2 {
            text-align: center;
         }
         table {
            margin: auto;
            padding: auto;
            text-align: center;
            /*border-collapse: collapse;
            border: solid 1px gray;*/
            width: 615px;
             height: 250px;
         }
   </style>
</head>
<body>
   <h2>include 지시어 연습</h2>
      <hr>
      <p>
      <table>
         <tr>
            <td>
               <% out.println(" &nbsp; "); %>
               <%@ include file="calendar.jsp" %>
               <% out.println(" &nbsp; "); %>
            </td>
            <td width="15px">&nbsp;</td>
            <td>
               <%@ include file="news.jsp" %>
            </td>
         </tr>
      </table>
</body>
</html>