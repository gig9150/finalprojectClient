package com.jhta.project.vo;

public class BookDetailsVo {
	private String movieimgurl; //이미지경로
	private String filmname; //영화명
	private String mstarttime; //상영시작시간
	private String theathername; //상영관명
	private String brname; //지점명
	private String seatname; //좌석번호
	private String chregdate; //결제일시
	private String totalbill; //결제금액
	
	public BookDetailsVo() {}

	public BookDetailsVo(String movieimgurl, String filmname, String mstarttime, String theathername, String brname,
			String seatname, String chregdate, String totalbill) {
		super();
		this.movieimgurl = movieimgurl;
		this.filmname = filmname;
		this.mstarttime = mstarttime;
		this.theathername = theathername;
		this.brname = brname;
		this.seatname = seatname;
		this.chregdate = chregdate;
		this.totalbill = totalbill;
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

	public String getSeatname() {
		return seatname;
	}

	public void setSeatname(String seatname) {
		this.seatname = seatname;
	}

	public String getChregdate() {
		return chregdate;
	}

	public void setChregdate(String chregdate) {
		this.chregdate = chregdate;
	}

	public String getTotalbill() {
		return totalbill;
	}

	public void setTotalbill(String totalbill) {
		this.totalbill = totalbill;
	}

}
