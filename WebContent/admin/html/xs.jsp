<%@page import="com.hotel.entity.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>可可酒店管理系统</title>
</head>
<style type="text/css">
body {
	color: #FFF;
	font-size: 14px;
	font-family: "微软雅黑";
}

font {
	color: #FFF;
}

.wap {
	position: relative;
	height: 450px;
	width: 910px;
	margin: 0 auto;
}

.block1 {
	width: 265px;
	height: 287px;
	background: #09619F;
}

.block1 img {
	position: absolute;
	top: 92px;
	left: 28px;
}

.block1tex {
	position: absolute;
	top: 169px;
	left: 33px;
}

.block1text {
	position: absolute;
	top: 120px;
	left: 135px;
	width: 150px;
	height: 73px;
	line-height: 21px;
}

.block1pc {
	background: #2271A9;
	position: absolute;
	width: 90px;
	height: 117px;
	left: 141px;
	top: 31px;
}

.block1pc img {
	position: absolute;
	width: 90px;
	height: 117px;
	left: 0;
	top: 0;
}

.block2 {
	position: absolute;
	width: 153px;
	height: 287px;
	background: #4FB5C7;
	left: 270px;
	top: 0px;
}

.block2 img {
	position: absolute;
	top: 92px;
	left: 43px;
}

.block2tex {
	position: absolute;
	top: 164px;
	left: 48px;
}

.block3 {
	position: absolute;
	width: 173px;
	height: 141px;
	background: #1978D8;
	left: 428px;
	top: 0px;
}

.block3 img {
	position: absolute;
	top: 29px;
	left: 38px;
}

.block3tex {
	position: absolute;
	top: 91px;
	left: 58px;
}

.block4 {
	position: absolute;
	width: 173px;
	height: 141px;
	background: #90A8E3;
	left: 428px;
	top: 146px;
}

.block4 img {
	position: absolute;
	top: 21px;
	left: 48px;
}

.block4tex {
	position: absolute;
	top: 91px;
	left: 57px;
}

.block5 {
	position: absolute;
	width: 304px;
	height: 141px;
	background: #DB6987;
	right: 0px;
	top: 0px;
}

.block5 img {
	position: absolute;
	top: 28px;
	left: 21px;
}

.block5tex {
	position: absolute;
	top: 96px;
	left: 35px;
}

.block5text {
	line-height: 21px;
	position: absolute;
	top: 30px;
	left: 112px;
	width: 172px;
	height: 87px;
}

.block6 {
	position: absolute;
	width: 304px;
	height: 141px;
	background: #8E7AAA;
	right: 0px;
	top: 146px;
}

.block6 img {
	position: absolute;
	top: 12px;
	left: 21px;
}

.block6tex {
	position: absolute;
	top: 96px;
	left: 35px;
}

.block6text {
	line-height: 21px;
	position: absolute;
	top: 30px;
	left: 112px;
	width: 172px;
	height: 87px;
}

.block7 {
	position: absolute;
	width: 130px;
	height: 138px;
	background: #187D9A;
	top: 292px;
}

.block7 img {
	position: absolute;
	top: 26px;
	left: 30px;
}

.block7tex {
	position: absolute;
	top: 94px;
	left: 36px;
}

.block8 {
	position: absolute;
	width: 130px;
	height: 138px;
	background: #A0CF41;
	left: 135px;
	top: 292px;
}

.block8 img {
	position: absolute;
	top: 26px;
	left: 30px;
}

.block8tex {
	position: absolute;
	top: 94px;
	left: 35px;
}

.block9 {
	position: absolute;
	width: 153px;
	height: 138px;
	background: #EAAF76;
	left: 270px;
	top: 292px;
}

.block9 img {
	position: absolute;
	top: 26px;
	left: 41px;
}

.block9tex {
	position: absolute;
	top: 94px;
	left: 46px;
}

.block10 {
	position: absolute;
	width: 173px;
	height: 138px;
	background: #88BAD9;
	left: 428px;
	top: 292px;
}

.block10 img {
	position: absolute;
	top: 22px;
	left: 51px;
}

.block10tex {
	position: absolute;
	top: 94px;
	left: 53px;
}

.block11 {
	position: absolute;
	width: 149px;
	height: 138px;
	background: #B69CCC;
	left: 606px;
	top: 292px;
}

.block11 img {
	position: absolute;
	top: 19px;
	left: 45px;
}

