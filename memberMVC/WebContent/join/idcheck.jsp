<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
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
%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/memberjsp/css/style.css" type="text/css">
<script type="text/javascript">
function idcheck(){
	if(document.getElementById("id").value == "") {
		alert("검색 아이디 입력!");
		return;
	} else {
		document.idform.action = "<%=root%>/join/idcheck.jsp";
		document.idform.submit();
	}
}

function iduse(id){
	opener.document.getElementById("id").value = id;
	
	self.close();
}
</script>
</head>
<body>
<center>
<form name="idform" method="get" action="" onsubmit="return false;">
<input type="hidden" name="act" value="idsearch">
<h3>아이디 중복 검사</h3>
<table width="350">
<tr>
	<td class="td3">검색할 아이디를 입력하세요</td>
</tr>
<tr>
	<td class="td4" style="text-align: center">
	<input type="text" name="id" id="id" onkeypress="javascript:if(event.keyCode == 13){ idcheck(); }">
	<input type="button" value="검색" onclick="javascript:idcheck();">
	</td>
</tr>
<%
if(id == null) {//회원가입 창에서 아이디 중복검사를 눌렀다면..
%>
<tr>
	<td class="td4">
	검색할 아이디를 정확히 입력한 후 검색 버튼을 클릭하세요..
	</td>
</tr>
<%
} else {//검색 했다면.
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	
	int cnt = 1;
	try {
		conn = DriverManager.getConnection("jdbc:oracle:thin:@192.168.18.16:1521:xe", "kitri", "kitri");
		String sql = "";
		sql += "select count(id) cnt \n";
		sql += "from member \n";
		sql += "where id = '" + id + "'";
		stmt = conn.createStatement();
		rs = stmt.executeQuery(sql);
		if(rs.next()) {
			cnt = rs.getInt("cnt");//0 or 1
		}
	} catch (SQLException e) {
		cnt = 1;
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
	
	if(cnt == 0) {
%>
<tr>
	<td class="td4">
	<b><%=id%></b>는 사용가능합니다.
	<input type="button" value="사용" onclick="javascript:iduse('<%=id%>')">
	</td>
</tr>
<%
	} else {
%>
<tr>
	<td class="td4">
	<b><%=id%></b>는 사용중입니다.<br>
	다른 아이디를 검색해 주세요.
	</td>
</tr>
<%
	}
}
%>
</table>
</form>
</center>
</body>
</html>