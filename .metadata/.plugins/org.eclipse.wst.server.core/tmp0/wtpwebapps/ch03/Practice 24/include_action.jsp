<!--응용화학과 20211689 김현진
이 과제는 크롬에 최적화되어 있습니다.-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Include Action Practice</title>
<style type="text/css">
         h2 {
            text-align: center;
         }
         table {
            margin: auto;
            padding: auto;
            /*text-align: center;
            border-collapse: collapse;
            border: solid 1px gray;*/
            width: 615px;
            height: 250px;
         }
   </style>
</head>
<body>
<h2>Include Action Practice</h2>
<table>
         <tr>
            <td>
               <% out.println(" &nbsp; "); %>
	            <jsp:include page="calendar.jsp">
	            	<jsp:param name="YEAR" value="2017" />
	            	<jsp:param name="MONTH" value="10" />
	            </jsp:include>
               <% out.println(" &nbsp; "); %>
            </td>
            <td width="15px">&nbsp;</td>
            <td>
            	<jsp:include page="news.jsp">
	            	<jsp:param name="TASK1" value="" />
	            	<jsp:param name="TASK2" value="Homework" />
	            </jsp:include>
            </td>
         </tr>
      </table>
</body>
</html>