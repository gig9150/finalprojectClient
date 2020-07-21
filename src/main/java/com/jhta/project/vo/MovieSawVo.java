package com.jhta.project.vo;

public class MovieSawVo {
	private String movieimgurl;//이미지경로
	private String filmname;//영화명
	private String mstarttime;//상영시작시간
	private String theathername;//상영관
	private String brname;//지점명
	private String mreview;//리뷰내용
	private int filmnum;//영화번호
	private int booknum;//예매번호
	private int chargenum;//결제번호
	private int usercount;//관람인원

	public MovieSawVo() {}

	public MovieSawVo(String movieimgurl, String filmname, String mstarttime, String theathername, String brname,
			String mreview, int filmnum, int booknum, int chargenum, int usercount) {
		super();
		this.movieimgurl = movieimgurl;
		this.filmname = filmname;
		this.mstarttime = mstarttime;
		this.theathername = theathername;
		this.brname = brname;
		this.mreview = mreview;
		this.filmnum = filmnum;
		this.booknum = booknum;
		this.chargenum = chargenum;
		this.usercount = usercount;
	}

	public String getMovieimgurl() {
		return movieimgurl;
	}

	public void setMovieimgurl(String movieimgurl) {
		this.movieimgurl = movieimgurl;
	}

	public String getFilmname() {
		return filmname;
	}

	public void setFilmname(String filmname) {
		this.filmname = filmname;
	}

	public String getMstarttime() {
		return mstarttime;
	}

	public void setMstarttime(String mstarttime) {
		this.mstarttime = mstarttime;
	}

	public String getTheathername() {
		return theathername;
	}

	public void setTheathername(String theathername) {
		this.theathername = theathername;
	}

	public String getBrname() {
		return brname;
	}

	public void setBrname(String brname) {
		this.brname = brname;
	}

	public String getMreview() {
		return mreview;
	}

	public void setMreview(String mreview) {
		this.mreview = mreview;
	}

	public int getFilmnum() {
		return filmnum;
	}

	public void setFilmnum(int filmnum) {
		this.filmnum = filmnum;
	}

	public int getBooknum() {
		return booknum;
	}

	public void setBooknum(int booknum) {
		this.booknum = booknum;
	}

	public int getChargenum() {
		return chargenum;
	}

	public void setChargenum(int chargenum) {
		this.chargenum = chargenum;
	}

	public int getUsercount() {
		return usercount;
	}

	public void setUsercount(int usercount) {
		this.usercount = usercount;
	}

}
