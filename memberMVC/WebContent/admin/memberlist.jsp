<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.List,com.kitri.member.model.MemberDetailDto"%>
<%
List<MemberDetailDto> list = (List<MemberDetailDto>) request.getAttribute("list");
for(MemberDetailDto memberDetailDto : list) {
%>
<tr>
	<td><%=memberDetailDto.getName()%></td>
	<td><%=memberDetailDto.getId()%></td>
	<td><%=memberDetailDto.getEmail1()%>@<%=memberDetailDto.getEmail2()%></td>
	<td><%=memberDetailDto.getTel1()%>-<%=memberDetailDto.getTel2()%>-<%=memberDetailDto.getTel3()%></td>
	<td><%=memberDetailDto.getZipcode()%> <%=memberDetailDto.getAddr1()%> <%=memberDetailDto.getAddr2()%></td>
	<td><%=memberDetailDto.getJoindate()%></td>
</tr>
<%
}
%>