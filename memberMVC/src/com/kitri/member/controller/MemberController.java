package com.kitri.member.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kitri.member.model.MemberDetailDto;
import com.kitri.member.model.MemberDto;
import com.kitri.member.model.ZipDto;
import com.kitri.member.service.MemberService;
import com.kitri.member.service.MemberServiceImpl;
import com.kitri.util.PageMove;

@WebServlet("/user")
public class MemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private MemberService memberService;

	public void init() {
		memberService = new MemberServiceImpl();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String root = request.getContextPath();

		String act = request.getParameter("act");
		System.out.println("act ==== " + act);

		if ("mvjoin".equals(act)) {
			response.sendRedirect(root + "/join/member.jsp");
		} else if ("mvlogin".equals(act)) {
			response.sendRedirect(root + "/login/login.jsp");
		} else if ("mvidcheck".equals(act)) {
			response.sendRedirect(root + "/join/idcheck.jsp");
		} else if ("idsearch".equals(act)) {
			String id = request.getParameter("id");
			System.out.println("검색 아이디 : " + id);
			int cnt = memberService.idCheck(id);
			response.sendRedirect(root + "/join/idcheck.jsp?id=" + id + "&cnt=" + cnt);
		} else if ("mvzip".equals(act)) {
			response.sendRedirect(root + "/join/zipsearch.jsp");
		} else if ("zipsearch".equals(act)) {
			String dong = request.getParameter("dong");
			System.out.println("검색 동이름 : " + dong);
			List<ZipDto> list = memberService.zipSearch(dong);
			System.out.println("검색동 갯수 : " + list.size());
			request.setAttribute("zipList", list);
			request.setAttribute("searchDong", dong);

			PageMove.forward(request, response, "/join/zipsearch.jsp");
		} else if ("register".equals(act)) {
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
			if (cnt != 0) {
				request.setAttribute("userInfo", mdd);

				RequestDispatcher dispatcher = request.getRequestDispatcher("/join/registerok.jsp");
				dispatcher.forward(request, response);
			} else {
				PageMove.redirect(request, response, "/join/registerfail.jsp");
			}

		} else if ("login".equals(act)) {
			String id = request.getParameter("id");
			String pass = request.getParameter("pass");

			MemberDto memberDto = memberService.login(id, pass);
			if (memberDto != null) {

				// cookie
				if ("saveok".equals(request.getParameter("idsave"))) {
					System.out.println("아이디 저장한다.");
					Cookie cookie = new Cookie("loginid", id);
					cookie.setPath(root);
					cookie.setMaxAge(60 * 60 * 24 * 365 * 10);

					response.addCookie(cookie);
				} else {
					Cookie[] cookie = request.getCookies();
					if (cookie != null) {
						int len = cookie.length;
						for (int i = 0; i < len; i++) {
							if ("loginid".equals(cookie[i].getName())) {
								cookie[i].setPath(root);
								cookie[i].setMaxAge(0);

								response.addCookie(cookie[i]);
								break;
							}
						}
					}
				}

				// cookie end
				
				// session
				
				HttpSession session = request.getSession();
				session.setAttribute("userInfo", memberDto);
				
				// session end

				request.setAttribute("userInfo", memberDto);

				RequestDispatcher dispatcher = request.getRequestDispatcher("/login/loginok.jsp");
				dispatcher.forward(request, response);
			} else {
				response.sendRedirect(root + "/login/loginfail.jsp");
				
			}
		} else if ("mvmaillist".equals(act)) {
				List<String> mail = new ArrayList<String>();
				mail.add("동주가 보낸 메일");
				mail.add("동주1가 보낸 메일");
				mail.add("동주2가 보낸 메일");
				mail.add("동주3가 보낸 메일");
				mail.add("동주4가 보낸 메일");
				mail.add("동주5가 보낸 메일");
				
				
		} else if ("logout".equals(act)) {
				HttpSession session = request.getSession();
//				session.setAttribute("userInfo", null);
				session.removeAttribute("userInfo"); //값 일일이 초기화
//				session.invalidate(); 전체 초기화, 하지만 로그인 세션도 풀림
				PageMove.redirect(request, response, "/index.jsp");
				
		} else if("advertiseok".equals(act)) {
			String ad = request.getParameter("advertiseok");
			Cookie cookie = new Cookie("advertiseok", ad);
			cookie.setPath(root);
			cookie.setMaxAge(24*60*60);
			System.out.println("쿠키");
			
			response.addCookie(cookie);
		} else {
			response.sendRedirect(root + "/index.jsp");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		doGet(request, response);
	}

}
