<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>可可</title>
</head>
<body style="background:url(image/s.jpg)">
<form action="register1.jsp">
<table align="center">
<tr><td>id:</td><td><input type="text" name="id"required="" class="form-control match-rotation-input"
       maxlength="8"
       onkeyup="value=value.replace(/[^\d]/g,'')"   
       onblur="value=value.replace(/[^\d]/g,'')"
       ng-model="schedule.round"
       placeholder="请输入数字"></td></tr><br>
<tr><td>姓名:</td><td><input type="text" name="userName" required=""></td></tr><br>
<tr><td> 密码:</td><td><input type="text" name="password" required=""></td></tr>
<tr><td> 用户电话:</td><td><input type="text" name="phonenumber" required="" class="form-control match-rotation-input"
       maxlength="8"
       onkeyup="value=value.replace(/[^\d]/g,'')"   
       onblur="value=value.replace(/[^\d]/g,'')"
       ng-model="schedule.round"
       placeholder="请输入数字"
       ></td></tr>
<tr><td><input type="submit" value="提交注册"></td><td><input type="reset" value="重置"></td></tr>
</table> 
</form>
</body>
</html>