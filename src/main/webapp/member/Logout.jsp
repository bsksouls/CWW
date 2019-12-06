<%@ page language="java" contentType="text/html; charset=BIG5"
	pageEncoding="BIG5"%>
<html>
<head>
<meta charset="BIG5">
<link rel="stylesheet" href="../CSS/st1.css"></link>
</head>
<%
session.removeAttribute("member");
%>
<body>
	<div class="header">
	<jsp:include page="../header.jsp" />
	</div>
	<div class="sidebar">
	<jsp:include page="../sidebar.jsp" />
	</div>
	<div class="main" align=center>
	<h1>已登出!請重新登入</h1>
		<table align="center" border="0">
			<tr>
				<td>
					<a href="/gjun/member/Login.jsp">登入</a>
			<tr>
				<td>
					<a href="/gjun/member/AddMember.jsp">註冊</a>
			<tr>
				<td>
					<a href="/gjun/porder/Porder.jsp">購物</a>
		</table>
	</div>
	<div class="footer">
	<jsp:include page="../footer.jsp" />
	</div>
</body>
</html>
