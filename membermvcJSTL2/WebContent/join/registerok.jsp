<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/commons/public.jsp" %>
<c:if test="$userInfo != null">
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align="center">
	<font color="lightgray">
	<b>${userInfo.name}(${userInfo.id})</b>님 회원가입을 환영합니다.<br>
	가입하신 이메일은 ${userInfo.email1}@${userInfo.email2}입니다.<br>
	전화번호는 ${userInfo.tel1}-${userInfo.tel2}-${userInfo.tel3}입니다.<br>
	로그인 후 서비스를 이용 할 수 있습니다.<br>
	<a href="${root}/user?act=mvlogin">로그인</a>
	</font>
</div>
</body>
</html>
</c:if>
<c:if test="${userInfo == null}">
<script>
alert("정상적인 접근이 아닙니다.");
document.location.href = "${root}/user";
</script>
</c:if>











