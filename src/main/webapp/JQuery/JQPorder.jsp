<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="model.Member"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>��ܰӫ~</title>
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
		<h1>��ܰӫ~</h1>
	</div>
	
	<div data-role="context">
		<form action="JQPorderConfirm.jsp" method="post">
			<img src="../pic/pro1.jpg"><h1>20��/�M</h1>
				<select name="pro1" data-native-menu="false">
					<option value="0">�ƶq:0</option>
					<option value="1">�ƶq:1</option>
					<option value="2">�ƶq:2</option>
					<option value="3">�ƶq:3</option>
					<option value="4">�ƶq:4</option>
					<option value="5">�ƶq:5</option>
					<option value="6">�ƶq:6</option>
					<option value="7">�ƶq:7</option>
					<option value="8">�ƶq:8</option>
					<option value="9">�ƶq:9</option>
				</select> 
			<img src="../pic/pro2.jpg"><h1>30��/�M</h1>
				<select name="pro2" data-native-menu="false">
					<option value="0">�ƶq:0</option>
					<option value="1">�ƶq:1</option>
					<option value="2">�ƶq:2</option>
					<option value="3">�ƶq:3</option>
					<option value="4">�ƶq:4</option>
					<option value="5">�ƶq:5</option>
					<option value="6">�ƶq:6</option>
					<option value="7">�ƶq:7</option>
					<option value="8">�ƶq:8</option>
					<option value="9">�ƶq:9</option>
				</select> 
			<img src="../pic/pro3.jpg"><h1>40��/�M</h1>
				<select name="pro3" data-native-menu="false">
					<option value="0">�ƶq:0</option>
					<option value="1">�ƶq:1</option>
					<option value="2">�ƶq:2</option>
					<option value="3">�ƶq:3</option>
					<option value="4">�ƶq:4</option>
					<option value="5">�ƶq:5</option>
					<option value="6">�ƶq:6</option>
					<option value="7">�ƶq:7</option>
					<option value="8">�ƶq:8</option>
					<option value="9">�ƶq:9</option>
				</select> 
			<input type="submit" value="�e�X">
			<input type="reset" value="���m">
		</form>
		<a href="/gjun/JQuery/JQindex.jsp" class="ui-btn">�^����</a>
	</div>
	
	<div data-role="footer" data-position="fixed">
		<jsp:include page="../footer.jsp" />
	</div>
</body>
</html>