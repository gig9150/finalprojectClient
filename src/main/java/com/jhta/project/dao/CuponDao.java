package com.jhta.project.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jhta.project.vo.AskVo;
import com.jhta.project.vo.CuponVo;

@Repository
public class CuponDao {
	@Autowired
	private SqlSession session;
	private final String NAMESPASE = "com.jhta.mybatis.mapper.cupon";
	
	public List<CuponVo> cuponList(){
		return session.selectList(NAMESPASE+".list");
	}
	
}
