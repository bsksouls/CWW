<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="model.Member"
    import="dao.member.MemberDao"
    import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>會員基本資料更新</title>
<link rel="stylesheet" href="../CSS/st1.css"></link>
</head>
<%
Member m = (Member) session.getAttribute("member");
Member mmUpdate = (Member) session.getAttribute("memberUpdate");
mmUpdate.setMobile(request.getParameter("mobile"));
mmUpdate.setPhone(request.getParameter("phone"));
mmUpdate.setAddress(request.getParameter("address"));
new MemberDao().update(mmUpdate.getId(), mmUpdate);
%>
<body>
	<div class="header">
	<jsp:include page="../header.jsp" />
	</div>
	<div class="sidebar">
	<jsp:include page="../sidebar_CWW.jsp" />
	</div>
	<div class="main" style="overflow: auto">
	<h2 align=center><%=m.getName() %>,管理員你好</h2>
		<h2 align=center>會員編號<%=mmUpdate.getId() %>,基本資料修改如下</h2>
		<table align=center border=0>
			<tr>
				<td>基本資料
			<tr>
				<td>帳號
				<td><%=mmUpdate.getUser() %>
			<tr>
				<td>密碼
				<td>********
			<tr>
				<td>姓名:
				<td><%=mmUpdate.getName() %>
			<tr>
				<td>手機:
				<td><%=mmUpdate.getMobile() %>
			<tr>
				<td>電話:
				<td><%=mmUpdate.getPhone() %>
			<tr>
				<td>地址:
				<td><%=mmUpdate.getAddress() %>
		</table>
	</div>
	<div class="footer">
	<jsp:include page="../footer.jsp" />
	</div>
</body>
</html>