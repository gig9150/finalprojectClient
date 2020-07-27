package com.jhta.project.vo;

import java.util.Date;

public class LocationBranchListVo {
	private int mScheduleNum;
	private Date mStartTime;
	private int purchaseFilmNum;
	private int theatherNum;
	private int branchNum;
	private String filmName;
	private String theatherName;
	private String theatherSort;
	private int filmNum;
	private String brName;
	private Date regDates;
	private int cnt;

	public LocationBranchListVo() {}

	public LocationBranchListVo(int mScheduleNum, Date mStartTime, int purchaseFilmNum, int theatherNum, int branchNum,
			String filmName, String theatherName, String theatherSort, int filmNum, String brName,int cnt) {
		super();
		this.mScheduleNum = mScheduleNum;
		this.mStartTime = mStartTime;
		this.purchaseFilmNum = purchaseFilmNum;
		this.theatherNum = theatherNum;
		this.branchNum = branchNum;
		this.filmName = filmName;
		this.theatherName = theatherName;
		this.theatherSort = theatherSort;
		this.filmNum = filmNum;
		this.brName = brName;
		this.cnt=cnt;
	}
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	public String getTheatherSort() {
		return theatherSort;
	}

	public void setTheatherSort(String theatherSort) {
		this.theatherSort = theatherSort;
	}

	public int getmScheduleNum() {
		return mScheduleNum;
	}

	public void setmScheduleNum(int mScheduleNum) {
		this.mScheduleNum = mScheduleNum;
	}

	public Date getmStartTime() {
		return mStartTime;
	}

	public void setmStartTime(Date mStartTime) {
		this.mStartTime = mStartTime;
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
	
	
	public Date getRegDates() {
		return regDates;
	}

	public void setRegDates(Date regDates) {
		this.regDates = regDates;
	}
	
	
}
