<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*,java.net.*"%>
<%!
public void init() {
	try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
	} catch (ClassNotFoundException e) {
		e.printStackTrace();
	}
}
%>    
<%
String root = request.getContextPath();

String id = request.getParameter("id");
String pass = request.getParameter("pass");

Connection conn = null;
Statement stmt = null;
ResultSet rs = null;
String name = null;
try {
	conn = DriverManager.getConnection("jdbc:oracle:thin:@192.168.18.16:1521:xe", "kitri", "kitri");
	String sql = "";
	sql += "select name \n";
	sql += "from member \n";
	sql += "where id = '" + id + "' and pass = '" + pass + "'";
	stmt = conn.createStatement();
	rs = stmt.executeQuery(sql);
	if(rs.next()) {
		name = rs.getString("name");
	}
} catch (SQLException e) {
	e.printStackTrace();
} finally {
	try {
		if(rs != null)
			rs.close();
	} catch (SQLException e) {
		e.printStackTrace();
	}
	try {
		if(stmt != null)
			stmt.close();
	} catch (SQLException e) {
		e.printStackTrace();
	}
	try {
		if(conn != null)
			conn.close();
	} catch (SQLException e) {
		e.printStackTrace();
	}
}

if(name != null) {
	response.sendRedirect(root + "/login/loginok.jsp?name=" + URLEncoder.encode(name, "UTF-8"));
} else {
	response.sendRedirect(root + "/login/loginfail.jsp");
}
%>
