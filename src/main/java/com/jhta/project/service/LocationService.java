package com.jhta.project.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jhta.project.dao.LocationDao;
import com.jhta.project.vo.LocationListVo;
import com.jhta.project.vo.ProposalVo;

@Service
public class LocationService {
	@Autowired
	private LocationDao dao;
	
	public LocationListVo locatedList(String cityAddr){
		return dao.locatedList(cityAddr);
	}
	
	public List<ProposalVo> list() {
		return dao.list();
	}
	
	public List<LocationListVo> locMovieList(HashMap<String,Object> map){
		return dao.locMovieList(map);
	}
	
}
