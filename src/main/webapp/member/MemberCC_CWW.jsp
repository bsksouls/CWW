<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="model.Member"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>會員管理</title>
<link rel="stylesheet" href="../CSS/st1.css"></link>
</head>
<%
Member m = (Member) session.getAttribute("member");
%>
<body>
	<div class="header">
	<jsp:include page="../header.jsp" />
	</div>
	<div class="sidebar">
	<jsp:include page="../sidebar_CWW.jsp" />
	</div>
	<div class="main">
	<h2 align=center > <%=m.getName() %>,管理員你好</h2>
		<table align=center border=0>
			<tr>
				<td>
					<a href="MemberInfo_CWW.jsp">會員基本資料查詢</a>
			<tr>
				<td>
					<a href="MemberInfoUpdate_CWW.jsp">會員基本資料修改</a>
			<tr>
				<td>
					<a href="../porder/PorderInfo_CWW.jsp">會員訂單查詢</a>
			<tr>
				<td>
					<a href="../porder/PorderInfoUpdate_CWW.jsp">會員訂單修改</a>
					
		</table>
	</div>
	<div class="footer">
	<jsp:include page="../footer.jsp" />
	</div>
</body>
</html>