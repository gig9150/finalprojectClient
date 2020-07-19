package com.jhta.project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jhta.project.dao.MReviewDao;
import com.jhta.project.vo.MReviewVo;

@Service
public class MReviewService {
	@Autowired
	private MReviewDao mReviewDao;

	public int mreviewInsert(MReviewVo vo) {
		return mReviewDao.mreviewInsert(vo);
	}
	public int mreviewUpdate(MReviewVo vo) {
		return mReviewDao.mreviewUpdate(vo);
	}
	public int mreviewDelete(MReviewVo vo) {
		return mReviewDao.mreviewDelete(vo);
	}
}
