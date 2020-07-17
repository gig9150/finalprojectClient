package com.jhta.project.vo;

import java.util.Date;

public class CuponVo {
	private int cuponNum;
	private String cuponStatus;
	private String cName;
	private String cuponStart;
	private String cuponEnd;
	private String cSort;
	private int memNum;
	private int cuponRate;
	
	public CuponVo() {
		super();
	}
	
	public CuponVo(int cuponNum, String cuponStatus, String cName, String cuponStart, String cuponEnd, String cSort,
			int memNum, int cuponRate) {
		super();
		this.cuponNum = cuponNum;
		this.cuponStatus = cuponStatus;
		this.cName = cName;
		this.cuponStart = cuponStart;
		this.cuponEnd = cuponEnd;
		this.cSort = cSort;
		this.memNum = memNum;
		this.cuponRate = cuponRate;
	}
	public int getCuponNum() {
		return cuponNum;
	}
	public void setCuponNum(int cuponNum) {
		this.cuponNum = cuponNum;
	}
	public String getCuponStatus() {
		return cuponStatus;
	}
	public void setCuponStatus(String cuponStatus) {
		this.cuponStatus = cuponStatus;
	}
	public String getcName() {
		return cName;
	}
	public void setcName(String cName) {
		this.cName = cName;
	}
	public String getCuponStart() {
		return cuponStart;
	}
	public void setCuponStart(String cuponStart) {
		this.cuponStart = cuponStart;
	}
	public String getCuponEnd() {
		return cuponEnd;
	}
	public void setCuponEnd(String cuponEnd) {
		this.cuponEnd = cuponEnd;
	}
	public String getcSort() {
		return cSort;
	}
	public void setcSort(String cSort) {
		this.cSort = cSort;
	}
	public int getMemNum() {
		return memNum;
	}
	public void setMemNum(int memNum) {
		this.memNum = memNum;
	}
	public int getCuponRate() {
		return cuponRate;
	}
	public void setCuponRate(int cuponRate) {
		this.cuponRate = cuponRate;
	}
	
}
