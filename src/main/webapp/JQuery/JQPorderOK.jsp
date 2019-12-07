<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="model.Member"
    import="model.Porder" 
    import="dao.porder.PorderDao"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>訂單數量確認</title>
<link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css" />
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
<style>
th {
    border-bottom: 1px solid #d6d6d6;
}

tr:nth-child(even) {
    background: #e9e9e9;
}
</style>
</head>
<body>
<%
Member m = (Member) session.getAttribute("member");
Porder pok = (Porder)session.getAttribute("porder");
new PorderDao().add(pok);
%>
	<div data-role="header" data-position="fixed">
		<h1>選擇商品</h1>
	</div>
	<div data-role="context">
			<table>
				<tr>
					<td>
						<img src="../pic/pro1.jpg">
					<td>
						<%=pok.getPro1() %> 杯
				<tr>
					<td>
						<img src="../pic/pro2.jpg">
					<td>
						<%=pok.getPro2() %> 杯
				<tr>
					<td>
						<img src="../pic/pro3.jpg">
					<td>
						<%=pok.getPro3() %> 杯	
				<tr>
					<td>總金額						
					<td>
						<%=pok.getSum() %> 元					 
			</table>	
			<a href="/gjun/JQuery/JQindex.jsp" class="ui-btn">回首頁</a>
	</div>
	
	<div data-role="footer" data-position="fixed">
		<jsp:include page="../footer.jsp" />
	</div>
</body>
</html>