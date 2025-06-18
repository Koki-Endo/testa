<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<title>BMI3</title>
<link href="./css/style.css" rel="stylesheet">
</head>
<body>
	<jsp:useBean id="DATA" class="beans.BmiDataBean" scope="request" />
	<header>
		<h1>肥満度の計算（JavaBeans編）</h1>
	</header>
	<main>
		<div class="centerBlock">
			<table>
				<tr>
					<td class="backCFC">身長</td>
					<td class="backFEE"><jsp:getProperty name="DATA" property="strHeight" />cm</td>
				</tr>
				<tr>
					<td class="backCFC">体重</td>
					<td class="backFEE"><jsp:getProperty name="DATA" property="strWeight" />Kg</td>
				</tr>
				<tr>
					<td class="backCFC">BMI</td>
					<td class="backFEE"><jsp:getProperty name="DATA" property="bmi" /></td>
				</tr>
				<tr>
					<td class="backCFC">肥満度判定</td>
					<td class="backFEE"><jsp:getProperty name="DATA" property="himando" /></td>
				</tr>
				<tr>
					<td></td>
					<td><a href="./html/bmiform.html">戻る</a></td>
			</table>
		</div>
	</main>
</body>
</html>