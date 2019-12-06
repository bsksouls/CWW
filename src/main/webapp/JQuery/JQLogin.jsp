<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>會員登入</title>
<link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css" />
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
</head>
<body>
	<div data-role="header" data-position="fixed">
		<h1>會員登入</h1>
	</div>
	
	<div data-role="context">
		<form action="JQLogin" method="post">
			帳號:<input type="text" name="user">
			密碼:<input type="password" name="password">
			<input type="submit" value="送出">
		</form>
	</div>
	
	<div data-role="footer" data-position="fixed">
		<h4>JQuery mobile</h4>
	</div>
</body>
</html>