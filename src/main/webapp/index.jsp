<%@ page language="java" contentType="text/html; charset=BIG5"
	pageEncoding="BIG5"%>
<html>
<head>
<meta charset="BIG5">
<link rel="stylesheet" href="CSS/st1.css"></link>
</head>
<body>
	<div class="header">
	<jsp:include page="header.jsp" />
	</div>
	<div class="sidebar">
	<jsp:include page="sidebar.jsp" />
	</div>
	<div class="main">
		<table align="center" border="0">
			<tr>
				<td>
					<a href="member/Login.jsp">登入</a>
			<tr>
				<td>
					<a href="member/AddMember.jsp">註冊</a>
			<tr>
				<td>
					<a href="porder/Porder.jsp">購物</a>
		</table>
	</div>
	<div class="footer">
	<jsp:include page="footer.jsp" />
	</div>
</body>
</html>
