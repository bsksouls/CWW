<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="model.Member"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>�|���򥻸��</title>
<link rel="stylesheet" href="../CSS/st1.css"></link>
</head>
<%
Member m = (Member) session.getAttribute("member");
%>
<body>
	<div class="header">
	<jsp:include page="../header.jsp" />
	</div>
	<div class="sidebar">
	<jsp:include page="../sidebar.jsp" />
	</div>
	<div class="main">
	<h2 align=center><%=m.getName() %>,�A�n</h2>
		<table align=center border=0>
			<tr>
				<td>�򥻸��
			<tr>
				<td>�m�W:
				<td><%=m.getName() %>
			<tr>
				<td>���:
				<td><%=m.getMobile() %>
			<tr>
				<td>�q��:
				<td><%=m.getPhone() %>
			<tr>
				<td>�a�}:
				<td><%=m.getAddress() %>
		</table>
	</div>
	<div class="footer">
	<jsp:include page="../footer.jsp" />
	</div>
</body>
</html>