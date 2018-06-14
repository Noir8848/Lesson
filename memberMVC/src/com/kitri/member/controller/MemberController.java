package com.kitri.member.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kitri.member.model.MemberDetailDto;
import com.kitri.member.model.ZipDto;
import com.kitri.member.service.MemberService;
import com.kitri.member.service.MemberServiceImpl;

@WebServlet("/user")
public class MemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private MemberService memberService;
	
	public void init() {
		memberService = new MemberServiceImpl();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String root = request.getContextPath();
		
		String act = request.getParameter("act");
		System.out.println("act ==== " + act);
		
		if("mvjoin".equals(act)) {
			response.sendRedirect(root + "/join/member.jsp");
		} else if("mvlogin".equals(act)) {
			response.sendRedirect(root + "/login/login.jsp");
		} else if("mvidcheck".equals(act)) {
			response.sendRedirect(root + "/join/idcheck.jsp");
		} else if("idsearch".equals(act)) {
			String id = request.getParameter("id");
			System.out.println("검색 아이디 : " + id);
			int cnt = memberService.idCheck(id);
			response.sendRedirect(root + "/join/idcheck.jsp?id=" + id + "&cnt=" + cnt);
		} else if("mvzip".equals(act)) {
			response.sendRedirect(root + "/join/zipsearch.jsp");
		} else if("zipsearch".equals(act)) {
			String dong = request.getParameter("dong");
			System.out.println("검색 동이름 : " + dong);
			List<ZipDto> list = memberService.zipSearch(dong);
			System.out.println("검색동 갯수 : " + list.size());
			request.setAttribute("zipList", list);
			request.setAttribute("searchDong", dong);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("/join/zipsearch.jsp");
			
			dispatcher.forward(request, response);
		} else if("register".equals(act)) {
			MemberDetailDto mdd = new MemberDetailDto();

			mdd.setName(request.getParameter("name"));
			mdd.setId(request.getParameter("id"));
			mdd.setPass(request.getParameter("pass"));
			mdd.setEmail1(request.getParameter("email1"));
			mdd.setEmail2(request.getParameter("email2"));
			mdd.setJoindate(request.getParameter("joindate"));
			mdd.setZipcode(request.getParameter("zipcode"));
			mdd.setAddr1(request.getParameter("addr1"));
			mdd.setAddr2(request.getParameter("addr2"));
			mdd.setTel1(request.getParameter("tel1"));
			mdd.setTel2(request.getParameter("tel2"));
			mdd.setTel3(request.getParameter("tel3"));
			
			int cnt = memberService.registerMember(mdd);
			if(cnt != 0) {
				request.setAttribute("userInfo", mdd);
				
				RequestDispatcher dispatcher = request.getRequestDispatcher("/join/registerok.jsp");
				dispatcher.forward(request, response);			
			} else {
				response.sendRedirect(root + "/join/registerfail.jsp");
			}
			
		} else {
				response.sendRedirect(root + "/index.jsp");			
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		doGet(request, response);
	}

}
