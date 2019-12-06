<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>線上訂餐系統</title>
<link rel="stylesheet" href="../CSS/st1.css"></link>
</head>
<body>
	<div class="header">
	<jsp:include page="../header.jsp" />
	</div>
	<div class="sidebar">
	<jsp:include page="../sidebar.jsp" />
	</div>
	<div class="main">
		<form action="AddMember" method="post">
		<table align=center border=1>
			<tr>
				<td>
					帳號:
				<td>
					<input type="text" name="user" required maxlength=16 minlength=4>
			<tr>
				<td>
					密碼:
				<td>
					<input type="password" name="password" required maxlength=16 minlength=4>
			<tr>
				<td>
					姓名:
				<td>
					<input type="text" name="name" required>
			<tr>
				<td>
					手機:
				<td>
					<input type="text" name="phone">
			<tr>
				<td>
					電話:
				<td>
					<input type="text" name="mobile">
			<tr>
				<td>
					地址:
				<td>
					<input type="text" name="address">
			<tr>
				<td align=center colspan=2>
					<input type="submit" value="註冊">
		</table>
		</form>
	</div>
	<div class="footer">
	<jsp:include page="../footer.jsp" />
	</div>
</body>
</html>