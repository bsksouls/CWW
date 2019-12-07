<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="model.Member"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>選擇商品</title>
<link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css" />
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
</head>
<%
Member m = (Member) session.getAttribute("member");;
try{
	m.getName();
}catch(NullPointerException e){
	request.getRequestDispatcher("JQLogin.jsp").forward(request,response);
}
%>
<body>
<div data-role="header" data-position="fixed">
		<h1>選擇商品</h1>
	</div>
	
	<div data-role="context">
		<form action="JQPorderConfirm.jsp" method="post">
			<img src="../pic/pro1.jpg"><h1>20元/杯</h1>
				<select name="pro1" data-native-menu="false">
					<option value="0">數量:0</option>
					<option value="1">數量:1</option>
					<option value="2">數量:2</option>
					<option value="3">數量:3</option>
					<option value="4">數量:4</option>
					<option value="5">數量:5</option>
					<option value="6">數量:6</option>
					<option value="7">數量:7</option>
					<option value="8">數量:8</option>
					<option value="9">數量:9</option>
				</select> 
			<img src="../pic/pro2.jpg"><h1>30元/杯</h1>
				<select name="pro2" data-native-menu="false">
					<option value="0">數量:0</option>
					<option value="1">數量:1</option>
					<option value="2">數量:2</option>
					<option value="3">數量:3</option>
					<option value="4">數量:4</option>
					<option value="5">數量:5</option>
					<option value="6">數量:6</option>
					<option value="7">數量:7</option>
					<option value="8">數量:8</option>
					<option value="9">數量:9</option>
				</select> 
			<img src="../pic/pro3.jpg"><h1>40元/杯</h1>
				<select name="pro3" data-native-menu="false">
					<option value="0">數量:0</option>
					<option value="1">數量:1</option>
					<option value="2">數量:2</option>
					<option value="3">數量:3</option>
					<option value="4">數量:4</option>
					<option value="5">數量:5</option>
					<option value="6">數量:6</option>
					<option value="7">數量:7</option>
					<option value="8">數量:8</option>
					<option value="9">數量:9</option>
				</select> 
			<input type="submit" value="送出">
			<input type="reset" value="重置">
		</form>
		<a href="/gjun/JQuery/JQindex.jsp" class="ui-btn">回首頁</a>
	</div>
	
	<div data-role="footer" data-position="fixed">
		<jsp:include page="../footer.jsp" />
	</div>
</body>
</html>