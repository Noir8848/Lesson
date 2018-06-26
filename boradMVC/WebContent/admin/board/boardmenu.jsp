<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/commons/template/top.jsp"%>
<div>


<c:forEach var="board" items="${menulist}">
	<p>${board.cname}</p>
		<c:forEach var="board" items="${menulist}">
		<div>${board.bname}</div>
		</c:forEach>
</c:forEach>
</div>
<%@ include file="/commons/template/bottom.jsp"%>