package com.jhta.project.vo;

import java.util.Date;

public class LocationBranchListVo {
	private int mScheduleNum;
	private Date mStarTime;
	private int purchaseFilmNum;
	private int theatherNum;
	private int branchNum;
	private String filmName;
	private String theatherName;
	private int filmNum;
	private String brName;
	
	public LocationBranchListVo() {}

	public LocationBranchListVo(int mScheduleNum, Date mStarTime, int purchaseFilmNum, int theatherNum, int branchNum,
			String filmName, String theatherName, int filmNum, String brName) {
		super();
		this.mScheduleNum = mScheduleNum;
		this.mStarTime = mStarTime;
		this.purchaseFilmNum = purchaseFilmNum;
		this.theatherNum = theatherNum;
		this.branchNum = branchNum;
		this.filmName = filmName;
		this.theatherName = theatherName;
		this.filmNum = filmNum;
		this.brName = brName;
	}

	public int getmScheduleNum() {
		return mScheduleNum;
	}

	public void setmScheduleNum(int mScheduleNum) {
		this.mScheduleNum = mScheduleNum;
	}

	public Date getmStarTime() {
		return mStarTime;
	}

	public void setmStarTime(Date mStarTime) {
		this.mStarTime = mStarTime;
	}

	public int getPurchaseFilmNum() {
		return purchaseFilmNum;
	}

	public void setPurchaseFilmNum(int purchaseFilmNum) {
		this.purchaseFilmNum = purchaseFilmNum;
	}

	public int getTheatherNum() {
		return theatherNum;
	}

	public void setTheatherNum(int theatherNum) {
		this.theatherNum = theatherNum;
	}

	public int getBranchNum() {
		return branchNum;
	}

	public void setBranchNum(int branchNum) {
		this.branchNum = branchNum;
	}

	public String getFilmName() {
		return filmName;
	}

	public void setFilmName(String filmName) {
		this.filmName = filmName;
	}

	public String getTheatherName() {
		return theatherName;
	}

	public void setTheatherName(String theatherName) {
		this.theatherName = theatherName;
	}

	public int getFilmNum() {
		return filmNum;
	}

	public void setFilmNum(int filmNum) {
		this.filmNum = filmNum;
	}

	public String getBrName() {
		return brName;
	}

	public void setBrName(String brName) {
		this.brName = brName;
	}
	
	
	
	
}
