<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="model.Member"
    import="dao.member.MemberDao"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../CSS/st1.css"></link>
</head>
<%
Member m = (Member) session.getAttribute("member");
m.setMobile(request.getParameter("mobile"));
m.setPhone(request.getParameter("phone"));
m.setAddress(request.getParameter("address"));
new MemberDao().update(m.getId(), m);
%>
<body>
	<div class="header">
	<jsp:include page="../header.jsp" />
	</div>
	<div class="sidebar">
	<jsp:include page="../sidebar.jsp" />
	</div>
	<div class="main">
	<h2 align=center><%=m.getName() %>,基本資料修改如下</h2>
		<table align=center border=0>
			<tr>
				<td>基本資料
			<tr>
				<td>帳號
				<td><%=m.getUser() %>
			<tr>
				<td>密碼
				<td>********
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