package com.jhta.project.vo;

import java.sql.Date;

//영화상세정보 페이지 정보담은 VO
public class MovieDetailVo {
	private int filmNum; //영화번호
	private String filmName; //영화이름
	private String genreName; //장르이름
	private Date filmStart; //개봉일
	private String filmHead; //감독
	private String castName; //출연진
	private String filmStory; //줄거리
	
	
	public MovieDetailVo() {}
	public MovieDetailVo(int filmNum, String filmName, String genreName, Date filmStart, String filmHead,
			String castName, String filmStory) {
		this.filmNum = filmNum;
		this.filmName = filmName;
		this.genreName = genreName;
		this.filmStart = filmStart;
		this.filmHead = filmHead;
		this.castName = castName;
		this.filmStory = filmStory;
	}
	public int getFilmNum() {
		return filmNum;
	}
	public void setFilmNum(int filmNum) {
		this.filmNum = filmNum;
	}
	public String getFilmName() {
		return filmName;
	}
	public void setFilmName(String filmName) {
		this.filmName = filmName;
	}
	public String getGenreName() {
		return genreName;
	}
	public void setGenreName(String genreName) {
		this.genreName = genreName;
	}
	public Date getFilmStart() {
		return filmStart;
	}
	public void setFilmStart(Date filmStart) {
		this.filmStart = filmStart;
	}
	public String getFilmHead() {
		return filmHead;
	}
	public void setFilmHead(String filmHead) {
		this.filmHead = filmHead;
	}
	public String getCastName() {
		return castName;
	}
	public void setCastName(String castName) {
		this.castName = castName;
	}
	public String getFilmStory() {
		return filmStory;
	}
	public void setFilmStory(String filmStory) {
		this.filmStory = filmStory;
	}
	
}
