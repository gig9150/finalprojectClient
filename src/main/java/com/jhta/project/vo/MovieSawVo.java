package com.jhta.project.vo;

public class MovieSawVo {
	private String movieimgurl;
	private String filmname;
	private String mstarttime;
	private String theathername;
	private String brname;
	private String mreview;
	private int userCount;
	private int filmnum;
	private int booknum;
	
	
	public MovieSawVo() {}


	public MovieSawVo(String movieimgurl, String filmname, String mstarttime, String theathername, String brname,
			String mreview, int userCount, int filmnum, int booknum) {
		super();
		this.movieimgurl = movieimgurl;
		this.filmname = filmname;
		this.mstarttime = mstarttime;
		this.theathername = theathername;
		this.brname = brname;
		this.mreview = mreview;
		this.userCount = userCount;
		this.filmnum = filmnum;
		this.booknum = booknum;
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


	public int getUserCount() {
		return userCount;
	}


	public void setUserCount(int userCount) {
		this.userCount = userCount;
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

	
	
}
