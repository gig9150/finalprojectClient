package com.jhta.project.vo;

public class TicketingVo {
	private String mstarttime;//상영시작시간
	private String brname;//지점명
	private String theathername;//상영관명
	private String chregdate;//결제일
	private int totalbill;//결제금액
	private int cuponrate;//쿠폰-할인율
	private String cname;//쿠폰명
	private String seatname;//좌석명
	private int usercount;//관람인원
	private String filmname;//영화명
	private String payment;//결제수단
	private String movieimgurl;//영화이미지
	private String year;
	
	public TicketingVo() {
		super();
	}

	public TicketingVo(String mstarttime, String brname, String theathername, String chregdate, int totalbill,
			int cuponrate, String cname, String seatname, int usercount, String filmname, String payment,
			String movieimgurl, String year) {
		super();
		this.mstarttime = mstarttime;
		this.brname = brname;
		this.theathername = theathername;
		this.chregdate = chregdate;
		this.totalbill = totalbill;
		this.cuponrate = cuponrate;
		this.cname = cname;
		this.seatname = seatname;
		this.usercount = usercount;
		this.filmname = filmname;
		this.payment = payment;
		this.movieimgurl = movieimgurl;
		this.year = year;
	}

	public String getMstarttime() {
		return mstarttime;
	}

	public void setMstarttime(String mstarttime) {
		this.mstarttime = mstarttime;
	}

	public String getBrname() {
		return brname;
	}

	public void setBrname(String brname) {
		this.brname = brname;
	}

	public String getTheathername() {
		return theathername;
	}

	public void setTheathername(String theathername) {
		this.theathername = theathername;
	}

	public String getChregdate() {
		return chregdate;
	}

	public void setChregdate(String chregdate) {
		this.chregdate = chregdate;
	}

	public int getTotalbill() {
		return totalbill;
	}

	public void setTotalbill(int totalbill) {
		this.totalbill = totalbill;
	}

	public int getCuponrate() {
		return cuponrate;
	}

	public void setCuponrate(int cuponrate) {
		this.cuponrate = cuponrate;
	}

	public String getCname() {
		return cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}

	public String getSeatname() {
		return seatname;
	}

	public void setSeatname(String seatname) {
		this.seatname = seatname;
	}

	public int getUsercount() {
		return usercount;
	}

	public void setUsercount(int usercount) {
		this.usercount = usercount;
	}

	public String getFilmname() {
		return filmname;
	}

	public void setFilmname(String filmname) {
		this.filmname = filmname;
	}

	public String getPayment() {
		return payment;
	}

	public void setPayment(String payment) {
		this.payment = payment;
	}

	public String getMovieimgurl() {
		return movieimgurl;
	}

	public void setMovieimgurl(String movieimgurl) {
		this.movieimgurl = movieimgurl;
	}

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}
	
}
