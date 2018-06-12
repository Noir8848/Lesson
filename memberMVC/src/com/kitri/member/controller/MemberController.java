package com.kitri.member.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/user")
public class MemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String root = request.getContextPath();
		
		String act = request.getParameter("act");
		System.out.println("act =====" + act);
		
		//if(''.equals(mvjoin)) null point exception³²
		if("mvjoin".equals(act)) {
			response.sendRedirect(root + "/join/member.jsp");
		} else if("mvlogin".equals(act)) {
			response.sendRedirect(root + "/login/login.jsp");
		} else if("mvlogin".equals(act)) {

		} else if("mvjoin".equals(act)) {

		} else if("mvjoin".equals(act)) {

		} else if("mvjoin".equals(act)) {

		} else if("mvjoin".equals(act)) {

		} 
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
