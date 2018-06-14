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
	
	public static Connection makeConnection() {
		Connection conn = null;
		try {
			conn = DriverManager.getConnection("jdbc:oracle:thin:@192.168.18.16:1521:xe", "kitri", "kitri");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return conn;
	}
}
