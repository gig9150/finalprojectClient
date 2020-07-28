package com.jhta.project.vo;

public class CityListVo {
	private String cityaddr;
	private int cityCount;
	public CityListVo(String cityaddr, int cityCount) {
		super();
		this.cityaddr = cityaddr;
		this.cityCount = cityCount;
	}
	public CityListVo() {
		super();
	}
	public String getCityaddr() {
		return cityaddr;
	}
	public void setCityaddr(String cityaddr) {
		this.cityaddr = cityaddr;
	}
	public int getCityCount() {
		return cityCount;
	}
	public void setCityCount(int cityCount) {
		this.cityCount = cityCount;
	}
	
}
