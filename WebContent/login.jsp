<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path;
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>VIP登录</title>
<link href="<%=request.getContextPath()%>/css/css.css" rel="stylesheet"
	type="text/css" />
<link href="<%=request.getContextPath()%>/css/style.css"
	rel="stylesheet" type="text/css" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/admin/css/style.css"
	type="text/css" media="screen" title="default" />

</head>
<body style="background: url(image/s.jpg)">
	<div align="center">
		<%@include file="top.jsp"%>
		<table width="964" height="28" border="0" cellpadding="0"
			cellspacing="0">
			<tr>
				<td align="left" valign="top"></td>
				<td align="right" valign="middle"><font color="#593E34"><strong>今天是：</strong>
						<script language=JavaScript>
							today = new Date();
							function initArray() {
								this.length = initArray.arguments.length
								for (var i = 0; i < this.length; i++)
									this[i + 1] = initArray.arguments[i]
							}
							var d = new initArray("星期日", "星期一", "星期二", "星期三",
									"星期四", "星期五", "星期六");
							document.write(

							today.getYear(), "年", today.getMonth() + 1, "月",
									today.getDate(), "日",
									d[today.getDay() + 1], "</font>");
						</script> </font></td>
			</tr>
		</table>


		<div align="center">
			<form id="loginForm"
				action="<%=request.getContextPath()%>/CustomerLoginServlet"
				method="post">
				<table border="0" cellpadding="0" cellspacing="0" id="id-form">
					<tr>
						<th valign="top">账号id：</th>
						<td><input name="userid" type="text" class="inp-form" required=""/></td>
						<td><div class="error-left"></div>
							<div class="error-inner">必填项*</div></td>
					</tr>
					<tr>
						<th valign="top">密码：</th>
						<td><input name="password" type="password" maxlength="20"
							class="inp-form" required=""/></td>
						<td><div class="error-left"></div>
							<div class="error-inner">必填项*</div></td>
					</tr>
					<tr>
						<th>&nbsp;</th>
						<td><input type="radio" name="type" value="administrator" required="">管理员&nbsp&nbsp&nbsp
							<input type="radio" name="type" value="user" required="">用户 <br>
							&nbsp</td>
						<td><div class="error-left"></div>
							<div class="error-inner">必填项*</div></td>
					</tr>
					<tr>
						<th>&nbsp;</th>
						<td valign="top"><input type="submit" value="登录"
							class="form-submit" /> <input type="reset" value="取消"
							class="form-reset" /></td>
						<td></td>
					</tr>
				</table>
			</form>
		</div>
		<div align="center">
			<a href="reg.jsp" class="dd">没有账户？点此注册</a>
		</div>
</body>
</html>