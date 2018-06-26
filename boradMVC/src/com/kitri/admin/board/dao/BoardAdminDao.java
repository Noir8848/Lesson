package com.kitri.admin.board.dao;

import java.util.List;

import com.kitri.admin.board.model.BoardListDto;
import com.kitri.admin.board.model.BoardTypeDto;
import com.kitri.admin.board.model.CategoryDto;

public interface BoardAdminDao {
	
	List<CategoryDto> getCategory();
	void makeCategory(String cname);
	List<BoardTypeDto> getBoardType();
	List<BoardListDto> getBoardMenu();
	void makeBoard(BoardListDto boardListDto);
	
}
