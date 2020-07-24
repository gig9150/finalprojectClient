package com.jhta.project.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jhta.project.dao.ReviewListDao;
import com.jhta.project.vo.ReviewBoardVo;

@Service
public class ReviewListService {
	@Autowired
	private ReviewListDao reviewDao;
	public List<ReviewBoardVo> showReviews(HashMap<String, Object> map){
		System.out.println("service진입");
		return reviewDao.showReviews(map);
	}
	
	public int count(int filmNum) {
		return reviewDao.count(filmNum);
	}
}
