<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>可可</title>
</head>
<%if(session.getAttribute("uid")==null){
	response.setHeader("refresh","0;URL=error.jsp");
}
request.setCharacterEncoding("utf-8");
%>

<body style="background:url(image/s.jpg)">
<form action="selectRoomBySelf.jsp" method="post">
<table align="center">
<tr><td>电话号码</td><td><input type="text" name="phonenumber" class="form-control match-rotation-input"
       maxlength="15"
       onkeyup="value=value.replace(/[^\d]/g,'')"   
       onblur="value=value.replace(/[^\d]/g,'')"
       ng-model="schedule.round"
       placeholder="请输入数字" required=""></td>
<tr><td>选择房间类型</td><td><select name="roomType">
<option value="single">单人间</option>
<option value="double">双人间</option>
<option value="deluxe">豪华间</option>
</select></td>
<tr><td><input type="submit" value="下一步"></td></tr>
</table>
</form>

</body>
</html>