<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>會員註冊</title>
<link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css" />
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
</head>
<body>
	<div data-role="header" data-position="fixed">
		<h1>會員註冊</h1>
	</div>
	
	<div data-role="context">
		<form action="JQAddMember" method="post">
			帳號:<input type="text" name="user">
			密碼:<input type="password" name="password">
			姓名:<input type="text" name="name">
			手機:<input type="text" name="mobile">
			電話:<input type="text" name="phone">
			地址:<input type="text" name="address">
			<input type="submit" value="註冊">
		</form>
	</div>
	
	<div data-role="footer" data-position="fixed">
		<jsp:include page="../footer.jsp" />
	</div>
</body>
</html>