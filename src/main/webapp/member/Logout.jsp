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
	<h1>�w�n�X!�Э��s�n�J</h1>
		<table align="center" border="0">
			<tr>
				<td>
					<a href="/gjun/member/Login.jsp">�n�J</a>
			<tr>
				<td>
					<a href="/gjun/member/AddMember.jsp">���U</a>
			<tr>
				<td>
					<a href="/gjun/porder/Porder.jsp">�ʪ�</a>
		</table>
	</div>
	<div class="footer">
	<jsp:include page="../footer.jsp" />
	</div>
</body>
</html>
