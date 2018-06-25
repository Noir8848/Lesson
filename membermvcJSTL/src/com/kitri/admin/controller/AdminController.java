package com.kitri.admin.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kitri.admin.service.AdminService;
import com.kitri.admin.service.AdminServiceImpl;
import com.kitri.member.model.MemberDetailDto;
import com.kitri.util.KitriConstance;
import com.kitri.util.PageMove;

@WebServlet("/admin")
public class AdminController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private AdminService adminService;
	
	public void init() {
		adminService = new AdminServiceImpl();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String root = request.getContextPath();
		
		String act = request.getParameter("act");
		if("main".equals(act)) {
			PageMove.redirect(request, response, "/admin/index.jsp");
		} else if("xmllist".equals(act)) {
			String key = request.getParameter("key");
			String word = request.getParameter("word");
			
			List<MemberDetailDto> list = adminService.memberList(key, word);
			request.setAttribute("xmllist", list);
			PageMove.forward(request, response, "/admin/xmllist.jsp");
		} else if("list".equals(act)) {
			String key = request.getParameter("key");
			String word = request.getParameter("word");
			
			List<MemberDetailDto> list = adminService.memberList(key, word);
			request.setAttribute("list", list);
			PageMove.forward(request, response, "/admin/memberlist.jsp");
		} else if("".equals(act)) {
			
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding(KitriConstance.ENCODE);
		doGet(request, response);
	}

}
