<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>�|���n�J</title>
<link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css" />
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
</head>
<body>
	<div data-role="header" data-position="fixed">
		<h1>�|���n�J</h1>
	</div>
	
	<div data-role="context">
		<form action="JQLogin" method="post">
			�b��:<input type="text" name="user">
			�K�X:<input type="password" name="password">
			<input type="submit" value="�e�X">
		</form>
	</div>
	
	<div data-role="footer" data-position="fixed">
		<h4>JQuery mobile</h4>
	</div>
</body>
</html>