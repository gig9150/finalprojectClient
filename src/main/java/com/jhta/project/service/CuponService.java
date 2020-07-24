package com.jhta.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jhta.project.dao.AskDao;
import com.jhta.project.dao.CuponDao;
import com.jhta.project.dao.MembersDao;
import com.jhta.project.vo.AskVo;
import com.jhta.project.vo.CuponVo;
import com.jhta.project.vo.MembersVo;

@Service
public class CuponService {
	@Autowired
	private CuponDao cuponDao;
	
	public List<CuponVo> cuponList(int memNum){
		return cuponDao.cuponList(memNum);
	}

}
