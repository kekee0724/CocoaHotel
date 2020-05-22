<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>可可</title>
</head>
<body style="background:url(image/s.jpg)">
<h2>未入住，请前台入住</h2>
<%response.setHeader("refresh", "2;URL=login.jsp"); %>
</body>
</html>