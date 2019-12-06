<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="model.Member"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>會員基本資料</title>
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
	<h2 align=center><%=m.getName() %>,你好</h2>
		<table align=center border=0>
			<tr>
				<td>基本資料
			<tr>
				<td>姓名:
				<td><%=m.getName() %>
			<tr>
				<td>手機:
				<td><%=m.getMobile() %>
			<tr>
				<td>電話:
				<td><%=m.getPhone() %>
			<tr>
				<td>地址:
				<td><%=m.getAddress() %>
		</table>
	</div>
	<div class="footer">
	<jsp:include page="../footer.jsp" />
	</div>
</body>
</html>