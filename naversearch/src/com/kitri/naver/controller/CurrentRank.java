package com.kitri.naver.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kitri.naver.dao.NaverDao;
import com.kitri.naver.model.KeywordDto;


@WebServlet("/rank")
public class CurrentRank extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private NaverDao naverDao;
	
	public void init() {
		naverDao = new NaverDao();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<KeywordDto> list = naverDao.currentRank();
		request.setAttribute("ranklist", list);
		RequestDispatcher dispatcher = request.getRequestDispatcher("ranklist.jsp");
		dispatcher.forward(request, response);
	}


}
