package com.jhta.project.vo;

public class AllByMReviewVo {
	private String filmName; //��ȭ��
	private int filmNum; //��ȭ��ȣ
	private String movieImgUrl; //��ȭ�̹���
	private int countmReview;//��ȭ�����
	
	public AllByMReviewVo() {}
	public AllByMReviewVo(String filmName, int filmNum, String movieImgUrl, int countmReview) {
		this.filmName = filmName;
		this.filmNum = filmNum;
		this.movieImgUrl = movieImgUrl;
		this.countmReview = countmReview;
	}
	public String getFilmName() {
		return filmName;
	}
	public void setFilmName(String filmName) {
		this.filmName = filmName;
	}
	public int getFilmNum() {
		return filmNum;
	}
	public void setFilmNum(int filmNum) {
		this.filmNum = filmNum;
	}
	public String getMovieImgUrl() {
		return movieImgUrl;
	}
	public void setMovieImgUrl(String movieImgUrl) {
		this.movieImgUrl = movieImgUrl;
	}
	public int getCountmReview() {
		return countmReview;
	}
	public void setCountmReview(int countmReview) {
		this.countmReview = countmReview;
	}
	
}
