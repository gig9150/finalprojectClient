package com.jhta.project.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jhta.project.dao.AskDao;
import com.jhta.project.dao.MembersDao;
import com.jhta.project.vo.AskVo;
import com.jhta.project.vo.MembersVo;

@Service
public class AskService {
	@Autowired
	private AskDao askDao;
	
	public List<AskVo> askList(HashMap<String, Object> map){
		return askDao.askList(map);
	}

	public int askCount(int memNum) {
		return askDao.askCount(memNum);
	}
	
	public AskVo askGetinfo(int askNum) {
		return askDao.askGetinfo(askNum);
	}

}
