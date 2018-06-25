<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/commons/public.jsp" %>
<%--<c:set ~~~~~/>--%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<center>
<h3>MVC Pattern을 이용한 회원가입 &amp; 로그인</h3>

<c:if test="${userInfo == null}">
<a href="${root}/user?act=mvjoin">회원가입</a><br>
<a href="${root}/user?act=mvlogin">로그인</a><br>
</c:if>

<c:if test="${userInfo != null}">
${userInfo.name}님 안녕하세요.
<a href="${root}/user?act=logout">로그아웃</a><br>
<a href="${root}/user?act=mvmodify">내정보수정</a><br>
<a href="${root}/user?act=delete">회원탈퇴</a><br>
	<c:if test="${userInfo.id == 'java2'}">
		<a href="${root}/admin?act=main">관리자페이지</a><br>
	</c:if>
</c:if>

</center>
</body>
</html>






