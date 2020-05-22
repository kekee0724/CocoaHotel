<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" import="com.hotel.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>更新房间信息</title>
</head>
<body style="background: url(m.jpg)">
	<%
		request.setCharacterEncoding("utf-8");
		if (request.getParameter("id") != null) {
			String id = request.getParameter("id");
			session.setAttribute("id", id);
		}
		room room = roomDao.searchById(session, response);
		request.setAttribute("room", room);
	%>
	<form action="updateRoom1.jsp" method="post">
		<table align="center">
			<tr>
				<td>房间号:</td>
				<td><input type="text" name="roomNumber"
					value="${room.getRoomNumber() }"></td>
			</tr>
			<br>
			<tr>
				<td>房间类型:</td>
				<td><input type="radio" name="roomType" value="single">单人间<input
					type="radio" name="roomType" value="double">双人间 <input
					type="radio" name="roomType" value="deluxe">豪华间</td>
			</tr>
			<tr>
				<td>住户姓名:</td>
				<td><input type="text" name="guestName"
					value=${room.getGuestName() }></td>
			</tr>
			<tr>
				<td>住户电话:</td>
				<td><input type="text" name="phonenumber"
					value=${room.getPhonenumber() }></td>
			</tr>
			<br>
			<tr>
				<td>入住时间:</td>
				<td><input type="text" name="checkInDate"
					value=${room.getCheckInDate() }></td>
			</tr>
			<br>
			<tr>
				<td>一般价:</td>
				<td><input type="text" name="normalPrice"
					value=${room.getNormalPrice() }></td>
			</tr>
			<br>
			<tr>
				<td>会员价:</td>
				<td><input type="text" name="memberPrice"
					value=${room.getMemberPrice() }></td>
			</tr>
			<br>
			<tr>
				<td>入住情况:</td>
				<td><input type="radio" name="status" value="空闲">空闲<input
					type="radio" name="status" value="入住">入住</td>
			</tr>
			<br>
			<tr>
				<td><input type="submit" value="提交修改"></td>
				<br>
			</tr>
		</table>
	</form>
</body>
</html>