package com.kitri.util.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
	
	static {//블럭 static 최초 클래스를 부를 때 전역메소드로 올리고 계속 사용
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
