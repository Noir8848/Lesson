package com.kitri.admin.service;

import java.util.*;

import com.kitri.admin.dao.AdminDao;
import com.kitri.admin.dao.AdminDaoImpl;
import com.kitri.member.model.MemberDetailDto;

public class AdminServiceImpl implements AdminService {

	private AdminDao adminDao;
	
	public AdminServiceImpl() {
		adminDao = new AdminDaoImpl();
	}
	
	@Override
	public List<MemberDetailDto> memberList(String key, String word) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("key", key);
		map.put("word", word);
		return adminDao.memberList(map);
	}

}
