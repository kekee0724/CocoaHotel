<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" import="com.hotel.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/admin/css/style.css"
	type="text/css" media="screen" title="default" />
<title>新增房源</title>
</head>
<body style="background: url(m.jpg)">
	<%
		request.setCharacterEncoding("utf-8");
	%>
	<!-- start content-outer -->
	<div id="content-outer">
		<!-- start content -->
		<div id="content">
			<table border="0" width="100%" cellpadding="0" cellspacing="0"
				id="content-table">
				<tr>
					<th rowspan="3" class="sized"><img
						src="<%=request.getContextPath()%>/admin/images/side_shadowleft.jpg"
						width="20" height="300" alt="" /></th>
					<th class="topleft"></th>
					<td id="tbl-border-top">&nbsp;</td>
					<th class="topright"></th>
					<th rowspan="3" class="sized"><img
						src="<%=request.getContextPath()%>/admin/images/side_shadowright.jpg"
						width="20" height="300" alt="" /></th>
				</tr>
				<tr>
					<td id="tbl-border-left"></td>
					<td>
						<!--  start content-table-inner -->
						<div id="content-table-inner">
							<table border="0" width="100%" cellpadding="0" cellspacing="0">
								<tr>
									<td height="50" valign="top"><div class="error-left"></div>
										<div class="error-inner">
											<h3 class="add">您当前的位置：客房管理 > 添加客房信息</h3>
										</div></td>
								</tr>
								<tr valign="top">
									<td>
										<!-- start id-form -->

										<form action="insertRoom1.jsp" method="post">
											<!-- <table align="center"> -->
											<table border="0" cellpadding="0" cellspacing="0"
												id="id-form">
												<tr>
													<th valign="top">房间号:</th>
													<td><input type="text" name="roomNumber"
														class="inp-form-error large_input" /></td>
													<td><div class="error-left"></div>
														<div class="error-inner">必填项*</div></td>
												</tr>

												<tr>
													<td>房间类型:</td>
													<td><input type="radio" name="roomType" value="single">单人间<input
														type="radio" name="roomType" value="double">双人间 <input
														type="radio" name="roomType" value="deluxe">豪华间</td>
														<td><div class="error-left"></div>
														<div class="error-inner">必填项*</div></td>
												</tr>
												<tr>
													<td>住户姓名:</td>
													<td><input type="text" name="guestName"
														class="inp-form-error large_input"></td>
												</tr>
												<tr>
													<td>住户电话:</td>
													<td><input type="text" name="phonenumber"
														class="inp-form-error large_input"></td>
												</tr>												
												<tr>
													<td>入住时间:</td>
													<td><input type="text" name="checkInDate"
														class="inp-form-error large_input"></td>
												</tr>
												
												<tr>
													<td>一般价:</td>
													<td><input type="text" name="normalPrice"
														class="inp-form-error large_input"></td>
														<td><div class="error-left"></div>
														<div class="error-inner">必填项*</div></td>
												</tr>											
												<tr>
													<td>会员价:</td>
													<td><input type="text" name="memberPrice"
														class="inp-form-error large_input"></td>
														<td><div class="error-left"></div>
														<div class="error-inner">必填项*</div></td>
												</tr>												
												<tr>
													<td>入住情况:</td>
													<td><input type="radio" name="status" value="空闲">空闲<input
														type="radio" name="status" value="入住">入住</td>
														<td><div class="error-left"></div>
														<div class="error-inner">必填项*</div></td>
												</tr>
												<tr>
													<th>&nbsp;</th>
													<td valign="top"><input type="submit" value=""
														class="form-submit" /> <input type="reset" value=""
														class="form-reset" /></td>
													<td></td>
												</tr>
											</table>

										</form>

									</td>
								</tr>
							</table>
							<div class="clear"></div>
						</div> <!--  end content-table-inner  -->
					</td>
					<td id="tbl-border-right"></td>
				</tr>
				<tr>
					<th class="sized bottomleft"></th>
					<td id="tbl-border-bottom">&nbsp;</td>
					<th class="sized bottomright"></th>
				</tr>
			</table>
		</div>
		<!--  end content -->
		<div class="clear">&nbsp;</div>
	</div>
	<!--  end content-outer -->
</body>
</html>