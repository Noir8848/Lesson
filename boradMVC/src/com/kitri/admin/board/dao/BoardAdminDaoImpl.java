package com.kitri.admin.board.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.kitri.admin.board.model.BoardListDto;
import com.kitri.admin.board.model.BoardTypeDto;
import com.kitri.admin.board.model.CategoryDto;
import com.kitri.util.db.DBClose;
import com.kitri.util.db.DBConnection;

public class BoardAdminDaoImpl implements BoardAdminDao {

	private static BoardAdminDao boardAdminDao;

	static {
		boardAdminDao = new BoardAdminDaoImpl();
	}

	private BoardAdminDaoImpl() {
	}

	public static BoardAdminDao getBoardAdminDao() {
		return boardAdminDao;
	}

	@Override
	public List<BoardListDto> getBoardMenu() {
		List<BoardListDto> menu = new ArrayList<BoardListDto>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBConnection.makeConnection();
			StringBuffer sql = new StringBuffer();
			sql.append("select b.bcode, b.bname, b.btype, c.ccode, c.cname\n");
			sql.append("from board_list b, category c\n");
			sql.append("where b.ccode = c.ccode\n");
			sql.append("order by bcode asc");
			pstmt = conn.prepareStatement(sql.toString());
			rs = pstmt.executeQuery();
			while (rs.next()) {
				BoardListDto boardListDto = new BoardListDto();
				boardListDto.setBcode(rs.getInt("Bcode"));
				boardListDto.setBname(rs.getString("Bname"));
				boardListDto.setBtype(rs.getInt("Btype"));
				boardListDto.setCcode(rs.getInt("Ccode"));
				boardListDto.setCname(rs.getString("Cname"));
				menu.add(boardListDto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBClose.close(conn, pstmt, rs);
		}
		return menu;
	}

	@Override
	public List<CategoryDto> getCategory() {
		return null;
	}

	@Override
	public void makeCategory(String cname) {

	}

	@Override
	public List<BoardTypeDto> getBoardType() {
		return null;
	}

	@Override
	public void makeBoard(BoardListDto boardListDto) {

	}

}
