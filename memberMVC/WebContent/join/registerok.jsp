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
	<font color="lightgray">
	<b>홍길동(hong)</b>님 회원가입을 환영합니다.<br>
	가입하신 이메일은 hong@naver.com입니다.
	전화번호는 000-000-0000입니다.
	로그인 후 서비스를 이용 할 수 있습니다.<br>
	<a href="<%=root%>/login/login.jsp">로그인</a>
	</font>
</center>
</body>
</html>