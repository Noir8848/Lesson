package com.kitri.member.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.kitri.member.model.MemberDetailDto;
import com.kitri.member.model.MemberDto;
import com.kitri.member.model.ZipDto;
import com.kitri.util.db.DBClose;
import com.kitri.util.db.DBConnection;

public class MemberDaoImpl implements MemberDao {

	@Override
	public int idCheck(String id) {
		int cnt = 1;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = DBConnection.makeConnection();
			String sql = "";
			sql += "select count(id) cnt \n";
			sql += "from member \n";
			sql += "where id = ?";//sql &에 해당하는 치환변수 표현
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			rs.next();
			cnt = rs.getInt(1);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return cnt;
	}

	@Override
	public List<ZipDto> zipSearch(String dong) {
		List<ZipDto> list = new ArrayList<ZipDto>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBConnection.makeConnection();
			String sql = "";
			sql += "select zipcode, sido || ' ' || gugun || ' ' || doro as address \n";
			sql += "from zipcode \n";
			sql += "where doro like '%'||?||'%'"; // ?는 ''필요없다.
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dong);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				ZipDto zipdto = new ZipDto();
				
				zipdto.setZipcode(rs.getString(1));
				zipdto.setAddress(rs.getString(2));
				
				list.add(zipdto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBClose.close(conn, pstmt, rs);
		}
		return list;
	}

	@Override
	public int registerMember(MemberDetailDto member) {
		int cnt = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBConnection.makeConnection();
			String sql = "";
			sql += "insert all into member(name, id, pass, email1, email2, sysdate) \n";
			sql += "values (?,?,?,?,?,sysdate) \n";
			sql += "into member_detail (id, zipcode, addr1, addr2, tel1, tel2, tel3) \n";
			sql += "values (?,?,?,?,?,sysdate)";
			sql += "select * from dual";
			pstmt = conn.prepareStatement(sql);
			int idx = 0;
			pstmt.setString(++idx, member.getName());
			pstmt.setString(++idx, member.getId());
			pstmt.setString(++idx, member.getPass());
			pstmt.setString(++idx, member.getEmail1());
			pstmt.setString(++idx, member.getEmail2());
			pstmt.setString(++idx, member.getId());
			pstmt.setString(++idx, member.getZipcode());
			pstmt.setString(++idx, member.getAddr1());
			pstmt.setString(++idx, member.getAddr2());
			pstmt.setString(++idx, member.getTel1());
			pstmt.setString(++idx, member.getTel2());
			pstmt.setString(++idx, member.getTel3());
			cnt = pstmt.executeUpdate();			

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBClose.close(conn, pstmt, rs);
		}
		return 0;
	}

	@Override
	public MemberDetailDto getMember(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int modifyMember(MemberDetailDto member) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void deleteMember(String id) {
		// TODO Auto-generated method stub

	}

	@Override
	public MemberDto login(Map<String, String> map) {
		// TODO Auto-generated method stub
		return null;
	}

}
