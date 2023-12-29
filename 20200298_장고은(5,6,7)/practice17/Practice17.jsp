<!-- 20200298 컴퓨터학과 장고은 Microsoft Edge -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Enumeration" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice 22</title>
</head>
<body>
<%
	String[] gen = {"남자", "여자"};
	String[] phone = {"010", "011", "017", "070"};
	String[] hob = {"뉴스", "맛집", "책", "영화", "여행"};
	
	request.setCharacterEncoding("UTF-8");
	Enumeration<String> e = request.getParameterNames();	

	while(e.hasMoreElements()){
		String name = e.nextElement();
		out.println(name + " : ");
		
		if(name.equals("hobby")){
			String[] data = request.getParameterValues(name);
			
			if (data!=null)
				for(String ecahdata : data)
					out.println(ecahdata + "/");
		}else {
			String data = request.getParameter(name);
			out.println(data);
		}
		out.println("<br>");
	}
	
	out.println("<hr>");
	out.println("<h1>Processing Parameters</h1>");

	Enumeration<String> e1 = request.getParameterNames();	
	
	while(e1.hasMoreElements()){
		String name1 = e1.nextElement();
		out.println(name1 + " : ");
		
		if(name1.equals("hobby")){
			String[] data1 = request.getParameterValues(name1);
			if (data1 != null){
				for(String ecahdata : data1){
					int index = Integer.parseInt(ecahdata);
					out.println(hob[index] + "/");
				}
			}
		}else {
			String data1 = request.getParameter(name1);
			
			if (name1.equals("gender")) {
				int index = Integer.parseInt(data1);
				out.println(gen[index]);
			}		
			else if (name1.equals("phone1")){
				int index = Integer.parseInt(data1);
				out.println(phone[index]);
			}
			else
				out.println(data1);
		}
		out.println("<br>");
	}
%>
</body>
</html>