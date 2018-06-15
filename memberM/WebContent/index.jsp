<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kitri.member.model.MemberDto,java.util.List"%>
<%
String root = request.getContextPath();

MemberDto memberDto = (MemberDto) session.getAttribute("userInfo");
%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<center>
<h3>MVC Pattern을 이용한 회원가입 &amp; 로그인</h3>
<%
if(memberDto == null) {
%>
<a href="<%=root%>/user?act=mvjoin">회원가입</a><br>
<a href="<%=root%>/user?act=mvlogin">로그인</a><br>
<%
} else {
%>
<%=memberDto.getName()%>님 안녕하세요.
<a href="">로그아웃</a>
<%	
}
%>
</center>
</body>
</html>