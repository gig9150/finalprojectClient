package com.jhta.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jhta.project.dao.AskDao;
import com.jhta.project.vo.AskVo;

@Service
public class AskService {
	@Autowired
	private AskDao askDao;
	
	public List<AskVo> askList(int memNum){
		return askDao.askList(memNum);
	}

	public int count() {
		return askDao.count();
	}
}
