<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/commons/public.jsp" %> 
<c:if test="${userInfo != null}">
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align="center">
<font color="lightgray">
<b>${userInfo.name()}(${userInfo.id()})</b>님 안녕하세요.<br>
<a href="mailto:${userInfo.email1()}@${userInfo.email2()}">메일보내기</a><br>
<a href="${root}/user?act=mvmaillist">내메일함</a>
</font>
</div>
</body>
</html>
</c:if>
<c:if test="${userInfo == null}">
<script>
alert("로그인 후 서비스를 이용할 수 있습니다.");
document.location.href = "${root}/user?act=mvlogin";
</script>
</c:if>















