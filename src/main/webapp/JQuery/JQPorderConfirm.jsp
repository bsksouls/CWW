<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>�q��ƶq�T�{</title>
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
		<h1>��ܰӫ~</h1>
	</div>
	
	<div data-role="context">
		<form action="JQPorderOK" method="post">
			<table>
				<tr>
					<td>
						<img src="../pic/pro1.jpg">
					<td>
						<%=pro1%> �M
				<tr>
					<td>
						<img src="../pic/pro2.jpg">
					<td>
						<%=pro2%> �M
				<tr>
					<td>
						<img src="../pic/pro3.jpg">
					<td>
						<%=pro3%> �M				 
			</table>	
			<input type="submit" value="�T�{�q��">
		</form>
	</div>
	
	<div data-role="footer" data-position="fixed">
		<h4>JQuery mobile</h4>
	</div>
</body>
</html>