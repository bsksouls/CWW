<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="model.Member"
    import="model.Porder"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>�u�W�q�\�t��</title>
<link rel="stylesheet" href="../CSS/st1.css"></link>
</head>
<%
Member m = (Member) session.getAttribute("member");
Porder p = new Porder();
p.setName(m.getName());
Integer pro1 = Integer.parseInt(request.getParameter("pro1"));
Integer pro2 = Integer.parseInt(request.getParameter("pro2"));
Integer pro3 = Integer.parseInt(request.getParameter("pro3"));
p.setPro1(pro1);
p.setPro2(pro2);
p.setPro3(pro3);
Integer sum = p.getSum();
session.setAttribute("porder", p);
%>
<body>
	<div class="header">
	<jsp:include page="../header.jsp" />
	</div>
	<div class="sidebar">
	<jsp:include page="../sidebar.jsp" />
	</div>
	<div class="main">
		<form action="PorderOK.jsp" method="post">
		<table align=center border=0>
			<tr>
				<td align=center colspan=3><h1>�T�{�q��</h1>
			<tr>
				<td><img src="../pic/pro1.jpg">
				<td>20��/�M
				<td>
					<%=p.getPro1() %>�M
			<tr>
				<td><img src="../pic/pro2.jpg">
				<td>30��/�M
				<td>
					<%=p.getPro2() %>�M
			<tr>
				<td><img src="../pic/pro3.jpg">
				<td>40��/�M
				<td>
					<%=p.getPro3() %>�M
			<tr>
				<td>�`���B
				<td align=right colspan=3><%=p.getSum() %>��
			<tr>
				<td align=center><input type="button" onClick="javascript:history.back(1)" value="�ק�q��" />
				<td align=center colspan=2><input type="submit" value="�e�X�q��">
		</table>
	</form>
	</div>
	<div class="footer">
	<jsp:include page="../footer.jsp" />
	</div>
</body>
</html>