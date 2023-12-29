<!--응용화학과 20211689 김현진
이 과제는 크롬에 최적화되어 있습니다.-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>page_control_01.jsp</title>
</head>
<body>
	<form name="frm1" method="post" action="page_control_02.jsp">
	                아이디 : <input type="text" name="username">
	                비밀번호 : <input type="text" name="passwd">              
	                <input type="submit" value="forward 전송">
	</form>
	<form name="frm2" method="post" action="page_control_03.jsp">
	                아이디 : <input type="text" name="username">
	                비밀번호 : <input type="text" name="passwd">
	                <input type="submit" value="sendRedirect 전송">
	</form>

</body>
</html>