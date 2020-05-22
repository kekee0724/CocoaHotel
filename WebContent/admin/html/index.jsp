<%@page import="com.hotel.entity.User"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>可可酒店管理-后台</title>
<link rel="icon"
	href="C:/Users/lenovo/Workspaces/MyEclipse 10/lkhotel/WebRoot/img2/timg-.ico"
	type="image/x-icon" />
<link rel="shortcut icon"
	href="C:/Users/lenovo/Workspaces/MyEclipse 10/lkhotel/WebRoot/img2/timg-.ico"
	type="image/x-icon" />



</head>
<%
	User pwd = (User) session.getAttribute("pwd");
	if (null == pwd) {
		response.sendRedirect(request.getContextPath() + "/admin/login.jsp");
	}
%>
<frameset cols="180px,*" frameborder="no" border="0" framespacing="0"
	name="allFrames"> <frame src="left.jsp" name="leftFrame"
	scrolling="no" noresize="noresize" id="leftFrame" title="leftFrame" />
<frameset rows="37px,*,28px" frameborder="no" border="0"
	framespacing="0"> <frame src="top.jsp" name="topFrame"
	id="topFrame" title="topFrame" /> <frame src="main.jsp"
	name="mainFrame" id="mainFrame" title="mainFrame" /> <frame
	src="foot.jsp" name="footFrame" id="footFrame" title="footFrame"
	scrolling="no" /> </frameset> </frameset>
<noframes></noframes>
</html>
