<!--응용화학과 20211689 김현진
이 과제는 크롬에 최적화되어 있습니다.-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Enumeration" %>
<%@ page import="java.util.ArrayList" %>
<% request.setCharacterEncoding("UTF-8"); %>
<%!
String[] mChoices = {"hobby"};
String[] hobbyNames = {"뉴스", "맛집", "책", "영화", "여행"};
String[] telCompany = {"010", "011", "017", "070"};
String[] gNames = {"남", "여"};

ArrayList<String> getParameterNames(HttpServletRequest request) {
	//request 내장 객체에 있는 파라미터 이름만을 저장하고 있는 ArrayList 객체를 만들어서 반환
	ArrayList<String> paramName = new ArrayList<>();
	//request.getParameterNames() 메소드 이용
	Enumeration<String> e = request.getParameterNames();
	while (e.hasMoreElements()) {
		String element = e.nextElement();
		//out.println(element + "<br>");
		paramName.add(element);
	}
	return paramName;
}
boolean isMultipleChoice(String paramName) { // 과제 필수조건은 아님
	for (String c: mChoices) { // 매개변수 paramName이문자열 배열 mChoices에 있는지의 여부로 결정
		if (paramName.equalsIgnoreCase(c))
			return true; // 주어진 매개변수가 multiple choice를 지원하면 true
	}
	return false; // 그렇지 않으면 false 반환
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice 17</title>
</head>
<body>
<%--
Enumeration<String> e = request.getParameterNames();
	while (e.hasMoreElements()) {
		String element = e.nextElement();
		out.println(element + "<br>");
		//paramName.add(element);
	}
	<hr>
	<hr>
	
id: <%= request.getParameter("id") %><br>
pw: <%= request.getParameter("pw") %><br>
gender: <%= request.getParameter("gender") %><br>
phone1: <%= request.getParameter("phone1") %><br>
phone2: <%= request.getParameter("phone2") %><br>
phone3: <%= request.getParameter("phone3") %><br>
email: <%= request.getParameter("email") %><br>
birth: <%= request.getParameter("birth") %><br>
hobby: <%= request.getParameter("hobby") %><br>
memo: <%= request.getParameter("memo") %><br>
--%>
<%
    ArrayList<String> paramNames = getParameterNames(request);
    for (String n : paramNames) {
        String[] paramValues = request.getParameterValues(n);
        out.println(n + ": ");
        if (paramValues != null) {
            for (String v : paramValues) {
            	if (n.equalsIgnoreCase("hobby"))
            		out.print(v + "/");
            	else
            		out.println(v + " ");
            }
        } //else {
            //out.println(request.getParameter(n));
        //}
        out.println("<br>");
    }
%>
<hr>
<h1>Processing Parameters</h1>
id: <%= request.getParameter("id") %><br>
pw: <%= request.getParameter("pw") %><br>
gender: 
<%
	String index = request.getParameter("gender");
	int genderIndex = Integer.parseInt(index);
	out.println(gNames[genderIndex]);
%><br>
phone1: 
<% 
	index = request.getParameter("phone1");
	int phone1Index = Integer.parseInt(index);
	out.println(telCompany[phone1Index]);
%><br>
phone2: <%= request.getParameter("phone2") %><br>
phone3: <%= request.getParameter("phone3") %><br>
email: <%= request.getParameter("email") %><br>
birth: <%= request.getParameter("birth") %><br>
hobby: 
<%
	String[] hobbyArr = request.getParameterValues("hobby");
	if (hobbyArr != null) {
	    for (String arrIndex : hobbyArr) {
	    	int hobbyIndex = Integer.parseInt(arrIndex);
	    	//if (isMultipleChoice(arrIndex) == true) {
	    		out.print(hobbyNames[hobbyIndex] + "/");
	    	//}
	    }
	}
%><br>
memo: <%= request.getParameter("memo") %><br>

</body>
</html>