package com.hotel.util;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.hotel.util.room;

public class roomDao {
	public static void main(String[] args) {

	}

	// 查找全部房间信息
	public static List<room> queryRoom() {
		Connection conn = BaseDAO.getConn();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<room> roomList = new ArrayList<room>();
		String sql = "select * from room";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				int id = rs.getInt("id");
				int roomNumber = rs.getInt("roomNumber");
				String roomType = rs.getString("roomType");
				String guestName = rs.getString("guestName");
				String checkInDate = rs.getString("checkInDate");
				String phonenumber = rs.getString("phonenumber");
				int normalPrice = rs.getInt("normalPrice");
				int memberPrice = rs.getInt("memberPrice");
				String status = rs.getString("status");
				room room = new room(id, roomNumber, roomType, guestName, phonenumber, checkInDate, normalPrice,
						memberPrice, status);
				roomList.add(room);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return roomList;
	}

	// 根据id查找房间信息
	public static room searchById(HttpSession session, HttpServletResponse response) {
		Connection conn = BaseDAO.getConn();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String id = (String) session.getAttribute("id");
		String sql = "select * from room where id=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				rs.previous();
				while (rs.next()) {
					int id1 = rs.getInt("id");
					int roomNumber = rs.getInt("roomNumber");
					String roomType = rs.getString("roomType");
					String guestName = rs.getString("guestName");
					String phonenumber = rs.getString("phonenumber");
					String checkInDate = rs.getString("checkInDate");
					int normalPrice = rs.getInt("normalPrice");
					int memberPrice = rs.getInt("memberPrice");
					String status = rs.getString("status");
					room room = new room(id1, roomNumber, roomType, guestName, phonenumber, checkInDate, normalPrice,
							memberPrice, status);
					BaseDAO.close(rs, pstmt, conn);
					return room;
				}
			} else {
				BaseDAO.close(rs, pstmt, conn);
				response.setHeader("refresh", "0;URL=error.jsp");
				return null;
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	// 删除房间信息
	public static String deleteRoomById(HttpServletRequest request, HttpServletResponse response) {
		if (request.getParameter("id") == null) {
			System.out.println("请输入id");
		}
		String id = request.getParameter("id");
		Connection conn = null;
		conn = BaseDAO.getConn();
		PreparedStatement pstmt = null;
		String sql = "delete from room where id=" + id;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.executeUpdate();
			response.setHeader("refresh", "2;URL=roomInfo.jsp");

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		BaseDAO.close(null, pstmt, conn);
		return "删除成功";
	}

	// 修改房间信息
	public static String updateRoom(HttpServletRequest request, HttpServletResponse response, HttpSession session) {

		Connection conn = BaseDAO.getConn();
		PreparedStatement pstmt = null;
		String id = (String) session.getAttribute("id");
		System.out.println(id);
		String roomNumber = request.getParameter("roomNumber");
		String guestName = request.getParameter("guestName");
		if (request.getParameter("roomType") == null) {
			response.setHeader("refresh", "2;URL=updateRoom.jsp");
			return "请选择房间类型";
		}
		if (request.getParameter("status") == null) {
			response.setHeader("refresh", "2;URL=updateRoom.jsp");
			return "请选择是否入住";
		}
		String roomType = request.getParameter("roomType");
		String checkInDate = request.getParameter("checkInDate");
		String phonenumber = request.getParameter("phonenumber");
		String normalPrice = request.getParameter("normalPrice");
		String memberPrice = request.getParameter("memberPrice");
		String status = request.getParameter("status");
		if (status.equals("空闲")) {
			if (roomNumber.equals("") || normalPrice.equals("") || memberPrice.equals("")) {
				response.setHeader("refresh", "2;URL=updateRoom.jsp");
				return "请填写完整信息";
			}
			guestName = "暂无";
			phonenumber = "暂无";
			checkInDate = "暂无";
		} else {
			if (roomNumber.equals("") || normalPrice.equals("") || memberPrice.equals("") || guestName.equals("")
					|| phonenumber.equals("") || checkInDate.equals("")) {
				response.setHeader("refresh", "2;URL=insertRoom.jsp");
				return "请填写完整信息";
			}
		}
		String sql = "update room set roomNumber=?,roomType=?,guestName=?,phonenumber=?,checkInDate=?,normalPrice=?,memberPrice=?,status=? where id=? ";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, roomNumber);
			pstmt.setString(2, roomType);
			pstmt.setString(3, guestName);
			pstmt.setString(4, phonenumber);
			pstmt.setString(5, checkInDate);
			pstmt.setString(6, normalPrice);
			pstmt.setString(7, memberPrice);
			pstmt.setString(8, status);
			pstmt.setString(9, id);
			pstmt.executeUpdate();
			response.setHeader("refresh", "2;URL=roomInfo.jsp");
			return "修改成功,两秒钟后回到管理员页面";
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		BaseDAO.close(null, pstmt, conn);

		return null;
	}

