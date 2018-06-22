package com.kitri.admin.dao;

import java.sql.*;
import java.util.*;

import com.kitri.member.model.MemberDetailDto;
import com.kitri.util.db.DBClose;
import com.kitri.util.db.DBConnection;

public class AdminDaoImpl implements AdminDao {

	@Override
	public List<MemberDetailDto> memberList(Map<String, String> map) {
		List<MemberDetailDto> list = new ArrayList<MemberDetailDto>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBConnection.makeConnection();
			String sql = "";
			sql += "select m.id, m.name, m.email1, m.email2, m.joindate, ";
			sql += "		d.zipcode, d.addr1, d.addr2, d.tel1, d.tel2, d.tel3 \n";
			sql += "from member m, member_detail d \n";
			sql += "where m.id = d.id";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				MemberDetailDto memberDetailtDto = new MemberDetailDto();
				memberDetailtDto.setId(rs.getString("id"));
				memberDetailtDto.setName(rs.getString("name"));
				memberDetailtDto.setEmail1(rs.getString("email1"));
				memberDetailtDto.setEmail2(rs.getString("email2"));
				memberDetailtDto.setJoindate(rs.getString("joindate"));
				memberDetailtDto.setZipcode(rs.getString("zipcode"));
				memberDetailtDto.setAddr1(rs.getString("addr1"));
				memberDetailtDto.setAddr2(rs.getString("addr2"));
				memberDetailtDto.setTel1(rs.getString("tel1"));
				memberDetailtDto.setTel2(rs.getString("tel2"));
				memberDetailtDto.setTel3(rs.getString("tel3"));
				
				list.add(memberDetailtDto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBClose.close(conn, pstmt, rs);
		}
		return list;
	}

}
