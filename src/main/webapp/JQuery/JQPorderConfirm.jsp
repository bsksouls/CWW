<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
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
	String pro1 = request.getParameter("pro1");
	String pro2 = request.getParameter("pro2");
	String pro3 = request.getParameter("pro3");
%>
	<div data-role="header" data-position="fixed">
		<h1>選擇商品</h1>
	</div>
	
	<div data-role="context">
		<form action="JQPorderOK" method="post">
			<table>
				<tr>
					<td>
						<img src="../pic/pro1.jpg">
					<td>
						<%=pro1%> 杯
				<tr>
					<td>
						<img src="../pic/pro2.jpg">
					<td>
						<%=pro2%> 杯
				<tr>
					<td>
						<img src="../pic/pro3.jpg">
					<td>
						<%=pro3%> 杯				 
			</table>	
			<input type="submit" value="確認訂單">
		</form>
	</div>
	
	<div data-role="footer" data-position="fixed">
		<h4>JQuery mobile</h4>
	</div>
</body>
</html>