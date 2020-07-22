package com.jhta.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jhta.project.dao.LocationListDao;
import com.jhta.project.vo.LocationListVo;
import com.jhta.project.vo.ProposalVo;

@Service
public class LocationListService {
	@Autowired
	private LocationListDao dao;
	
	public LocationListVo locatedList(String cityAddr){
		return dao.locatedList(cityAddr);
	}
	
	public List<ProposalVo> list() {
		return dao.list();
	}
	
}
