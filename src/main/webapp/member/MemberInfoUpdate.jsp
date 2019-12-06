<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="model.Member"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>會員基本資料更新</title>
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
		<form action="MemberInfoUpdateOK.jsp" method="post">
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
					<td><input type="text" name="mobile" value="<%=m.getMobile() %>">
				<tr>
					<td>電話:
					<td><input type="text" name="phone" value="<%=m.getPhone() %>">
				<tr>
					<td>地址:
					<td><input type="text" name="address" value="<%=m.getAddress() %>">
				<tr>
					<td align=center colspan=2>
						<input type="submit" value="修改">
			</table>
		</form>
	</div>
	<div class="footer">
	<jsp:include page="../footer.jsp" />
	</div>
</body>
</html>