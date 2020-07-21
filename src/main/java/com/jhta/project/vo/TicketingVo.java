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
	
	public TicketingVo() {
		super();
	}

	public TicketingVo(String mstarttime, String brname, String theathername, String chregdate, int totalbill,
			int cuponrate, String cname, String seatname, int usercount) {
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

}
