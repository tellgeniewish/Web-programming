<!--응용화학과 20211689 김현진
이 과제는 크롬에 최적화되어 있습니다.-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오류 메시지</title>
	<style>
            div, table { text-align: center; }
            table {
                margin:auto;
                border-collapse:collapse;
                font-weight: bold;
                width: 600px;
            }
            td { border: 2px solid white; }
            .textback {
                height: 40px;
                background-color: #FED9B8;
            }
            .flowerback {
                height: 350px;
                background-color: #FEEED4;
            }
        </style>
</head>
<body>
	<div>
		<img src="./image/eclass_title.jpg">
     </div>
     <form name="frm3">
     	<table>
     		<tr>
     			<td class="textback">오류가 발생했습니다</td>
     		</tr>
            <tr>
            	<td class="flowerback">
            		<input type="image" id="first" class="imageAlign" src="image/flower.gif">
                    <br>
                    오류 발생시간: <%= new java.util.Date() %>
                    <br>
                    최대한 빨리 조치하겠습니다.
                </td>
            </tr>
     	</table>
     </form>
</body>
</html>