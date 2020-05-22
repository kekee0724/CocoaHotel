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
<form action="insertRoom1.jsp" method="post">
<table align="center">
<tr><td>房间号:</td><td><input type="text" name="roomNumber" required="" class="form-control match-rotation-input"
       maxlength="8"
       onkeyup="value=value.replace(/[^\d]/g,'')"   
       onblur="value=value.replace(/[^\d]/g,'')"
       ng-model="schedule.round"
       placeholder="请输入数字"></td></tr><br>
<tr><td>房间类型:</td><td><input type="radio" name="roomType" value="single">单人间<input type="radio" name="roomType" value="double">双人间
<input type="radio" name="roomType" value="deluxe">豪华间</td></tr>
<tr><td>一般价:</td><td><input type="text" name="normalPrice" required="" class="form-control match-rotation-input"
       maxlength="8"
       onkeyup="value=value.replace(/[^\d]/g,'')"   
       onblur="value=value.replace(/[^\d]/g,'')"
       ng-model="schedule.round"
       placeholder="请输入数字"></td></tr><br>
<tr><td>会员价:</td><td><input type="text" name="memberPrice" required="" class="form-control match-rotation-input"
       maxlength="8"
       onkeyup="value=value.replace(/[^\d]/g,'')"   
       onblur="value=value.replace(/[^\d]/g,'')"
       ng-model="schedule.round"
       placeholder="请输入数字"></td></tr><br>
<tr><td><input type="submit" value="提交添加"></td><br></tr>
</table> 

</form>
</body>
</html>