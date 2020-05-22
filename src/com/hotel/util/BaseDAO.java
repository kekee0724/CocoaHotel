package com.hotel.util;

import java.sql.*;

public class BaseDAO {

	private Connection conn;

	private PreparedStatement ps;

	private ResultSet rs;
	private static final String USERNAME = "root";

	private static final String PASSWORD = "0724";

	private static final String DRIVER = "com.mysql.jdbc.Driver";

	private static final String URL = "jdbc:mysql://localhost:3306/myhotel?useUnicode=true&characterEncoding=utf8";

	static {
		try {
			Class.forName(DRIVER);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public static Connection getConn() {
		Connection conn = null;
		try {
			conn = DriverManager.getConnection(URL, USERNAME, PASSWORD);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}

	public static void close(ResultSet rs, PreparedStatement pstmt, Connection conn) {
//		try{
//			if(rs != null && !rs.isClosed()){
//				rs.close();
//			}
//			if(pstmt != null && !pstmt.isClosed()){
//				pstmt.close();
//			}
//			if(conn != null && !conn.isClosed()){
//				conn.close();
//			}
//		}catch(Exception e){
//			e.printStackTrace();
//		}
	}

	protected void closeAll() {
		try {
			if (null != rs) {
				rs.close();
			}
			if (null != ps) {
				ps.close();
			}
			if (null != conn) {
				conn.close();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	protected ResultSet getQuery(String sql, Object[] obj) {
		try {
			ps = getConn().prepareStatement(sql);
			if (null != obj && obj.length > 0) {
				for (int i = 0; i < obj.length; i++) {
					ps.setObject(i + 1, obj[i]);
				}
			}
			rs = ps.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
	}

	protected int update(String sql, Object[] obj) {
		int count = 0;
		try {
			ps = getConn().prepareStatement(sql);
			if (null != obj && obj.length > 0) {
				for (int i = 0; i < obj.length; i++) {
					ps.setObject(i + 1, obj[i]);
				}
			}
			count = ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			closeAll();
		}
		return count;
	}
}
