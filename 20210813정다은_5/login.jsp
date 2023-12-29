<!---컴퓨터학과 20210813 정다은--->
<!--해당 html 스크립트는 Chrome 브라우저를 기준으로 작성되었습니다.-->
<!--16번-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이클래스 로그인</title>
<style>
	div { text-align: center; }
	h1 {text-align: center;}
	hr { border: 0.5px solid #606060; }
	table { border-collapse:collapse; width: auto; margin: auto; text-align: left;}
	td.bold  { font-weight: bold; }
	td.list{ text-align: center; }
         
	input.color {background-color: #FFFFA7; } 
    </style>
</head>
<body>
	<div>
		<img src="./image/eclass_title.jpg">
	</div>
	<h1>로그인</h1>
	<hr>

	<form name="frm1" method="post" action="result.jsp">
		<table>
			<tr>
				<td colspan="4" rowspan="5"><img src="./image/eclass_logo.png">
				</td>
				<td class="bold">회원님의 아이디와 비밀번호를 정확히 입력하세요.</td>
			</tr>
			<tr>
				<td class="list"><select name="type">
						<option value="학부생" selected>학부생</option>
                    	<option value="대학원생">대학원생</option>
                    	<option value="교직원">교직원</option>
				</select></td>
			</tr>
			<tr>
				<td class="bold">아이디&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
					class="color" type="text" name="strID">
				</td>
			</tr>
			<tr>
				<td class="bold">비밀번호&nbsp;&nbsp;&nbsp;&nbsp;<input
					class="color" type="password" name="strPwd">
				</td>
			</tr>
			<tr>
				<td><input type="submit" value="로그인"> <input
					type="button" value="가입하기"></td>
			</tr>
		</table>
	</form>
</body>
</html>