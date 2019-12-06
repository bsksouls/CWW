<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="model.Member"
    import="dao.member.MemberDao"
    import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>會員基本資料</title>
<link rel="stylesheet" href="../CSS/st1.css"></link>
</head>
<%
Member m = (Member) session.getAttribute("member");
List<Object> mmList = new MemberDao().queryHql("from Member");
Member[] mm = mmList.toArray(new Member[0]);
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
		<table align=center border=1>
			<tr>
				<td>會員編號
				<td>姓名
				<td>帳號
				<td>手機
				<td>電話
				<td>地址
			<%
				for(int i = 0;i<mm.length;i++){
					%>
				<tr>
					<td><%=mm[i].getId() %>
					<td><%=mm[i].getName() %>
					<td><%=mm[i].getUser() %>
					<td><%=mm[i].getMobile() %>
					<td><%=mm[i].getPhone() %>
					<td><%=mm[i].getAddress() %>
				<% }
			%>
		</table>
	</div>
	<div class="footer">
	<jsp:include page="../footer.jsp" />
	</div>
</body>
</html>