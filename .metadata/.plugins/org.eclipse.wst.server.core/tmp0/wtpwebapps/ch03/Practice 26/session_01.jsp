<!--응용화학과 20211689 김현진
이 과제는 크롬에 최적화되어 있습니다.-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session_01</title>
</head>
<body>
	<form name="frm1" method="post" action="session_02.jsp">
	                아이디 : <input type="text" name="username">
	                <br>
	                <br>
	                비밀번호 : <input type="text" name="passwd"> 
	                <br>   
	                <br>          
	                <input type="submit" value="로그인">       
	                <input type="button" value="취소">
	</form>

</body>
</html>