<%@ page language="java" contentType="text/html; charset=BIG5"
	pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>�u�W�q�\�t��</title>
<link rel="stylesheet" href="../CSS/st1.css"></link>
</head>
<body>
	<div class="header">
	<jsp:include page="../header.jsp" />
	</div>
	<div class="sidebar">
	<jsp:include page="../sidebar.jsp" />
	</div>
	<div class="main">
			<form action="Login" method="post" align=center>
				�b��: <input type="text" name="user"><P>
				�K�X: <input type="password" name="password"><P>
					<input type="submit" value="�n�J"><P>
			</form>
	</div>
	<div class="footer">
	<jsp:include page="../footer.jsp" />
	</div>

</body>
</html>