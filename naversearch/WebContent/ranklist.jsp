<?xml version="1.0" encoding="UTF-8"?>
<%@ page language="java" contentType="text/xml; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.List,com.kitri.naver.model.KeywordDto"%>
<%
List<KeywordDto> list = (List<KeywordDto>) request.getAttribute("ranklist");
%>
<keywordlist>
<%
for(KeywordDto keywordDto : list) {
%>
	<keyworddata>
		<rank><%=keywordDto.getRank()%></rank>
		<keyword><%=keywordDto.getKeyword()%></keyword>
		<hit><%=keywordDto.getHit()%></hit>
	</keyworddata>
<%
}
%>	
</keywordlist>