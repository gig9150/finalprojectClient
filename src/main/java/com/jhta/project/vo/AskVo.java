package com.jhta.project.vo;

public class AskVo {
	private int askNum;
	private int memNum;
	private String qnaTitle;
	private String askContent;
	private String askRegdate;
	private String response;
	private String rnum;
	private String memPhone;
	private String email;
	private String memName;
	
	public AskVo() {
		super();
	}

	public AskVo(int askNum, int memNum, String qnaTitle, String askContent, String askRegdate, String response,
			String rnum, String memPhone, String email, String memName) {
		super();
		this.askNum = askNum;
		this.memNum = memNum;
		this.qnaTitle = qnaTitle;
		this.askContent = askContent;
		this.askRegdate = askRegdate;
		this.response = response;
		this.rnum = rnum;
		this.memPhone = memPhone;
		this.email = email;
		this.memName = memName;
	}

	public int getAskNum() {
		return askNum;
	}

	public void setAskNum(int askNum) {
		this.askNum = askNum;
	}

	public int getMemNum() {
		return memNum;
	}

	public void setMemNum(int memNum) {
		this.memNum = memNum;
	}

	public String getQnaTitle() {
		return qnaTitle;
	}

	public void setQnaTitle(String qnaTitle) {
		this.qnaTitle = qnaTitle;
	}

	public String getAskContent() {
		return askContent;
	}

	public void setAskContent(String askContent) {
		this.askContent = askContent;
	}

	public String getAskRegdate() {
		return askRegdate;
	}

	public void setAskRegdate(String askRegdate) {
		this.askRegdate = askRegdate;
	}

	public String getResponse() {
		return response;
	}

	public void setResponse(String response) {
		this.response = response;
	}

	public String getRnum() {
		return rnum;
	}

	public void setRnum(String rnum) {
		this.rnum = rnum;
	}

	public String getMemPhone() {
		return memPhone;
	}

	public void setMemPhone(String memPhone) {
		this.memPhone = memPhone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMemName() {
		return memName;
	}

	public void setMemName(String memName) {
		this.memName = memName;
	}

}
