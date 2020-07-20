package com.jhta.project.vo;

import java.sql.Date;
//리뷰게시판 화면단에 필요한 정보들..
public class ReviewBoardVo {
	private String memName; //회원이름
	private int mScore; //영화평점
	private String rContent; //리뷰내용
	private int liketotal; // 좋아요 갯수
	private Date mreviewDate; //리뷰작성날짜
	
	public ReviewBoardVo() {
	}
	public ReviewBoardVo(String memName, int mScore, String rContent, int liketotal, Date mreviewDate) {
		this.memName = memName;
		this.mScore = mScore;
		this.rContent = rContent;
		this.liketotal = liketotal;
		this.mreviewDate = mreviewDate;
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
	public int getLiketotal() {
		return liketotal;
	}
	public void setLiketotal(int liketotal) {
		this.liketotal = liketotal;
	}
	public Date getMreviewDate() {
		return mreviewDate;
	}
	public void setMreviewDate(Date mreviewDate) {
		this.mreviewDate = mreviewDate;
	}
	
	
}
