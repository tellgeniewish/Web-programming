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
<title>Practice 34</title>
</head>
<body>
<h1>Processing Parameters</h1>
id: ${ param.id }<br>
pw: ${ param.pw }<br>
gender: ${ param.gender }성<br>
phone1: ${ param.phone1 }<br>
phone2: ${ param.phone2 }<br>
phone3: ${ param.phone3 }<br>
email: ${ param.email }<br>
birth: ${ param.birth }<br>
<%
int count = 0;
	String[] hobbyArr = request.getParameterValues("hobby");
	if (hobbyArr != null) {
	    for (String str : hobbyArr) {
	    	for (String arr : hobbyNames) {
	    		if(arr.equalsIgnoreCase(str)) {
	    			count++;
	    		}
	    	}
	    }
	}
	//out.println("count=" + count);
	session.setAttribute("count", count);
%>
hobby: 선택된 관심분야 ${ sessionScope.count }개
<br>
<%
int i = 0, c = 0;
if (hobbyArr != null) {
    for (String str : hobbyArr) {
    	out.println("[" + i + "]: " + str + "<br>");
    	i++;
    }
}
while (i < hobbyNames.length) {
	out.print("[" + i + "]: "+ "<br>");
	i++;
}
%>
<br>

</body>
</html>