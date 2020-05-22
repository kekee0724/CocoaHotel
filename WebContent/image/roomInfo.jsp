<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" import="com.hotel.util.*" import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>房间信息管理</title>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/admin/css/style.css"
	type="text/css" media="screen" title="default" />
</head>
<%
	request.setCharacterEncoding("utf-8");
	if (request.getParameter("roomType") != null) {
		List<room> roomList = roomDao.searchRoomByAttribute(request, response);
		request.setAttribute("roomList", roomList);

	} else {
		if (request.getParameter("guestName") != null) {
			List<room> roomList = roomDao.searchRoomByGuestName(request, response);
			request.setAttribute("roomList", roomList);
		} else {
			List<room> roomList = roomDao.queryRoom();
			request.setAttribute("roomList", roomList);
		}
	}
%>

<body style="background: url(m.jpg)">
	<div id="content-outer">
		<div id="content">
			<div align="center">
				<form action="roomInfo.jsp" method="post">
					<h1>房间信息管理</h1>
					房间类型<select name="roomType" align="center">
						<option value="null" selected="selected">无</option>
						<option value="single">单人间</option>
						<option value="double">双人间</option>
						<option value="deluxe">豪华间</option>
					</select> 入住状态<select name="status">
						<option value="null" selected="selected">无</option>
						<option value="空闲">空闲</option>
						<option value="入住">入住</option>
					</select> <input type="submit" value="查找">
				</form>
				<form action="roomInfo.jsp" method="post">
					按照住户名查找<input type="text" name="guestName"> <input
						type="submit" value="查找">
				</form>
			</div>
			<table border="0" width="100%" cellpadding="0" cellspacing="0"
				id="content-table">
				<tr>
					<td id="tbl-border-left"></td>
					<td>
						<!--  start content-table-inner ...................................................................... START -->
						<div id="content-table-inner">
							<!--  start table-content  -->
							<div id="table-content">
								<!--  start room-table ..................................................................................... -->
								<form id="mainform" action="">
									<table border="0" width="100%" cellpadding="0" cellspacing="0"
										id="product-table">
										<tr>
											<th class="table-header-check padtp"><a id="toggle-all"></a>
											</th>
											<th class="table-header-repeat line-left minwidth-1 padtp">ID</th>
											<th class="table-header-repeat line-left minwidth-1 padtp">房间号</th>
											<th class="table-header-repeat line-left minwidth-1 padtp">房间类型</th>
											<th class="table-header-options line-left padtp">住户姓名</th>
											<th class="table-header-options line-left padtp">住户电话</th>
											<th class="table-header-options line-left padtp">入住时间</th>
											<th class="table-header-options line-left padtp">一般价</th>
											<th class="table-header-options line-left padtp">会员价</th>
											<th class="table-header-options line-left padtp">入住状态</th>
											<th class="table-header-options line-left padtp">操作</th>
											<c:forEach items="${roomList}" var="room">
												<tr>
													<td><input type="checkbox" /></td>
													<td>${room.getId()}</td>
													<td>${room.getRoomNumber()}</td>
													<td><c:if test="${room.getRoomType() eq 'single'}">单人间</c:if>
														<c:if test="${room.getRoomType() eq 'double'}">双人间</c:if>
														<c:if test="${room.getRoomType() eq 'deluxe'}">豪华间</c:if></td>
													<td>${room.getGuestName()}</td>
													<td>${room.getPhonenumber()}</td>
													<td>${room.getCheckInDate()}</td>
													<td>${room.getNormalPrice()}</td>
													<td>${room.getMemberPrice()}</td>
													<td>${room.getStatus()}</td>
													<td class="options-width"><a
														href="<%=request.getContextPath()%>/image/insertRoom.jsp"
														title="Add" class="icon-3 info-tooltip"></a> <a
														href="updateRoom.jsp?id=${room.getId() }" title="Update"
														class="icon-1 info-tooltip"></a> <a
														href="deleteRoomById.jsp?id=${room.getId() }"
														onclick="javascript:return confirm('确定删除该用户？')"
														title="Delete" class="icon-2 info-tooltip"></a></td>
												</tr>
											</c:forEach>
										</tr>
									</table>
								</form>
							</div>
							<div class="clear"></div>
						</div> <!--  end content-table-inner ............................................END  -->
					</td>
					<td id="tbl-border-right"></td>
				</tr>
				<tr>
					<th class="sized bottomleft"></th>
					<td id="tbl-border-bottom">&nbsp;</td>
					<th class="sized bottomright"></th>
				</tr>
			</table>
			<div class="clear">&nbsp;</div>

		</div>
		<!--  end content -->
		<div class="clear">&nbsp;</div>
	</div>
	<!--  end content-outer........................................................END -->
</html>