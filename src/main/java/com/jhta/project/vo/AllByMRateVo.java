package com.jhta.project.vo;
//평점별 영화명, 번호, 이미지 담아주는 vo
public class AllByMRateVo {
	private String filmName; //영화명
	private int filmNum; //영화번호
	private String movieImgUrl; //영화이미지
	private float mRate;//평점
	public AllByMRateVo() {}
	public AllByMRateVo(String filmName, int filmNum, String movieImgUrl, float mRate) {
		this.filmName = filmName;
		this.filmNum = filmNum;
		this.movieImgUrl = movieImgUrl;
		this.mRate = mRate;
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
	public float getmRate() {
		return mRate;
	}
	public void setmRate(float mRate) {
		this.mRate = mRate;
	}

}
