<!---컴퓨터학과 20210813 정다은--->
<!--해당 html 스크립트는 Chrome 브라우저를 기준으로 작성되었습니다.-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice 12</title>
</head>
<body>
<div align="center">
<h1>include 지시어 연습</h1>
<HR>
<table>
<tr>
<td><%@ include file="calendar.jsp"%></td>
<td width="15px">&nbsp;</td>
<td><%@ include file="news.jsp" %></td>
</tr>
</table>
</div>
</body>
</html>