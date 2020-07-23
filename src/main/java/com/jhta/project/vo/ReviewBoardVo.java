package com.jhta.project.vo;

import java.sql.Date;
//리뷰게시판 화면단에 필요한 정보들..
public class ReviewBoardVo {
	private String memName; //회원이름
	private int mScore; //영화평점
	private String rContent; //리뷰내용
	private int likeTotal; // 좋아요 갯수
	private Date mReviewDate; //리뷰작성날짜
	public ReviewBoardVo() {
	}
	public ReviewBoardVo(String memName, int mScore, String rContent, int likeTotal, Date mReviewDate) {
		this.memName = memName;
		this.mScore = mScore;
		this.rContent = rContent;
		this.likeTotal = likeTotal;
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
	public int getLikeTotal() {
		return likeTotal;
	}
	public void setLikeTotal(int likeTotal) {
		this.likeTotal = likeTotal;
	}
	public Date getmReviewDate() {
		return mReviewDate;
	}
	public void setmReviewDate(Date mReviewDate) {
		this.mReviewDate = mReviewDate;
	}
	
	
}
