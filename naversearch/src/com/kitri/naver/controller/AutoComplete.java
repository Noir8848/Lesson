package com.kitri.naver.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kitri.naver.dao.NaverDao;
import com.kitri.naver.model.KeywordDto;

@WebServlet("/auto")
public class AutoComplete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private List<KeywordDto> list;
	private NaverDao naverDao;
	
	public void init() {
		naverDao = new NaverDao();
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String firstkey = request.getParameter("firstkey");
		String keyword = request.getParameter("keyword");		
		System.out.println(firstkey + " ::::::::::: " + keyword);
		
		String result = "";
		if("dbgo".equals(firstkey)) {
			list = naverDao.keywordList(keyword);
			int size = list.size();
			System.out.println("size ----- " + size);
			result += size + "|";
				for(int i = 0; i<size;i++) {
					KeywordDto keywordDto = list.get(i);
					result += keywordDto.getKeyword();
					if(i < size - 1)
						result += ",";
				}				
		} else {
			List<String> resultlist = new ArrayList<String>();
			for(KeywordDto keywordDto : list) {
				String str = keywordDto.getKeyword();
				if(str.toUpperCase().startsWith(keyword.toUpperCase())) {
					resultlist.add(str);
				}
			}
			int size = resultlist.size();
			result += size + "|";
			for(int i=0 ; i<size ; i++) {
				String str = resultlist.get(i);
				if(i<size - 1)
					result += ",";
			}
		}
		
		response.setContentType("text/plain;charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.print(result);
	}

}
