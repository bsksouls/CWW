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
		<table align="center" border="0">
			<tr>
				<td>
					註冊失敗!帳號重複!
			<tr>
				<td>
					<a href="AddMember.jsp">重新註冊</a>
		</table>
	</div>
	<div class="footer">
	<jsp:include page="../footer.jsp" />
	</div>
</body>
</html>