.block11tex {
	position: absolute;
	top: 94px;
	left: 47px;
}

.block12 {
	position: absolute;
	width: 149px;
	height: 138px;
	background: #09619F;
	right: 0px;
	top: 292px;
}

.block12 img {
	position: absolute;
	top: 26px;
	left: 45px;
}

.block12tex {
	position: absolute;
	top: 94px;
	left: 46px;
}

a {
	color: #FFFFFF;
}

.block1app {
	background: #2271A9;
	position: absolute;
	width: 80px;
	height: 80px;
	left: 28px;
	top: 192px;
}

.block1app img {
	position: absolute;
	width: 80px;
	height: 80px;
	left: 0;
	top: 0;
}
</style>



<body>
	<%
		User pwd = (User) session.getAttribute("pwd");
		if (null == pwd) {
			response.sendRedirect(request.getContextPath() + "/admin/login.jsp");
		}
	%>
	<!-- 学生 -->
	<div class="wap">
		<div class="block1">
			<div>
				<img src="assets/img/tp1.png" width="72" height="64" />
			</div>
			<div class="block1tex">个人信息</div>
			<div class="block1text">
				${user} | <a href="#" target="mainFrame">我的桌面</a><br /> <br /> <a
					href="<%=request.getContextPath()%>/index.jsp" title="官网首页"
					target="blank">查看网站</a> | <a href="../login.jsp" title="Sign Out"
					target="_top">退出登陆</a>
			</div>
			<div class="block1app">
				<img src="assets/img/app.png" />
			</div>
		</div>


		<a href="<%=request.getContextPath()%>/CustomerListServlet"
			target="mainFrame">
			<div class="block2">
				<div>
					<img src="assets/img/tp2.png" width="65" height="65" />
				</div>
				<div class="block2tex">客户信息管理</div>
			</div>
		</a> <a href="<%=request.getContextPath()%>/image/roomInfo.jsp"
			target="mainFrame">
			<div class="block3">
				<div>
					<img src="assets/img/tp3.png" width="92" height="55" />
				</div>
				<div class="block3tex">房间信息管理</div>
			</div>
		</a> <a href="<%=request.getContextPath()%>/image/insertRoom.jsp"
			target="mainFrame">
			<div class="block4">
				<div>
					<img src="assets/img/tp4.png" width="71" height="62" />
				</div>
				<div class="block4tex">新增房源</div>
			</div>
		</a> <a href="<%=request.getContextPath()%>/UserListServlet"
			title="Sign Out" target="mainFrame">>
			<div class="block5">
				<div>
					<img src="assets/img/tp5.png" width="80" height="57" />
				</div>
				<div class="block5tex">用户信息管理</div>
				<div class="block5text" id="grxx"></div>
			</div>
		</a> <a href="user_add.jsp" target="mainFrame">
			<div class="block6">
				<div>
					<img src="assets/img/tp6.png" width="67" height="79" />
				</div>
				<div class="block6tex">添加用户信息</div>
				<div class="block6text" id="ggtz"></div>
			</div>
		</a> <a href="index.jsp">
			<div class="block7">
				<div>
					<img src="assets/img/tp7.png" width="66" height="59" />
				</div>
				<div class="block7tex">旧版桌面</div>
			</div>
		</a> <a href="customer_add.jsp" target="mainFrame">
			<div class="block8">
				<div>
					<img src="assets/img/tp8.png" width="64" height="60" />
				</div>
				<div class="block8tex">新增客户</div>
			</div>
		</a> <a href="roominfo_add.jsp" target="mainFrame">
			<div class="block9">
				<div>
					<img src="assets/img/tp9.png" width="66" height="66" />
				</div>
				<div class="block9tex">////</div>
			</div>
		</a> <a href="customer_add.jsp" target="mainFrame">
			<div class="block10">
				<div>
					<img src="assets/img/tp10.png" width="71" height="69" />
				</div>
				<div class="block10tex">////</div>
			</div>
		</a> <a href="roomtype_add.jsp" target="mainFrame">
			<div class="block11">
				<div>
					<img src="assets/img/tp11.png" width="62" height="73" />
				</div>
				<div class="block11tex">////</div>
			</div>
		</a> <a href="logout.jsp" title="官网首页" target="_top">
			<div class="block12">
				<div>
					<img src="assets/img/tp12.png" width="55" height="67" />
				</div>
				<div class="block12tex">退出登陆</div>
			</div>
		</a>
	</div>
</body>
</html>