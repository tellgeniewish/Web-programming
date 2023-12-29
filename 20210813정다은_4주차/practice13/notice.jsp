<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice 13</title>
<style>
        div { text-align: center; }

        table { border-collapse:collapse; width: 600px; margin: auto; text-align: center; font-weight: bold; }
        td { border: 1px solid white; }
        td.color1 {background-color: #F9DBBD; height: 40px;}
        td.color2 {background-color: #FCF0D8; height: 350px;}
    </style>
</head>
<body>
	<div>
        <img src="./image/eclass_title.jpg">
    </div>
    
    <table>
        <tr>
            <td class="color1">
                오류가 발생했습니다.
            </td>
        </tr>
        <tr>
            <td class="color2">
                <img src="./image/flower.gif">
                <br>오류 발생 시간 <%= new java.util.Date()%>
                <br>최대한 빨리 조치하겠습니다.
            </td>
        </tr>
    </table>
</body>
</html>