package com.jhta.project.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jhta.project.vo.MReviewVo;

@Repository
public class MReviewDao {
	@Autowired
	private SqlSession session;
	private final String NAMESPASE = "com.jhta.mybatis.mapper.mreview";
	
	public int mreviewInsert(MReviewVo vo) {
		return session.insert(NAMESPASE+".insert",vo);
	}
	public int mreviewUpdate(MReviewVo vo) {
		return session.update(NAMESPASE+".update",vo);
	}
	public int mreviewDelete(MReviewVo vo) {
		return session.delete(NAMESPASE+".delete",vo);
	}
}
