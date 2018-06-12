<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String root = request.getContextPath();
System.out.println(">>>> " + root);
%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<center>
<h3>beans를 이용한 회원가입 &amp; 로그인</h3>
<a href="<%=root%>/join/member.jsp">회원가입</a><br>
<a href="<%=root%>/login/login.jsp">로그인</a><br>
</center>
</body>
</html>