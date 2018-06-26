package com.kitri.admin.board.service;

import java.util.List;

import com.kitri.admin.board.model.BoardListDto;
import com.kitri.admin.board.model.BoardTypeDto;
import com.kitri.admin.board.model.CategoryDto;

public interface BoardAdminService {
	
	List<CategoryDto> getCategory();
	void makeCategory(String cname);
	List<BoardTypeDto> getBoardType();
	List<BoardListDto> getBoardMenu();
	void makeBoard(BoardListDto boardListDto);
	
//	TODO ���߿� ī�װ�����, �Խ��� ���� �����	
}
