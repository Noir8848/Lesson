<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kitri.member.model.MemberDto,java.util.List"%>
<%
String root = request.getContextPath();

MemberDto memberDto = (MemberDto) session.getAttribute("userInfo");

if(memberDto != null) {
	List<String> list = (List<String>) request.getAttribute("maillist");
%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<center>
<h3><%=memberDto.getName()%>님 메일 목록</h3>
<%
for(String subject : list) {
%>
	<%=subject %><br>
<%	
}
%>
</center>
</body>
</html>
<%
} else {
%>
<script>
alert("로그인 후 서비스를 이용할 수 있습니다.");
document.location.href = "<%=root%>/user?act=mvlogin";
</script>
<%	
}
%>