	// 按属性查找信息
	public static List<room> searchRoomByAttribute(HttpServletRequest request, HttpServletResponse response) {
		Connection conn = BaseDAO.getConn();
		PreparedStatement pstmt = null;
		List<room> roomList = new ArrayList<room>();
		String RoomType = request.getParameter("roomType");
		String Status = request.getParameter("status");
		if (RoomType.equals("null") && Status.equals("null")) {
			roomList = roomDao.queryRoom();
			return roomList;
		} else {
			ResultSet rs = null;
			try {
				String sql = null;
				if (!RoomType.equals("null") && !Status.equals("null")) {
					sql = "select * from room where roomType=? and status=?";
					pstmt = conn.prepareStatement(sql);
					pstmt.setString(1, RoomType);
					pstmt.setString(2, Status);
				}
				if (!RoomType.equals("null") && Status.equals("null")) {
					sql = "select * from room where roomType=?";
					pstmt = conn.prepareStatement(sql);
					pstmt.setString(1, RoomType);
				}
				if (RoomType.equals("null") && !Status.equals("null")) {
					sql = "select * from room where status=?";
					pstmt = conn.prepareStatement(sql);
					pstmt.setString(1, Status);
				}
				rs = pstmt.executeQuery();
				while (rs.next()) {
					int id = rs.getInt("id");
					int roomNumber = rs.getInt("roomNumber");
					String roomType = rs.getString("roomType");
					String guestName = rs.getString("guestName");
					String checkInDate = rs.getString("checkInDate");
					String phonenumber = rs.getString("phonenumber");
					int normalPrice = rs.getInt("normalPrice");
					int memberPrice = rs.getInt("memberPrice");
					String status = rs.getString("status");
					room room = new room(id, roomNumber, roomType, guestName, phonenumber, checkInDate, normalPrice,
							memberPrice, status);
					roomList.add(room);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return roomList;
		}
	}

	// 按照用户名查找
	public static List<room> searchRoomByGuestName(HttpServletRequest request, HttpServletResponse response) {
		Connection conn = BaseDAO.getConn();
		PreparedStatement pstmt = null;
		List<room> roomList = new ArrayList<room>();
		String GuestName = request.getParameter("guestName");
		ResultSet rs = null;
		try {
			String sql = null;
			sql = "select * from room where guestName=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, GuestName);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				int id = rs.getInt("id");
				int roomNumber = rs.getInt("roomNumber");
				String roomType = rs.getString("roomType");
				String guestName = rs.getString("guestName");
				String checkInDate = rs.getString("checkInDate");
				String phonenumber = rs.getString("phonenumber");
				int normalPrice = rs.getInt("normalPrice");
				int memberPrice = rs.getInt("memberPrice");
				String status = rs.getString("status");
				room room = new room(id, roomNumber, roomType, guestName, phonenumber, checkInDate, normalPrice,
						memberPrice, status);
				roomList.add(room);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return roomList;
	}

	// 增加房间
	public static String insertRoom(HttpServletRequest request, HttpServletResponse response) {
		Connection conn = BaseDAO.getConn();
		PreparedStatement pstmt = null;
		String roomNumber = request.getParameter("roomNumber");
		String guestName = request.getParameter("guestName");
		if (request.getParameter("roomType") == null) {
			response.setHeader("refresh", "2;URL=insertRoom.jsp");
			return "请选择房间类型";
		}
		if (request.getParameter("status") == null) {
			response.setHeader("refresh", "2;URL=insertRoom.jsp");
			return "请选择是否入住";
		}
		String roomType = request.getParameter("roomType");
		String checkInDate = request.getParameter("checkInDate");
		String phonenumber = request.getParameter("phonenumber");
		String normalPrice = request.getParameter("normalPrice");
		String memberPrice = request.getParameter("memberPrice");
		String status = request.getParameter("status");
		System.out.println(phonenumber);
		if (status.equals("空闲")) {
			if (roomNumber.equals("") || normalPrice.equals("") || memberPrice.equals("")) {
				response.setHeader("refresh", "2;URL=insertRoom.jsp");
				return "请填写完整信息";
			}
			guestName = "暂无";
			phonenumber = "暂无";
			checkInDate = "暂无";
		} else {
			if (roomNumber.equals("") || normalPrice.equals("") || memberPrice.equals("") || guestName.equals("")
					|| phonenumber.equals("") || checkInDate.equals("")) {
				response.setHeader("refresh", "2;URL=insertRoom.jsp");
				return "请填写完整信息";
			}
		}
		String sql = "insert into room(roomNumber,roomType,guestName,phonenumber,checkInDate,normalPrice,memberPrice,status) value(?,?,?,?,?,?,?,?)";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, roomNumber);
			pstmt.setString(2, roomType);
			pstmt.setString(3, guestName);
			pstmt.setString(4, phonenumber);
			pstmt.setString(5, checkInDate);
			pstmt.setString(6, normalPrice);
			pstmt.setString(7, memberPrice);
			pstmt.setString(8, status);
			pstmt.executeUpdate();
			response.setHeader("refresh", "2;URL=roomInfo.jsp");

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		BaseDAO.close(null, pstmt, conn);
		return "添加成功";
	}

}
