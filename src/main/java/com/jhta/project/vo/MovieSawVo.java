package com.jhta.project.vo;

public class MovieSawVo {
	private String movieimgurl;
	private String filmname;
	private String mstarttime;
	private String theathername;
	private String brname;
	private String mreview;
	
	public MovieSawVo() {}

	public MovieSawVo(String movieimgurl, String filmname, String mstarttime, String theathername, String brname,
			String mreview) {
		super();
		this.movieimgurl = movieimgurl;
		this.filmname = filmname;
		this.mstarttime = mstarttime;
		this.theathername = theathername;
		this.brname = brname;
		this.mreview = mreview;
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

}
