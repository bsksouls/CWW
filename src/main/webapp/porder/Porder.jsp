<%@page import="controller.LoginAction"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="model.Member"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>線上訂餐系統</title>
<link rel="stylesheet" href="../CSS/st1.css"></link>
</head>
<%
Member m = (Member) session.getAttribute("member");;
try{
	m.getName();
}catch(NullPointerException e){
	request.getRequestDispatcher("../member/Login.jsp").forward(request,response);
}
%>
<body>
	<div class="header">
	<jsp:include page="../header.jsp" />
	</div>
	<div class="sidebar">
	<jsp:include page="../sidebar.jsp" />
	</div>
	<div class="main">
	<form action="../porder/PorderConfirm.jsp" method="post">
		<table align=center border=0>
			<tr>
				<td align=center colspan=3><h1><%=m.getName() %>,歡迎!</h1>
			<tr>
				<td align=center colspan=3><h2>菜單</h2>
			<tr>
				<td><img src="../pic/pro1.jpg">
				<td><img src="../pic/pro2.jpg">
				<td><img src="../pic/pro3.jpg">
			<tr>
				<td>20元/杯
				<td>30元/杯
				<td>40元/杯
			<tr>
				<td align=right>
					<select name="pro1">
						<option value="0">0</option>
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
						<option value="5">5</option>
						<option value="6">6</option>
						<option value="7">7</option>
						<option value="8">8</option>
						<option value="9">9</option>
					</select>杯
				<td align=right>
					<select name="pro2">
						<option value="0">0</option>
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
						<option value="5">5</option>
						<option value="6">6</option>
						<option value="7">7</option>
						<option value="8">8</option>
						<option value="9">9</option>
					</select>杯
				<td align=right>
					<select name="pro3">
						<option value="0">0</option>
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
						<option value="5">5</option>
						<option value="6">6</option>
						<option value="7">7</option>
						<option value="8">8</option>
						<option value="9">9</option>
					</select>杯
			<tr>
				<td align=center colspan=2><input type="submit" value="確定">
				<td><input type="reset" value="歸零">
		</table>
	</form>
	</div>
	<div class="footer">
	<jsp:include page="../footer.jsp" />
	</div>
</body>
</html>