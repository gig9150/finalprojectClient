package com.jhta.project.vo;

public class MovieSawVo {
	private int memnum;
	private int filmnum;
	private int booknum;
	private String movieimgurl;
	private String filmname;
	private String mstarttime;
	private String theathername;
	private String brname;
	
	public MovieSawVo() {}

	public MovieSawVo(int memnum, int filmnum, int booknum, String movieimgurl, String filmname, String mstarttime,
			String theathername, String brname) {
		super();
		this.memnum = memnum;
		this.filmnum = filmnum;
		this.booknum = booknum;
		this.movieimgurl = movieimgurl;
		this.filmname = filmname;
		this.mstarttime = mstarttime;
		this.theathername = theathername;
		this.brname = brname;
	}

	public int getMemnum() {
		return memnum;
	}

	public void setMemnum(int memnum) {
		this.memnum = memnum;
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

}
