package com.kitri.member.dao;

import java.util.List;
import java.util.Map;

import com.kitri.member.model.MemberDetailDto;
import com.kitri.member.model.ZipDto;
import com.kitri.member.model.MemberDto;

public interface MemberDao {

	int idCheck(String id);
	
	List<ZipDto> zipSearch(String dong);
	
	int registerMember(MemberDetailDto member);
	
	MemberDetailDto getMember(String id);
	
	int modifyMember(MemberDetailDto member);
	
	void deleteMember(String id);
	
	MemberDto login(Map<String, String> map);
	
}
