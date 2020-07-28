package com.jhta.project.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jhta.project.vo.AskVo;

@Repository
public class AskDao {
	@Autowired
	private SqlSession session;
	private final String NAMESPASE = "com.jhta.mybatis.mapper.ask";
	
	public List<AskVo> askList(int memNum){
		return session.selectList(NAMESPASE+".askList",memNum);
	}

	public int count() {
		return session.selectOne(NAMESPASE+".count");
	}
}
