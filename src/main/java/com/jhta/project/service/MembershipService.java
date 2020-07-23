package com.jhta.project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jhta.project.dao.MembershipDao;
import com.jhta.project.vo.MembersVo;
import com.jhta.project.vo.MembershipVo;

@Service
public class MembershipService {
	@Autowired
	private MembershipDao membershipDao;
	
	public MembershipVo memGetinfo(int memNum) {
		return membershipDao.memGetinfo(memNum);
	}
	

}









