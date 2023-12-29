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
<title>addr_add.jsp</title>
<style>
	body {
		text-align: center;
	}
</style>
</head>
<body>
<h1>등록내용</h1>
<%
String addrInfo = "";
int flag = 1;
		Enumeration<String> e = request.getParameterNames();
		while (e.hasMoreElements()) {
			String element = e.nextElement();
			String element_val = "";
			if (element.equals("username")) {
				element_val = request.getParameter(element);
				element = "이름";
			}
			else if (element.equals("tel")) {
				element_val = request.getParameter(element);
				element = "전화번호";
			}
			else if (element.equals("email")) {
				element_val = request.getParameter(element);
				element = "이메일";
			}
			else if (element.equals("gender")) {
				element_val = request.getParameter(element);
				element = "성별";
				flag = 0;
			}
			out.println(element + ": " + element_val + "<p>");
			addrInfo += element_val;
			if (flag == 1)
				addrInfo += "/";
		    /*
			String username = request.getParameter("username");
		    String tel = request.getParameter("tel");
		    String email = request.getParameter("email");
		    String gender = request.getParameter("gender");
		    
		    String addrInfo = username + "/" + tel + "/" + email + "/" + gender;
		    */
		}
%>
<%
if (addrInfo != null || addrInfo != "") {
	ArrayList<String> addrbook = (ArrayList<String>) application.getAttribute("addrbook");
	if (addrbook == null) {
	    addrbook = new ArrayList<String>();
	}
	addrbook.add(addrInfo);
	
	application.setAttribute("addrbook", addrbook);
}
%>
<%=addrInfo %>
<hr>
<a href="addr_list.jsp">목록 보기</a>
<a href="addr_form.jsp">주소 추가</a>
</body>
</html>