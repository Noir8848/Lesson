<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/commons/public.jsp" %>
<c:forEach var=member items=list>
<tr>
	<td id="4" onmouseover="javascript:showBookData(this);" onmouseout="javascript:hideBookData(this);">${member.name}</td>
	<td id="4" onmouseover="javascript:showBookData(this);" onmouseout="javascript:hideBookData(this);">${member.id}</td>
	<td id="4" onmouseover="javascript:showBookData(this);" onmouseout="javascript:hideBookData(this);">${member.email1}@${member.email2}</td>
	<td id="4" onmouseover="javascript:showBookData(this);" onmouseout="javascript:hideBookData(this);">${member.tel1}-${member.tel2}-${member.tel3}</td>
	<td id="4" onmouseover="javascript:showBookData(this);" onmouseout="javascript:hideBookData(this);">${member.zipcode} ${member.addr1} ${member.addr2}</td>
	<td id="4" onmouseover="javascript:showBookData(this);" onmouseout="javascript:hideBookData(this);">${member.joindate}</td>
</tr>
</c:forEach>