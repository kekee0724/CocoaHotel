<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" import="com.hotel.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>新增房源</title>
</head>
<body style="background: url(m.jpg)">
	<%
		request.setCharacterEncoding("utf-8");
		String a = roomDao.insertRoom(request, response);
	%>
	<h2><%=a%></h2>

</body>
</html>