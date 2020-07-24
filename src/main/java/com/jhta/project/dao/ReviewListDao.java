package com.jhta.project.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jhta.project.vo.ReviewBoardVo;

@Repository
public class ReviewListDao {
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE="com.jhta.mybatis.mapper.mreview";
	public List<ReviewBoardVo> showReviews(HashMap<String, Object> map){
		System.out.println("dao진입");
		return sqlSession.selectList(NAMESPACE+".reviewList",map);
	}
	
	//한페이지에 노출되는 행의 개수 구하기
	public int count(int filmNum) {
		return sqlSession.selectOne(NAMESPACE +".count",filmNum);
	}
}
