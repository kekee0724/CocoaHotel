<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<style>
* {
	padding: 0;
	margin: 0;
	font-family: "微软雅黑";
}

.header {
	height: 72px;
	background: #458fce;
}

.header .logo {
	color: #fff;
	line-height: 70px;
	font-size: 30px;
	margin-left: 20px;
	display: inline-block;
	text-align: center;
}

a {
	color: #000;
	text-decoration: blink;
}

.header .login {
	float: right;
	color: #fff;
	line-height: 72px;
	margin-right: 2px;
	display: inline-block;
}

.banner {
	height: 380px;
	overflow: hidden;
	background: #ddd;
}
</style>

<div class="header">
	<div class="logo">可可酒店</div>
	<div class="login">
		<a href="<%=request.getContextPath()%>/index.jsp" class="dd">网站首页</a>
		<span>|</span> <a href="<%=request.getContextPath()%>/hotel/fdjj.jsp"
			class="dd">酒店介绍</a> 
		<span>|</span> <a href="<%=request.getContextPath()%>/hotel/lxwm.jsp"
			class="dd">联系我们</a>
	</div>
</div>