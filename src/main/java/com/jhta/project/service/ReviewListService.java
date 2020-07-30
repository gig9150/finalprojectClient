package com.jhta.project.service;

import java.math.BigDecimal;
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
	
	//총 관람평 갯수 출력
	public int count(int filmNum) {
		return reviewDao.count(filmNum);
	}
	
	//총 평점 구하는 함수
	public int movieGrade(int filmNum) {
		return reviewDao.movieGrade(filmNum);
	}
	
	//관람평작성 누르면 진입하는 함수
	public HashMap<String, BigDecimal> chkReview(int filmNum, int memNum){
		return reviewDao.chkReview(filmNum, memNum);
	}
	
	//관람평 작성 조건에 부합하면 리뷰테이블에 insert 시키는 함수
	public int insertMReview(int filmNum, int memNum, int mScore, String rContent, int chargeNum){
		return reviewDao.insertMReview(filmNum, memNum, mScore, rContent, chargeNum);
	}
}
