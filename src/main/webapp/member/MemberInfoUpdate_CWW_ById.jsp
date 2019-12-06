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
String id = request.getParameter("id");
List<Object> mmList = new MemberDao().queryHql("from Member where id='" +id+"'");
Member[] mm = mmList.toArray(new Member[0]);
session.setAttribute("memberUpdate", mm[0]);
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
		<form action="MemberInfoUpdate_CWW_ByIdOK.jsp" method="post">
			<table align=center border=0>
				<tr>
					<td>會員編號<%=id %>的基本資料
				<tr>
					<td>帳號
					<td><%=mm[0].getUser() %>
				<tr>
					<td>密碼
					<td>********
				<tr>
					<td>姓名:
					<td><%=mm[0].getName() %>
				<tr>
					<td>手機:
					<td><input type="text" name="mobile" value="<%=mm[0].getMobile() %>">
				<tr>
					<td>電話:
					<td><input type="text" name="phone" value="<%=mm[0].getPhone() %>">
				<tr>
					<td>地址:
					<td><input type="text" name="address" value="<%=mm[0].getAddress() %>">
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