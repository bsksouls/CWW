<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="model.Member"
    import="model.Porder" 
    import="dao.porder.PorderDao" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>�u�W�q�\�t��</title>
<link rel="stylesheet" href="../CSS/st1.css"></link>
</head>
<%
Member m = (Member) session.getAttribute("member");
Porder pok = (Porder)session.getAttribute("porder");
new PorderDao().add(pok);
%>
<body>
	<div class="header">
	<jsp:include page="../header.jsp" />
	</div>
	<div class="sidebar">
	<jsp:include page="../sidebar.jsp" />
	</div>
	<div class="main">
		<h1 align=center><%=m.getName() %>,�z�w�q�ʧ���!</h1>
		<table align=center border=1>
			<tr>
				<td align=center colspan=3>�q�����
			<tr>
				<td>����
				<td>20��/�M
				<td>
					<%=pok.getPro1() %>�M
			<tr>
				<td>���
				<td>30��/�M
				<td>
					<%=pok.getPro2() %>�M
			<tr>
				<td>����
				<td>40��/�M
				<td>
					<%=pok.getPro3() %>�M
			<tr>
				<td>�`���B
				<td align=right colspan=3><%=pok.getSum() %>��
			<tr>
				<td align=center colspan=3>
				<Input Type="Button" Value="�C�L" onClick="javascript:print();">
		</table>
		<h3 align=center><a href="Porder.jsp">�A���q��</a></h3>
		<h3 align=center><a href="/gjun/index.jsp">�^����</a></h3>
	</div>
	<div class="footer">
	<jsp:include page="../footer.jsp" />
	</div>
</body>
</html>