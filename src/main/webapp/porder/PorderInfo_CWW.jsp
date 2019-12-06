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
List<Object> ll = new PorderDao().queryHql("from Porder");
Porder[] pp = ll.toArray(new Porder[0]);
%>
<body>
<body>
	<div class="header">
	<jsp:include page="../header.jsp" />
	</div>
	<div class="sidebar">
	<jsp:include page="../sidebar_CWW.jsp" />
	</div>
	<div class="main" style="overflow: auto">
	<h2 align=center><%=m.getName() %>,管理員你好</h2>
		<form action="PorderInfo_CWW_ByUser.jsp" >
		<table align=center border=1>
			<tr>
				<td align=center><a href="PorderInfo_CWW_All.jsp">顯示所有訂單</a>
			<tr>
				<td><input type="text" name="name"><input type="submit" value="會員名稱查詢">
		</table>
		</form>
	</div>
	<div class="footer">
	<jsp:include page="../footer.jsp" />
	</div>
</body>
</html>