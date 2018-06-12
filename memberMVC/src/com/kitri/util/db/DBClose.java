package com.kitri.util.db;

import java.sql.*;

public class DBClose {

	public static void close(Connection conn, Statement stmt) {
		try {
			if (stmt != null) {// ������ �ȵ� �� �߻��� null point exceptionȸ��
				stmt.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		try {
			if (conn != null) {
				conn.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static void close(Connection conn, Statement stmt, ResultSet rs) {
		try {
			if (stmt != null) {// ������ �ȵ� �� �߻��� null point exceptionȸ��
				stmt.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		try {
			if (conn != null) {
				conn.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		try {
			if (rs != null) {
				rs.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static void close(Connection conn, PreparedStatement ptst) {
		try {
			if (ptst != null) {// ������ �ȵ� �� �߻��� null point exceptionȸ��
				ptst.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		try {
			if (conn != null) {
				conn.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static void close(Connection conn, PreparedStatement ptst, ResultSet rs) {
		try {
			if (ptst != null) {// ������ �ȵ� �� �߻��� null point exceptionȸ��
				ptst.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		try {
			if (conn != null) {
				conn.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		try {
			if (rs != null) {
				rs.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
