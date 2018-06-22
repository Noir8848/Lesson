package com.kitri.member.service;

import java.util.List;

import com.kitri.member.model.*;

public interface MemberService {

	int idCheck(String id);
	List<ZipDto> zipSearch(String dong);
	int registerMember(MemberDetailDto memberDetailDto);
	MemberDetailDto getMember(String id);
	int modifyMember(MemberDetailDto memberDetailDto);
	void deleteMember(String id);
	
	MemberDto login(String id, String pass);
	
}
