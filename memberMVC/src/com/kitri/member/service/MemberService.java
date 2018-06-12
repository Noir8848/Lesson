package com.kitri.member.service;

import com.kitri.member.model.MemberDetailDto;

public interface MemberService {

	boolean idCheck(MemberDTO.id, String id) {
		return;
	}
	
	zipSearch(memberDTO.zipcode){
		
	}
	
	registerMember(){
		 MemberDto.SetId(String id);
	}
	
	getMember();
	modifyMember();
	deleteMember();
	
	login();이름 아이디 이메일1 이메일2
}
