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

request.setCharacterEncoding("UTF-8");
String name = request.getParameter("name");
String id = request.getParameter("id");
String pass = request.getParameter("pass");
String email1 = request.getParameter("email1");
String email2 = request.getParameter("email2");
String zipcode = request.getParameter("zipcode");
String addr1 = request.getParameter("addr1");
String addr2 = request.getParameter("addr2");
String tel1 = request.getParameter("tel1");
String tel2 = request.getParameter("tel2");
String tel3 = request.getParameter("tel3");

int cnt = 0;
Connection conn = null;
Statement stmt = null;
try {
	conn = DriverManager.getConnection("jdbc:oracle:thin:@192.168.18.16:1521:xe", "kitri", "kitri");
	String sql = "";
	sql += "insert all \n";
	sql += "	into member (name, id, pass, email1, email2, joindate) \n";
	sql += "	values ('" + name + "', '" + id + "', '" + pass + "', '" + email1 + "', '" + email2 + "', sysdate) \n";
	sql += "	into member_detail (id, zipcode, addr1, addr2, tel1, tel2, tel3) \n";
	sql += "	values ('" + id + "', '" + zipcode + "', '" + addr1 + "', '" + addr2 + "', '" + tel1 + "', '" + tel2 + "', '" + tel3 + "')";
	sql += "select * from dual";
	stmt = conn.createStatement();
	cnt = stmt.executeUpdate(sql);
} catch (SQLException e) {
	e.printStackTrace();
} finally {
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

if(cnt != 0) {
	System.out.println(root + "/join/registerok.jsp?name=" + URLEncoder.encode(name, "UTF-8") + "&id=" + id);
	response.sendRedirect(root + "/join/registerok.jsp?name=" + URLEncoder.encode(name, "UTF-8") + "&id=" + id);
} else {
	response.sendRedirect(root + "/join/registerfail.jsp");
}	
//query=%EC%9D%B4%EC%88%9C%EC%8B%A0
//query=%C0%CC%BC%F8%BD%C5
%>






