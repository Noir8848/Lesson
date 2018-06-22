package com.kitri.naver.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.kitri.naver.model.KeywordDto;
import com.kitri.util.db.DBClose;
import com.kitri.util.db.DBConnection;

public class NaverDao {

	public List<KeywordDto> keywordList(String keyword) {
		List<KeywordDto> list = new ArrayList<KeywordDto>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBConnection.makeConnection();
			StringBuffer sql = new StringBuffer();
			sql.append("select * \n");
			sql.append("from search\n");
			sql.append("where case when keyword < 'ㄱ' then upper(substr(keyword, 1, 1)) \n");
			sql.append("            when ascii('ㄱ') <= ascii(keyword) and \n");
			sql.append("                 ascii(keyword)<= ascii('ㅎ') then keyword \n");
			sql.append("            when keyword < '나' then 'ㄱ'\n");
			sql.append("            when keyword < '다' then 'ㄴ'\n");
			sql.append("            when keyword < '라' then 'ㄷ'\n");
			sql.append("            when keyword < '마' then 'ㄹ'\n");
			sql.append("            when keyword < '바' then 'ㅁ'\n");
			sql.append("            when keyword < '사' then 'ㅂ'\n");
			sql.append("            when keyword < '아' then 'ㅅ'\n");
			sql.append("            when keyword < '자' then 'ㅇ'\n");
			sql.append("            when keyword < '차' then 'ㅈ'\n");
			sql.append("            when keyword < '카' then 'ㅊ'\n");
			sql.append("            when keyword < '타' then 'ㅋ'\n");
			sql.append("            when keyword < '파' then 'ㅌ'\n");
			sql.append("            when keyword < '하' then 'ㅍ'\n");
			sql.append("            else 'ㅎ'\n");
			sql.append("       end = upper(?)\n");
			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setString(1, keyword);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				KeywordDto keywordDto = new KeywordDto();
				keywordDto.setSeq(rs.getInt("seq"));
				keywordDto.setKeyword(rs.getString("keyword"));
				keywordDto.setHit(rs.getInt("hit"));
				
				list.add(keywordDto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBClose.close(conn, pstmt, rs);
		}
		return list;
	}
	

	public List<KeywordDto> currentRank() {
		List<KeywordDto> list = new ArrayList<KeywordDto>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBConnection.makeConnection();
			StringBuffer sql = new StringBuffer();
			sql.append("select rownum rank, a.* \n");
			sql.append("from ( \n");
			sql.append("	select seq, keyword, hit  \n");
			sql.append("	from search \n");
			sql.append("	order by hit desc \n");
			sql.append("	) a \n");
			sql.append("where rownum < 11 \n");
			pstmt = conn.prepareStatement(sql.toString());
			rs = pstmt.executeQuery();
			while(rs.next()) {
				KeywordDto keywordDto = new KeywordDto();
				keywordDto.setRank(rs.getInt("rank"));
				keywordDto.setSeq(rs.getInt("seq"));
				keywordDto.setKeyword(rs.getString("keyword"));
				keywordDto.setHit(rs.getInt("hit"));
				
				list.add(keywordDto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBClose.close(conn, pstmt, rs);
		}
		return list;
	}


	public void changeHit(String keyword) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBConnection.makeConnection();
			StringBuffer sql = new StringBuffer();
			sql.append("merge into search \n");
			sql.append("using dual \n");
			sql.append("on (keyword like '%'||?||'%') \n");
			sql.append("when matched then \n");
			sql.append("update set hit = hit + 1 \n");
			sql.append("when not matched then \n");
			sql.append("insert (seq, keyword, hit) \n");
			sql.append("values (search_seq.nextval, ?, 1) \n");
			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setString(1, keyword);
			pstmt.setString(2, keyword);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBClose.close(conn, pstmt);
		}
	}
}
