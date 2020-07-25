package com.jhta.project.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jhta.project.vo.AskVo;

@Repository
public class AskDao {
	@Autowired
	private SqlSession session;
	private final String NAMESPACE = "com.jhta.mybatis.mapper.ask";
	
	public List<AskVo> askList(HashMap<String, Object> map){
		return session.selectList(NAMESPACE+".askList",map);
	}

	public int askCount(int memNum) {
		return session.selectOne(NAMESPACE+".count",memNum);
	}
	
	public AskVo askGetinfo(int askNum) {
		return session.selectOne(NAMESPACE+".askGetinfoClient",askNum);
	}
	
}
