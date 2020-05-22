<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path;
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>VIP注册</title>
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
		
		<tr valign="top">
			<td>
				<!-- start id-form -->
				<form action="<%=request.getContextPath()%>/CustomerRegServlet"
					method="post">
					<table border="0" cellpadding="0" cellspacing="0" id="id-form">
						<tr>
							<th valign="top">客户账号：</th>
							<td><input name="customeruserid" type="text"
								class="inp-form" /></td>
							<td><div class="error-left"></div>
								<div class="error-inner">必填项*</div></td>
						</tr>
						<tr>
							<th valign="top">客户密码：</th>
							<td><input name="customerpwd" type="password"
								class="inp-form" /></td>
							<td><div class="error-left"></div>
								<div class="error-inner">必填项*</div></td>
						</tr>
						<tr>
							<th valign="top">客户类型编号：</th>
							<td><input type="text" name="customertypeid"
								class="inp-form-error large_input" /></td>
							<td><div class="error-left"></div>
								<div class="error-inner">必填项*</div></td>
						</tr>
						<tr>
							<th valign="top">客户编号：</th>
							<td><input name="customerid" type="text" class="inp-form" /></td>
							<td><div class="error-left"></div>
								<div class="error-inner">必填项*</div></td>
						</tr>
						<tr>
							<th valign="top">客户姓名：</th>
							<td><input name="customername" type="text" class="inp-form" /></td>
							<td><div class="error-left"></div>
								<div class="error-inner">必填项*</div></td>
						</tr>
						<tr>
							<th valign="top">客户性别：</th>
							<td><input name="customersex" type="text" class="inp-form" /></td>
							<td><div class="error-left"></div>
								<div class="error-inner">必填项*</div></td>
						</tr>
						<tr>
							<th valign="top">证件号：</th>
							<td><input name="customerhao" type="text" class="inp-form" /></td>
							<td><div class="error-left"></div>
								<div class="error-inner">必填项*</div></td>
						</tr>
						<tr>
							<th valign="top">联系方式：</th>
							<td><input name="customertel" type="text" class="inp-form" /></td>
							<td><div class="error-left"></div>
								<div class="error-inner">必填项*</div></td>
						</tr>
						<tr>
							<th valign="top">客户习惯：</th>
							<td><textarea rows="" name="customerremark" cols=""
									class="form-textarea"></textarea></td>
							<td></td>
						</tr>
						<tr>
							<th>&nbsp;</th>
							<td valign="top"><input type="submit" value=""
								class="form-submit" /> <input type="reset" value=""
								class="form-reset" /></td>
							<td></td>
						</tr>
					</table>
				</form> <!-- end id-form  -->
			</td>
		</tr>
</body>
</html>