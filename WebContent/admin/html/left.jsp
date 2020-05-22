<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.hotel.entity.User"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="../css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../js/jquery-1.4.1.min.js"></script>
<script type="text/javascript"
	src="../js/simpla.jquery.configuration.js"></script>
</head>
<%
	User pwd = (User) session.getAttribute("pwd");
%>
<body>
	<div id="sidebar">
		<div id="sidebar-wrapper">
			<div id="profile-links" class="mypng">
				<img src="../images/logo.png" /> 您好, <a href="#"
					title="Edit your profile"><%=pwd.getUserid()%></a>, <a
					href="xs.jsp" target="mainFrame">我的桌面</a><br /> <br /> <a
					href="<%=request.getContextPath()%>/index.jsp" title="官网首页"
					target="blank">查看网站</a> | <a href="../login.jsp" title="Sign Out"
					target="_top">退出登陆</a>
			</div>

			<ul id="main-nav">
				<li><a href="#" class="nav-top-item ">用户管理</a>
					<ul>
						<li><a href="user_add.jsp" target="mainFrame">添加用户信息</a></li>
						<li><a href="<%=request.getContextPath()%>/UserListServlet"
							target="mainFrame">用户信息列表</a></li>
					</ul></li>
				<li><a href="#" class="nav-top-item">客房管理</a>
					<ul>
						<li><a href="roominfo_add.jsp" target="mainFrame">添加客房信息</a></li>
						<li><a
							href="<%=request.getContextPath()%>/RoomInfoListServlet"
							target="mainFrame">客房信息列表</a></li>

					</ul></li>
				<li><a href="#" class="nav-top-item">客房类别管理</a>
					<ul>
						<li><a href="roomtype_add.jsp" target="mainFrame">添加客房类别</a></li>
						<li><a
							href="<%=request.getContextPath()%>/RoomTypeListServlet"
							target="mainFrame">客房类别列表</a></li>
					</ul></li>
				<li><a href="#" class="nav-top-item">客户信息管理</a>
					<ul>
						<li><a href="customer_add.jsp" target="mainFrame">添加客户信息</a></li>
						<li><a
							href="<%=request.getContextPath()%>/CustomerListServlet"
							target="mainFrame">客户信息列表</a></li>
					</ul></li>


			</ul>

			<div id="messages" style="display: none">

				<h3>3 Messages</h3>
				<p>
					<strong>17th May 2009</strong> by Admin<br /> Lorem ipsum dolor
					sit amet, consectetur adipiscing elit. Vivamus magna. Cras in mi at
					felis aliquet congue. <small><a href="#"
						class="remove-link" title="Remove message">Remove</a></small>
				</p>
				<p>
					<strong>2nd May 2009</strong> by Jane Doe<br /> Ut a est eget
					ligula molestie gravida. Curabitur massa. Donec eleifend, libero at
					sagittis mollis, tellus est malesuada tellus, at luctus turpis elit
					sit amet quam. Vivamus pretium ornare est. <small><a
						href="#" class="remove-link" title="Remove message">Remove</a></small>
				</p>

				<p>
					<strong>25th April 2009</strong> by Admin<br /> Lorem ipsum dolor
					sit amet, consectetur adipiscing elit. Vivamus magna. Cras in mi at
					felis aliquet congue. <small><a href="#"
						class="remove-link" title="Remove message">Remove</a></small>
				</p>

				<form action="#" method="post">

					<h4>New Message</h4>

					<fieldset>
						<textarea class="textarea" name="textfield" cols="79" rows="5"></textarea>
					</fieldset>

					<fieldset>

						<select name="dropdown" class="small-input">
							<option value="option1">Send to...</option>
							<option value="option2">Everyone</option>
							<option value="option3">Admin</option>
							<option value="option4">Jane Doe</option>
						</select> <input class="button" type="submit" value="Send" />
					</fieldset>
				</form>
			</div>
		</div>
	</div>
</body>
</html>
