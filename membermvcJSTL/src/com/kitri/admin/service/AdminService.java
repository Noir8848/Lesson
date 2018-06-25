package com.kitri.admin.service;

import java.util.List;

import com.kitri.member.model.MemberDetailDto;

public interface AdminService {

	List<MemberDetailDto> memberList(String key, String word);
	
}
