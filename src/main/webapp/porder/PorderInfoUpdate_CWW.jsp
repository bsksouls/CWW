<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="model.Member"
    import="model.Porder"
    import="java.util.List"
    import="dao.porder.PorderDao"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>訂單查詢</title>
<link rel="stylesheet" href="../CSS/st1.css"></link>
</head>
<%
Member m = (Member) session.getAttribute("member");
%>
<body>
<body>
	<div class="header">
	<jsp:include page="../header.jsp" />
	</div>
	<div class="sidebar">
	<jsp:include page="../sidebar_CWW.jsp" />
	</div>
	<div class="main" style="overflow:auto">
	<h2 align=center><%=m.getName() %>,管理員你好</h2>
		<form action="PorderInfoUpdate_CWW_ById.jsp" >
		<table align=center border=1>
			<tr>
				<td align=center><a href="PorderInfo_CWW.jsp">查詢訂單編號</a>
			<tr>
				<td>訂單編號輸入<input type="text" name="id">
			<tr>
				<td align=center><input type="submit" value="前往修改">
		</table>
		</form>
	</div>
	<div class="footer">
	<jsp:include page="../footer.jsp" />
	</div>
</body>
</html>