package com.jhta.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jhta.project.dao.TicketingDao;
import com.jhta.project.vo.TicketingVo;

@Service
public class TicketingService {
	@Autowired
	private TicketingDao ticketingDao;

	public List<TicketingVo> ticketingtList(int memNum){
		return ticketingDao.ticketingtList(memNum);
	}
	
}
