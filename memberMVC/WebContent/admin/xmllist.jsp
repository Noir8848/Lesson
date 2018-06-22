<?xml version="1.0" encoding="UTF-8"?>
<%@ page language="java" contentType="text/xml; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.List,com.kitri.member.model.MemberDetailDto"%>
<%
List<MemberDetailDto> list = (List<MemberDetailDto>) request.getAttribute("xmllist");
%>
<memberlist>
<%
for(MemberDetailDto memberDetailDto : list) {
%>
	<member>
		<id><%=memberDetailDto.getId()%></id>
		<name><%=memberDetailDto.getName()%></name>
		<email><%=memberDetailDto.getEmail1()%>@<%=memberDetailDto.getEmail2()%></email>
		<address><%=memberDetailDto.getZipcode()%> <%=memberDetailDto.getAddr1()%> <%=memberDetailDto.getAddr2()%></address>
		<phone><%=memberDetailDto.getTel1()%>-<%=memberDetailDto.getTel2()%>-<%=memberDetailDto.getTel3()%></phone>
		<joindate><%=memberDetailDto.getJoindate()%></joindate>
	</member>
<%
}
%>	
</memberlist>