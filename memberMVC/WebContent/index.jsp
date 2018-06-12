<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String root = request.getContextPath();
%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<center>
<h3>Mvc Pattern을 이용한 회원가입 &amp; 로그인</h3>
<a href="<%=root%>/user?act=mvjoin">회원가입</a><br><!-- 서블릿 어노테이션, 같은 서블릿을 구별하기 위한 쿼리스트링 -->
<a href="<%=root%>/user?act=mvlogin">로그인</a><br>
</center>
</body>
</html>