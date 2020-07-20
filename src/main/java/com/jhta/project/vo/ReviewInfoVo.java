package com.jhta.project.vo;

import java.sql.Date;

//����Խ��� ���� ��� �ִ� vo
public class ReviewInfoVo {
	private String memName; //ȸ���̸�
	private int mScore; //����
	private String rContent; //��۳���
	private Date mReviewDate; //��۳�¥
	
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
