package com.jhta.project.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jhta.project.dao.LeftSeatDao;
import com.jhta.project.dao.LocationDao;
import com.jhta.project.vo.LocationBranchListVo;
import com.jhta.project.vo.LocationListVo;
import com.jhta.project.vo.ProposalVo;

@Service
public class LocationService {
	@Autowired
	private LocationDao dao;
	@Autowired
	private LeftSeatDao dao2;
	
	public LocationListVo locatedList(String cityAddr){
		return dao.locatedList(cityAddr);
	}
	
	public List<ProposalVo> list() {
		return dao.list();
	}
	
	public List<LocationBranchListVo> locMovieList(HashMap<String,Object> map){
		return dao.locMovieList(map);
	}
	
	public List<HashMap<String, Object>> scount(int branchNum){
		return dao2.scount(branchNum);
	}
	
	public int left(HashMap<String, Integer> map) {
		return dao2.left(map);
	}
	
}
