<!---컴퓨터학과 20210813 정다은--->
<!--해당 html 스크립트는 Chrome 브라우저를 기준으로 작성되었습니다.-->
<!--16번-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.Enumeration"%>
<%
request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice 20</title>
</head>
<body>
	<h1>전달된 파라미터 이름들</h1>

	<%
	Enumeration<String> e = request.getParameterNames();
	while (e.hasMoreElements()) {
		String s = e.nextElement();
		out.println(s + "<br>");
	}
	%>

	<HR>

	타입: <%=
	request.getParameter("type")
	%>
	<br> 아이디: <%=
	request.getParameter("strID")
	%>
	<br> 패스워드: <%=
	request.getParameter("strPwd")
	%>
</body>
</html>