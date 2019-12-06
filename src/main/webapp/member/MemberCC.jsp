<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="model.Member"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>會員管理</title>
<link rel="stylesheet" href="../CSS/st1.css"></link>
</head>
<%
Member m = (Member) session.getAttribute("member");
try{
	m.getName();
}catch(NullPointerException e){
	request.getRequestDispatcher("../member/Login.jsp").forward(request,response);
}
%>
<body>
	<div class="header">
	<jsp:include page="../header.jsp" />
	</div>
	<div class="sidebar">
	<jsp:include page="../sidebar.jsp" />
	</div>
	<div class="main">
	<h2 align=center><%=m.getName() %>,你好</h2>
		<table align=center border=0>
			<tr>
				<td>
					<a href="../porder/Porder.jsp">前往購物</a>
			<tr>
				<td>
					<a href="/gjun/member/MemberInfo.jsp">個人基本資料查詢</a>
			<tr>
				<td>
					<a href="/gjun/member/MemberInfoUpdate.jsp">個人基本資料修改</a>
			<tr>
				<td>
					<a href="../porder/PorderInfo.jsp">個人訂單查詢</a>
		</table>
	</div>
	<div class="footer">
	<jsp:include page="../footer.jsp" />
	</div>
</body>
</html>