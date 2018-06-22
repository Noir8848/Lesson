package com.kitri.naver.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kitri.naver.dao.NaverDao;

@WebServlet("/searchkeyword")
public class SearchKeyword extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private NaverDao naverDao;
	
	public void init() {
		naverDao = new NaverDao();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String keyword = request.getParameter("keyword");
		naverDao.changeHit(keyword);
		response.sendRedirect(request.getContextPath() + "/index.jsp");
	}



}
