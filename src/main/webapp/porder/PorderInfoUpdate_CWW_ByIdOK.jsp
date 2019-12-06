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
Porder p = (Porder) session.getAttribute("porder");
p.setPro1(Integer.parseInt(request.getParameter("pro1")));
p.setPro2(Integer.parseInt(request.getParameter("pro2")));
p.setPro3(Integer.parseInt(request.getParameter("pro3")));
p.getSum();
new PorderDao().update(p.getId(), p);
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
					<td>訂單資料修改如下
				<tr>
					<td>訂購人:
					<td><%=p.getName() %>
				<tr>
					<td>紅茶:
					<td><%=p.getPro1() %>	杯
				<tr>
					<td>綠茶:
					<td><%=p.getPro2() %>	杯
				<tr>
					<td>奶茶:
					<td><%=p.getPro3() %>	杯
				<tr>
					<td>總金額:
					<td><%=p.getSum() %>	元
			</table>
		</form>
	</div>
	<div class="footer">
	<jsp:include page="../footer.jsp" />
	</div>
</body>
</html>