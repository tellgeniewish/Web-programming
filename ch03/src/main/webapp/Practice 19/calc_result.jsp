<!--응용화학과 20211689 김현진
이 과제는 크롬에 최적화되어 있습니다.-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Enumeration" %>
<% request.setCharacterEncoding("UTF-8"); %>
<%--
            function calc() {
				var num1 = request.getParameter("first");
				var num2 = request.getParameter("second");
				var operation = request.getParameter("op");
                var input = num1+operation+num2;
                var result = eval(input);
                //if (result != null) { // 확인을 눌렀을 때
                    //alert(result);
                	//return result;
                //}
                return result;
            }
--%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>계산기</title>
        <style>
            table {
                text-align:center; 
                margin: auto;
                border-collapse : collapse;
                width: 33em;
                height: 20em;
            }
            th {   
                height: 55px;              
                font-size:40px; 
                font-weight: bold;
                font-family:'Times New Roman', Times, serif;              
                background-color: #32CBFD;
            }
            td { 
                width: 50%;
                border: 2px solid #EDEDED;
            }
            img {
                display: block;
                width: 100%;
                border:0px;
            }
            .box {
                width: 110px;
                text-align:center;
            }
        </style>
</head>
<body>
	<form name="frm3" method="post" action="calc_result.jsp">
                <table>
                    <tr>
                        <th colspan="2">
                            CalCuLaTor
                        </th>
                    </tr>
                    <tr>
                        <td>
                            <div>
                                <img src="image/cal.jpg">
                            </div>
                        </td>
                        <td>
                            <input type="text" class="box" value="<%= request.getParameter("first") %>" name="first" readonly>
                            <br><br>
                            <%= request.getParameter("op") %>
                            <br><br>
                            <input type="text" class="box" value="<%= request.getParameter("second") %>" name="second" readonly>
                            <br><br>
                            =
                            <br><br>
                            <%
                            String num = request.getParameter("first");
                            int num1 = Integer.parseInt(num);
                            String op = request.getParameter("op");
                            num = request.getParameter("second");
                            int num2 = Integer.parseInt(num);
                            
                            int result = 0;
                            if (op.equals("+")) {
                                result = num1 + num2;
                            } else if (op.equals("-")) {
                                result = num1 - num2;
                            } else if (op.equals("*")) {
                                result = num1 * num2;
                            } else if (op.equals("/")) {
                            	result = num1 / num2;
                                /*if (num2 !== 0) {
                                    result = num1 / num2;
                                } else {
                                    result = "Cannot divide by zero";
                                }*/
                            }
                            %>
                            
                            <input type="text" class="box" value="<%= result %>" readonly>
                        </td>
                    </tr>
                    <tr>
                        <th colspan="2"></th>
                    </tr>
                </table>
            </form>

</body>
</html>