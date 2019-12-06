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
	<div class="main" align=center>
		<h1>帳號密碼錯誤!</h1>
		請<a href="Login.jsp">重新登入</a>
		或<a href="AddMember.jsp">註冊新會員</a>
	</div>
	<div class="footer">
	<jsp:include page="../footer.jsp" />
	</div>

</body>
</html>