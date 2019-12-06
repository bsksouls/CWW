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
<title>訂單查詢</title>
<link rel="stylesheet" href="../CSS/st1.css"></link>
</head>
<%
Member m = (Member) session.getAttribute("member");
List<Object> ll = new PorderDao().queryHql("from Porder where name='" + m.getName()+"'");
Porder[] pp = ll.toArray(new Porder[0]);
%>
<body>
<body>
	<div class="header">
	<jsp:include page="../header.jsp" />
	</div>
	<div class="sidebar">
	<jsp:include page="../sidebar.jsp" />
	</div>
	<div class="main" style="overflow:auto">
	<h2 align=center><%=m.getName() %>,個人訂單</h2>
		<table align=center border=1>
			<tr>
				<td>訂單編號
				<td>訂購人
				<td>紅茶(杯)
				<td>綠茶(杯)
				<td>奶茶(杯)
				<td>總金額(元)
			<%
				for(int i = 0;i<pp.length;i++){
					%>
				<tr>
					<td><%=pp[i].getId() %>
					<td><%=pp[i].getName() %>
					<td><%=pp[i].getPro1() %>
					<td><%=pp[i].getPro2() %>
					<td><%=pp[i].getPro3() %>
					<td><%=pp[i].getSum() %>
				<% }
			%>
		</table>
	</div>
	<div class="footer">
	<jsp:include page="../footer.jsp" />
	</div>
</body>
</html>