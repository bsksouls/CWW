<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="model.Member"
    import="model.Porder"
    import="java.util.List"
    import="dao.porder.PorderDao"%>
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
List<Object> ll = new PorderDao().queryHql("from Porder where id='" +id+"'");
Porder[] pp = ll.toArray(new Porder[0]);
session.setAttribute("porder", pp[0]);
%>
<body>
	<div class="header">
	<jsp:include page="../header.jsp" />
	</div>
	<div class="sidebar">
	<jsp:include page="../sidebar_CWW.jsp" />
	</div>
	<div class="main">
	<h2 align=center><%=m.getName() %>,管理員你好</h2>
		<form action="PorderInfoUpdate_CWW_ByIdOK.jsp" method="post">
			<table align=center border=0>
				<tr>
					<td>訂單資料
				<tr>
					<td>訂購人:
					<td><%=pp[0].getName() %>
				<tr>
					<td>紅茶:
					<td><input type="text" name="pro1" value="<%=pp[0].getPro1() %>">
				<tr>
					<td>綠茶:
					<td><input type="text" name="pro2" value="<%=pp[0].getPro2() %>">
				<tr>
					<td>奶茶:
					<td><input type="text" name="pro3" value="<%=pp[0].getPro3() %>">
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