<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="model.Member"
    import="model.Porder" 
    import="dao.porder.PorderDao" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>線上訂餐系統</title>
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
		<h1 align=center><%=m.getName() %>,您已訂購完成!</h1>
		<table align=center border=1>
			<tr>
				<td align=center colspan=3>訂單明細
			<tr>
				<td>紅茶
				<td>20元/杯
				<td>
					<%=pok.getPro1() %>杯
			<tr>
				<td>綠茶
				<td>30元/杯
				<td>
					<%=pok.getPro2() %>杯
			<tr>
				<td>奶茶
				<td>40元/杯
				<td>
					<%=pok.getPro3() %>杯
			<tr>
				<td>總金額
				<td align=right colspan=3><%=pok.getSum() %>元
			<tr>
				<td align=center colspan=3>
				<Input Type="Button" Value="列印" onClick="javascript:print();">
		</table>
		<h3 align=center><a href="Porder.jsp">再次訂購</a></h3>
		<h3 align=center><a href="/gjun/index.jsp">回首頁</a></h3>
	</div>
	<div class="footer">
	<jsp:include page="../footer.jsp" />
	</div>
</body>
</html>