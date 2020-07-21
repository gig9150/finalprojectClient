package com.jhta.project.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jhta.project.vo.MReviewVo;
import com.jhta.project.vo.MovieSawVo;
import com.jhta.project.vo.TicketingVo;

@Repository
public class TicketingDao {
	@Autowired
	private SqlSession session;
	private final String NAMESPASE = "com.jhta.mybatis.mapper.ticketing";
	
	public List<TicketingVo> ticketingtList(int memNum){
		return session.selectList(NAMESPASE+".ticketingtList",memNum);
	}
}
