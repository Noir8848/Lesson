package com.kitri.util.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
	
	static {//�� static ���� Ŭ������ �θ� �� �����޼ҵ�� �ø��� ��� ���
		try {
			Class.forName("oracle.jdbc.driver.Oracledriver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	
	public static Connection makeConnection() throws SQLException {
		Connection conn = null;
		conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "kitri", "kitri");
		return conn;
	}
}
