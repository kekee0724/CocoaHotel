<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>可可</title>
</head>
<%request.setCharacterEncoding("utf-8"); %>
<body style="background:url(image/s.jpg)">
<h1 align="center">可可酒店</h1>
<div align="center">
<form action="login1.jsp" method="post">
<table>
<tr><td>用户id</td><td><input type="text" name=id required=""></td></tr>
<tr><td>密码</td><td><input type="password" name="password" required=""></td></tr>
</table>
<input type="radio" name="type" value="administrator">管理员&nbsp&nbsp&nbsp<input type="radio" name="type" value="user">用户<br>
&nbsp<input type="submit" value="登陆">&nbsp&nbsp&nbsp&nbsp<input type="reset" value="重置">
</form>
</div>
<div align="center"><a href="register.jsp">没有账户？点此注册</a></div>
</body>
</html>