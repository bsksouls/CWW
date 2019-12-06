<%@ page language="java" contentType="text/html; charset=BIG5"
	pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>線上訂餐系統</title>
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
				帳號: <input type="text" name="user"><P>
				密碼: <input type="password" name="password"><P>
					<input type="submit" value="登入"><P>
			</form>
	</div>
	<div class="footer">
	<jsp:include page="../footer.jsp" />
	</div>

</body>
</html>