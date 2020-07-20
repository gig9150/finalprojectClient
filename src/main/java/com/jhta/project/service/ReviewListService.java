package com.jhta.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jhta.project.dao.ReviewListDao;
import com.jhta.project.vo.ReviewBoardVo;

@Service
public class ReviewListService {
	@Autowired
	private ReviewListDao reviewDao;
	public List<ReviewBoardVo> showReviews(){
		System.out.println("service진입");
		return reviewDao.showReviews();
	}
}
