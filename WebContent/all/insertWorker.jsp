<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"
    import="com.hotel.entity.*"
    import="com.hotel.dao.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>可可</title>
</head>
<body style="background:url(image/s.jpg)">
<%if(session.getAttribute("aid")==null){ 
	response.setHeader("refresh","0;URL=error.jsp");
}%>
<%
request.setCharacterEncoding("utf-8");
 %>
<form action="updateWorker1.jsp" method="post">
<table align="center">
<tr><td>姓名:</td><td><input type="text" name="name" placeholder="请输入名字"  required=""></td></tr><br>
<tr><td> 性别:</td><td><input type="radio" name="sex">男<input type="radio" name="sex" value="female">女</td></tr>
<tr><td> 年龄:</td><td><input type="text" name="age"placeholder="请输入年龄"  required="" required="" class="form-control match-rotation-input"
       maxlength="8"
       onkeyup="value=value.replace(/[^\d]/g,'')"   
       onblur="value=value.replace(/[^\d]/g,'')"
       ng-model="schedule.round"
       placeholder="请输入数字"></td></tr>
<tr><td> 职位:</td><td><select name="job"><option value="cleaner">保洁员</option><option value="waiter">服务员</option>
<option value="manager">经理</option></select></td></tr><br>
<tr><td> 绩效:</td><td><input type="text" name="performance" placeholder="请输入绩效"  required="" required="" class="form-control match-rotation-input"
       maxlength="8"
       onkeyup="value=value.replace(/[^\d]/g,'')"   
       onblur="value=value.replace(/[^\d]/g,'')"
       ng-model="schedule.round"
       placeholder="请输入数字"></td></tr><br>
<tr><td><input type="submit" value="提交注册"></td><br></tr>
</table> 
</form>
</body>
</html>