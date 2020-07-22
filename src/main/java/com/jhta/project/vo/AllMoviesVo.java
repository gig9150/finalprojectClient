package com.jhta.project.vo;

public class AllMoviesVo {
	
	private String filmName; //영화명
	private int filmNum; //영화번호
	private String movieImgUrl; //영화이미지
	private int totalPeople; //관람객수
	private float rRate; //예매율
	private int totalSum; //총관람객수
	private float mRate; //평점
	
	public AllMoviesVo() {}

	public AllMoviesVo(String filmName, int filmNum, String movieImgUrl, int totalPeople, float rRate, int totalSum, float mRate) {
		this.filmName = filmName;
		this.filmNum = filmNum;
		this.movieImgUrl = movieImgUrl;
		this.totalPeople = totalPeople;
		this.rRate = rRate;
		this.totalSum = totalSum;
		this.mRate=mRate;
	}

	public float getrRate() {
		return rRate;
	}
	public void setrRate(float rRate) {
		this.rRate = rRate;
	}
	public int getTotalSum() {
		return totalSum;
	}
	public void setTotalSum(int totalSum) {
		this.totalSum = totalSum;
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
	
	public float getmRate() {
		return mRate;
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
	public void setmRate(float mRate) {
		this.mRate = mRate;
	}
}
