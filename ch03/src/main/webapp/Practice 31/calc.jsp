<!--응용화학과 20211689 김현진
이 과제는 크롬에 최적화되어 있습니다.-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>계산기</title>
        <script type="text/javascript">
            function calc() {
                var input = prompt("계산할 수식을 입력하세요", "123+456")
                var result = eval(input);
                if (result != null) { // 확인을 눌렀을 때
                    alert(result);
                }
            }
        </script>
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
                            <input type="text" class="box" value="0" name="op1" onFocus="this.value='' ">
                            <br><br>
                            <select name="operator">
                                <option value="+" selected>+</option>
                                <option value="-">-</option>
                                <option value="*">*</option>
                                <option value="/">/</option>
                            </select>
                            <br><br>
                            <input type="text" class="box" value="0" name="op2" onFocus="this.value='' ">
                            <br><br>
                            <input type="submit" value="=">
                            <br><br>
                            <input type="button" class="box" disabled>
                        </td>
                    </tr>
                    <tr>
                        <th colspan="2"></th>
                    </tr>
                </table>
            </form>
</body>
</html>