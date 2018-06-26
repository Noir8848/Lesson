<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/commons/public.jsp" %>  
<c:if test="${userInfo.memberDto() != null}"> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div>
<h3>${userInfo.name()}님 메일 목록</h3>

<c:forEach var="subject" items="${maillist}">
	${subject}<br>
</c:forEach>
</div>
</body>
</html>
</c:if>
<script>
alert("로그인 후 서비스를 이용할 수 있습니다.");
document.location.href = "${root}/user?act=mvlogin";
</script>
