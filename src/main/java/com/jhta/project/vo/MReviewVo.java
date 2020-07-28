package com.jhta.project.vo;

public class MReviewVo {
	private int mReviewNum;
	private String rContent;
	private int likeTotal;
	private int mScore;
	private int memNum;
	private int filmNum;
	private int chargeNum;
	private String reviewregdate;
	
	public MReviewVo() {
		super();
	}

	public MReviewVo(int mReviewNum, String rContent, int likeTotal, int mScore, int memNum, int filmNum, int chargeNum,
			String reviewregdate) {
		super();
		this.mReviewNum = mReviewNum;
		this.rContent = rContent;
		this.likeTotal = likeTotal;
		this.mScore = mScore;
		this.memNum = memNum;
		this.filmNum = filmNum;
		this.chargeNum = chargeNum;
		this.reviewregdate = reviewregdate;
	}

	public int getmReviewNum() {
		return mReviewNum;
	}

	public void setmReviewNum(int mReviewNum) {
		this.mReviewNum = mReviewNum;
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

	public int getmScore() {
		return mScore;
	}

	public void setmScore(int mScore) {
		this.mScore = mScore;
	}

	public int getMemNum() {
		return memNum;
	}

	public void setMemNum(int memNum) {
		this.memNum = memNum;
	}

	public int getFilmNum() {
		return filmNum;
	}

	public void setFilmNum(int filmNum) {
		this.filmNum = filmNum;
	}

	public int getChargeNum() {
		return chargeNum;
	}

	public void setChargeNum(int chargeNum) {
		this.chargeNum = chargeNum;
	}

	public String getReviewregdate() {
		return reviewregdate;
	}

	public void setReviewregdate(String reviewregdate) {
		this.reviewregdate = reviewregdate;
	}

}
