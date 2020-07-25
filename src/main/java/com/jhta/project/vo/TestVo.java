package com.jhta.project.vo;

import java.util.HashMap;
import java.util.List;

public class TestVo {
	private List<HashMap<String, Object>> list;
	private List<HashMap<String, Object>> sCount;
	private List<CityListVo> mainCityList;
	private List<BranchVo> cityList;
	private List<String> monthDay;
	public List<HashMap<String, Object>> getList() {
		return list;
	}
	public void setList(List<HashMap<String, Object>> list) {
		this.list = list;
	}
	public List<HashMap<String, Object>> getsCount() {
		return sCount;
	}
	public void setsCount(List<HashMap<String, Object>> sCount) {
		this.sCount = sCount;
	}
	public List<CityListVo> getMainCityList() {
		return mainCityList;
	}
	public void setMainCityList(List<CityListVo> mainCityList) {
		this.mainCityList = mainCityList;
	}
	public List<BranchVo> getCityList() {
		return cityList;
	}
	public void setCityList(List<BranchVo> cityList) {
		this.cityList = cityList;
	}
	public List<String> getMonthDay() {
		return monthDay;
	}
	public void setMonthDay(List<String> monthDay) {
		this.monthDay = monthDay;
	}
	
}
