<!--응용화학과 20211689 김현진
이 과제는 크롬에 최적화되어 있습니다.-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이클래스 로그인</title>
        <style>
            div, h1 { text-align: center; }
            table { 
                margin:auto;
                border-collapse:collapse;
                align-items: center;
            }            
            th { text-align:left; }
            input.yellow { background-color: #FFFF98; }
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
                    <td rowspan="6">
                        <input type="image" class="imageAlign" src="image/eclass_logo.png">
        
                    </td>
                </tr>
                <tr>
                    <th colspan="2">
                        회원님의 아이디와 비밀번호를 정확히 입력하세요.
                    </th>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <select name="type">
                            <option value="학부생" selected>학부생</option>
                            <option value="대학원생">대학원생</option>
                            <option value="교직원">교직원</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <th>아이디</th>
                    <td><input type="text" class="yellow" name="strID" maxlength="8"></td>
                </tr>
                <tr>
                    <th>패스워드</th>
                    <td><input type="password" class="yellow" name="strPwd" maxlength="10"></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" class="ask" value="로그인">
                        <input type="button" class="ask" value="가입하기" onclick="document.location='member2.html'">
                    </td>
                </tr>
            </table>
        </form>
</body>
</html>