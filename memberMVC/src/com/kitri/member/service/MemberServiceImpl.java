package com.kitri.member.service;

import java.util.List;

import com.kitri.member.dao.MemberDao;
import com.kitri.member.dao.MemberDaoImpl;
import com.kitri.member.model.MemberDetailDto;
import com.kitri.member.model.MemberDto;
import com.kitri.member.model.ZipDto;

public class MemberServiceImpl implements MemberService {

	
	private MemberDao memberDao;
	
	public MemberServiceImpl() {
		memberDao = new MemberDaoImpl();
	}
	
	@Override
	public int idCheck(String id) {
		return memberDao.idCheck("id");
	}

	@Override
	public List<ZipDto> zipSearch(String dong) {
		return memberDao.zipSearch(dong);
	}

	@Override
	public int registerMember(MemberDetailDto member) {
		// TODO Auto-generated method stub
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
	public MemberDto login(String id, String pass) {
		// TODO Auto-generated method stub
		return null;
	}

}
