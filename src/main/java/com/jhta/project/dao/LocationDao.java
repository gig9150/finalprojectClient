package com.jhta.project.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jhta.project.vo.LocationBranchListVo;
import com.jhta.project.vo.LocationListVo;
import com.jhta.project.vo.ProposalVo;

@Repository
public class LocationDao {
	@Autowired
	private SqlSessionTemplate sqlSession;
	private final String NAMESPACE = "com.jhta.mybatis.mapper.locationlist";
	
	public LocationListVo locatedList(String cityAddr){
		return sqlSession.selectOne(NAMESPACE+".citylist", cityAddr);
	}
	
	public List<ProposalVo> list() {
		return sqlSession.selectList(NAMESPACE+".list");
	}
	
	public List<LocationBranchListVo> locMovieList(HashMap<String,Object> map) {
		return sqlSession.selectList(NAMESPACE+".locmovielist", map);
	}
	
	
	
}
