<!--응용화학과 20211689 김현진
이 과제는 크롬에 최적화되어 있습니다.-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%@ page import="java.util.Enumeration" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>addr_list.jsp</title>
<style>
	body {
		text-align: center;
	}
	table {
		margin: auto;
		text-align: center;
	}
</style>
</head>
<body>
    <h1>주소록</h1>
    <hr>
    <table>
    <tr>
    <td>
    <ol>
    <%
	    ArrayList<String> addrbook = (ArrayList<String>) application.getAttribute("addrbook");
	    for (int i = 0; i < addrbook.size(); i++)
	    	out.println("<li>" + addrbook.get(i) + "</li>");
    %>
    </ol>
    </td>
    </tr>
    </table>
    <hr>
    <a href="addr_form.jsp">주소 추가</a>
</body>
</html>