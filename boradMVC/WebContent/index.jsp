<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kitri.member.model.MemberDto"%>
        <!-- 임시로 자동로그인 상태로 만듬 -->
<%
String root = request.getContextPath();

MemberDto memberDto = new MemberDto();
memberDto.setId("java2");
memberDto.setName("안효인");
memberDto.setEmail1("java2");
memberDto.setEmail2("naver.com");

session.setAttribute("userInfo", memberDto);

response.sendRedirect(root + "/boardadmin?act=boardmenu");
%>    
