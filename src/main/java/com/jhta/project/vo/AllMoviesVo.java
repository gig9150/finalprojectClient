package com.jhta.project.vo;

public class AllMoviesVo {
	
	private String filmName; //영화명
	private int filmNum; //영화번호
	private String movieImgUrl; //영화이미지
	private int totalPeople; //누적관객수
	//private Float ReservationRate; //예매율
	//private Float movieGPA; //영화평점
	//private int countmReview;//영화리뷰수
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
