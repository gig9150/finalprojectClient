package com.jhta.project.vo;

import java.sql.Date;

//리뷰게시판 정보 담고 있는 vo
public class ReviewInfoVo {
	private String memName; //회원이름
	private int mScore; //평점
	private String rContent; //댓글내용
	private Date mReviewDate; //댓글날짜
	
	public ReviewInfoVo() {}
	public ReviewInfoVo(String memName, int mScore, String rContent, Date mReviewDate) {
		this.memName = memName;
		this.mScore = mScore;
		this.rContent = rContent;
		this.mReviewDate = mReviewDate;
	}
	
	public String getMemName() {
		return memName;
	}
	public void setMemName(String memName) {
		this.memName = memName;
	}
	public int getmScore() {
		return mScore;
	}
	public void setmScore(int mScore) {
		this.mScore = mScore;
	}
	public String getrContent() {
		return rContent;
	}
	public void setrContent(String rContent) {
		this.rContent = rContent;
	}
	public Date getmReviewDate() {
		return mReviewDate;
	}
	public void setmReviewDate(Date mReviewDate) {
		this.mReviewDate = mReviewDate;
	}
	
}
