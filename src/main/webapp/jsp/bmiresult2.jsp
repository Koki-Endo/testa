<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="bmidata.BmiData" %>
<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<title>BMI2</title>
<link href="./css/style.css" rel="stylesheet">
</head>
<body>
    <%
    //--- 表示するデータを全て取り込む
    BmiData data = (BmiData) request.getAttribute("DATA");
    %>
    <header>
        <h1>肥満度の計算</h1>
    </header>
    <main>
        <div class="centerBlock">
            <table>
                <tr>
                    <td class="backCFC">身長</td>
                    <td class="backFEE"><%=data.strHeight %>cm</td>
                </tr>
                <tr>
                    <td class="backCFC">体重</td>
                    <td class="backFEE"><%=data.strWeight %>Kg</td>
                </tr>
                <tr>
                    <td class="backCFC">BMI</td>
                    <td class="backFEE"><%=data.bmi %></td>
                </tr>
                <tr>
                    <td class="backCFC">肥満度判定</td>
                    <td class="backFEE"><%=data.himando %></td>
                </tr>
                <tr>
                    <td></td>
                    <td><a href="./html/bmiform.html">戻る</a></td>
            </table>
        </div>
    </main>
</body>
</html>
