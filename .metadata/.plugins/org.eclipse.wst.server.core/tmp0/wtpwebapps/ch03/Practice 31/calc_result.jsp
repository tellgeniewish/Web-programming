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
<jsp:useBean id="calc" class="jspbook.pr31.Calculator" scope="page" />
<jsp:setProperty name="calc" property="*" />
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
                            <input type="text" class="box" value="<%= calc.getOp1() %>" name="op1" readonly>
                            <br><br>
                            <%= calc.getOperator() %>
                            <br><br>
                            <input type="text" class="box" value="<%= calc.getOp2() %>" name="op2" readonly>
                            <br><br>
                            =
                            <br><br>
                            <% int result = calc.calc(); %>
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