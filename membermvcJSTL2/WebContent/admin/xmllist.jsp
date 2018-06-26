<?xml version="1.0" encoding="UTF-8"?>
<%@ page language="java" contentType="text/xml; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/commons/public.jsp" %>

<memberlist>
<c:forEach var="member" items="${list}">
	<member>
		<id>${member.id}</id>
		<name>${member.name}</name>
		<email>${member.email1}@${member.email2}</email>
		<address>${member.zipcode} ${member.addr1} ${member.addr2}</address>
		<phone>${member.tel1}-${member.tel2}-${member.tel3}</phone>
		<joindate>${member.joindate}</joindate>
	</member>
</c:forEach>
</memberlist>
