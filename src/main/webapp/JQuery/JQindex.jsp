<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>�ʪ�����</title>
<link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css" />
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
</head>
<body>
	<div data-role="header" data-position="fixed">
		<h1>�ʪ�����</h1>
	</div>
	
	<div data-role="context">
		<a href="JQLogin.jsp" class="ui-btn">�n�J</a>
		<a href="JQAddMember.jsp" class="ui-btn">���U</a>
		<a href="JQPorder.jsp" class="ui-btn">�ʪ�</a>
	</div>
	
	<div data-role="footer" data-position="fixed">
		<jsp:include page="../footer.jsp" />
	</div>
</body>
</html>