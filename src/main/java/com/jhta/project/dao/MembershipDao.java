package com.jhta.project.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jhta.project.vo.MembersVo;
import com.jhta.project.vo.MembershipVo;

@Repository
public class MembershipDao {
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE="com.jhta.mybatis.mapper.membership";
	
	public MembershipVo memGetinfo(int memNum) {
		return sqlSession.selectOne(NAMESPACE+".getinfo",memNum);
	}
}
