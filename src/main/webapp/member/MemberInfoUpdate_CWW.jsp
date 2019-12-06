<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="model.Member"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>會員基本資料更新</title>
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
	<div class="main" style="overflow: auto">
	<h2 align=center><%=m.getName() %>,管理員你好</h2>
		<form action="MemberInfoUpdate_CWW_ById.jsp" >
		<table align=center border=1>
			<tr>
				<td align=center><a href="MemberInfo_CWW.jsp">顯示所有會員</a>
			<tr>
				<td>會員編號輸入<input type="text" name="id">
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