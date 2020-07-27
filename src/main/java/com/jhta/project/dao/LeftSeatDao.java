package com.jhta.project.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class LeftSeatDao {
	@Autowired
	private SqlSessionTemplate sqlSession;
	private final String NAMESPACE="com.jhta.mybatis.mapper.seat";
	
	public List<HashMap<String, Object>> scount(int branchNum){
		HashMap<String, Object> map=new HashMap<String, Object>();
		map.put("branchNum", branchNum);
		return sqlSession.selectList(NAMESPACE+".scount",map);
	}
	
	public int left(HashMap<String, Integer> map) {
		return sqlSession.selectOne(NAMESPACE+".leftseat", map);
	}

	
	
}
