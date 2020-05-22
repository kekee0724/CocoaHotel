<%@ page language="java" import="java.util.*,com.hotel.entity.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path;
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>可可酒店</title>
<link href="<%=request.getContextPath()%>/css/css.css" rel="stylesheet"
	type="text/css" />
<link href="<%=request.getContextPath()%>/css/style.css"
	rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript"
	src="<%=request.getContextPath()%>/js/function.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/prototype.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/scriptaculous.js?load=effects"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/lightbox.js"></script>
<script langauge="javascript"
	src="<%=request.getContextPath()%>/js/calendar.js"></script>
<script language="javascript"
	src="<%=request.getContextPath()%>/js/xmlHttpRequest.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/ajax.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/check.js"></script>

</head>
<body>
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
		<a href="<%=basePath%>/all/login.jsp" class="dd">酒店登录</a><br>
		<c:choose>
			<c:when test="${null != customer}">
				<a href="logout.jsp" title="Sign Out" target="_top" class="dd">退出登陆</a>
				<th><font color="Red">${customer.getM_name() }</font>,欢迎你登录</th>
				<a href="<%=basePath%>/CustomerOneServlet?id=${customer.getPk()}"
					title="Update" class="dd">修改个人信息</a>
				<a href="<%=request.getContextPath()%>/hotel/ydzx.jsp" class="dd">预订中心</a>
			</c:when>
			<c:otherwise>
				<a href="<%=basePath%>/login.jsp" class="dd">登录</a>
				<a href="<%=basePath%>/reg.jsp" class="dd">注册</a>&nbsp;&nbsp;
		</c:otherwise>
		</c:choose>

		<table width="426" border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td height="140" align="left" valign="top" style="line-height: 22px">

					<P>
						<FONT face=Verdana><FONT face=Verdana>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								可可酒店位于武汉，是一座集度假、会议、住宿、餐饮、娱乐、温泉洗浴等多功能为一体的园林别墅式酒店。曾多次接待中央及省、市领导。是您迎春踏青、消夏避暑、金秋赏月、冬觅清幽的上佳之选。
								酒店环境——仙人岛宾馆依林傍海，景色怡人，万亩槐林环抱之中，形成了天然氧吧，漫步林间，享受大自然带给您的清幽与恬淡。
								酒店餐饮——宾馆设大小包房7间，大厅可同时容纳100人就餐。融合多年接待国家首长经验，使得这里成为品尝本地海鲜、传统菜的好去处。
						</FONT></FONT><FONT face=Verdana><FONT face=Verdana>
				</td>
			</tr>

		</table>
		<%@ include file="foot.jsp"%>
	</div>
</body>
</html>