package com.jhta.project.vo;

public class LocationListVo {
	private String cityAddr;
	private String citys;
	
	public LocationListVo() {}
	
	public LocationListVo(String cityAddr, String citys) {
		super();
		this.cityAddr = cityAddr;
		this.citys = citys;
	}

	public String getCityAddr() {
		return cityAddr;
	}
	public void setCityAddr(String cityAddr) {
		this.cityAddr = cityAddr;
	}

	public String getCitys() {
		return citys;
	}

	public void setCitys(String citys) {
		this.citys = citys;
	}

	
	
}
