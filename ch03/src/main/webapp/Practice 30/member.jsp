<!--응용화학과 20211689 김현진
이 과제는 크롬에 최적화되어 있습니다.-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
        <style>
            table { 
                margin: auto;
                border-collapse : collapse;
                border: 1px solid #000000;
                width: 30em;
                height: 20em;
            }
            th {
                text-align: center;
                font-weight: bold;
                background-color: #ECECEC;
            }
            th, td { border: 1px solid #000000; }
            .idpw { width: 8em; height: 1em; }
            input.imageAlign { vertical-align: middle; }
            .num { width: 50px; height: 3%; }
            #em { width: 25em; height: 1em; }
            #birth { width: 9em; height: 1em; }
            #hello { width: 400px; height: 70px; } /*고정 안 해도 됨*/
            ::placeholder { color: #000000; }
        </style>
    </head>
    <body>
        <form method="post" action="register.jsp">
            <table>
                <tr>
                    <th colspan="2">
                        회원가입
                    </th>
                </tr>
                <tr>
                    <th>아이디</th>
                    <td><input class="id" type="text" name="id">
                        <input type="image" class="imageAlign" src="image/check.gif">
                    </td>
                </tr>
                <tr>
                    <th>패스워드</th>
                    <td><input class="pw" type="password" name="pw"></td>
                </tr>
                <tr>
                    <th>성별</th>
                    <td>
                        <input type="radio" name="gender" value=0>남
                        <input type="radio" name="gender" value=1 checked>여
                    </td>
                </tr>
                <tr>
                    <th>국적</th>
                    <td>
                        <input type="text" value="대한민국" readonly>
                        <input type="button" value="국적변경" disabled>
                    </td>
                </tr>
                <tr>
                    <th>휴대폰</th>
                    <td>
                        <select name="phone1">
                            <option value="0" selected>010</option>
                            <option value="1">011</option>
                            <option value="2">017</option>
                            <option value="3">070</option>
                        </select>
                        - <input class="num" type="text" name="phone2" maxlength="4">
                        - <input class="num" type="text" name="phone3" maxlength="4">
                    </td>
                </tr>
                <tr>
                    <th>이메일</th>
                    <td><input id="em" type="text" name="email"></td>
                </tr>
                <tr>
                    <th>생일</th>
                    <td>
                        <input id="birth" type="text" value="연도-월-일" name="birth">
                    </td>
                </tr>
                <tr>
                    <th>관심분야</th>
                    <td>
                        <input type=checkbox name="hobby" value="0">뉴스
                        <input type=checkbox name="hobby" value="1" checked>맛집
                        <input type=checkbox name="hobby" value="2">책
                        <input type=checkbox name="hobby" value="3">영화
                        <input type=checkbox name="hobby" value="4">여행
                    </td>
                </tr>
                <tr>
                    <th>가입인사</th>
                    <td>
                        <textarea id="hello" name="memo" placeholder="회원들에게 간단한 가입인사를 남겨주세요"></textarea>
                    </td>
                </tr>
                <tr>
                    <th>증명사진</th>
                    <td>
                        <input type="file" value="파일선택">
                    </td>
                </tr>
                <tr>
                    <th colspan="2">
                        <input type="submit" value="가입하기">
                        <input type="reset" value="다시작성">
                    </th>
                </tr>
            </table>
        </form>
    </body>
</html>