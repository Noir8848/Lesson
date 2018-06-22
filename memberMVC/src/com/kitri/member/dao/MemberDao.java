package com.kitri.member.dao;

import java.util.List;
import java.util.Map;

import com.kitri.member.model.*;

public interface MemberDao {

	int idCheck(String id);
	List<ZipDto> zipSearch(String dong);
	int registerMember(MemberDetailDto memberDetailDto);
	MemberDetailDto getMember(String id);
	int modifyMember(MemberDetailDto memberDetailDto);
	void deleteMember(String id);
	
	MemberDto login(Map<String, String> map);
	
}
