package com.kitri.member.service;

import java.util.List;

import com.kitri.member.model.MemberDetailDto;
import com.kitri.member.model.MemberDto;
import com.kitri.member.model.ZipDto;

public interface MemberService {

	int idCheck(String id);
	
	List<ZipDto> zipSearch(String dong);
	
	int registerMember(MemberDetailDto member);
	
	MemberDetailDto getMember(String id);
	
	int modifyMember(MemberDetailDto member);
	
	void deleteMember(String id);
	
	MemberDto login(String id, String pass);
}
