package com.jhta.project.vo;

public class AllMoviesVo {
	
	private String filmName; //��ȭ��
	private int filmNum; //��ȭ��ȣ
	private String movieImgUrl; //��ȭ�̹���
	private int totalPeople; //����������
	//private Float ReservationRate; //������
	//private Float movieGPA; //��ȭ����
	//private int countmReview;//��ȭ�����
	public AllMoviesVo() {}
	public AllMoviesVo(String filmName, int filmNum, String movieImgUrl, int totalPeople) {
		super();
		this.filmName = filmName;
		this.filmNum = filmNum;
		this.movieImgUrl = movieImgUrl;
		this.totalPeople = totalPeople;
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
	public int getTotalPeople() {
		return totalPeople;
	}
	public void setTotalPeople(int totalPeople) {
		this.totalPeople = totalPeople;
	}

	
	
}
