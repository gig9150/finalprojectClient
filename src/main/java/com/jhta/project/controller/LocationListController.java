package com.jhta.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jhta.project.service.LocationListService;
import com.jhta.project.vo.LocationListVo;
import com.jhta.project.vo.ProposalVo;

@Controller
public class LocationListController {
	@Autowired
	private LocationListService service;

	@RequestMapping("/show/showTimeList.do")
	public String showTime(@RequestParam(value = "cityAddr", defaultValue = "서울") String cityAddr, Model model) {
		LocationListVo locatedList=service.locatedList(cityAddr);
		List<ProposalVo> list=service.list();
		model.addAttribute("locatedList", locatedList);
		model.addAttribute("list",list);
		return ".show.showTimes";
	}
	
	@RequestMapping(value="/show/showTimers.do",produces="application/json;charset=utf-8")
	@ResponseBody
	public LocationListVo showTimers(String cityAddr){
		System.out.println("지점명 받기:"+cityAddr);
		LocationListVo locatedList=service.locatedList(cityAddr);
		System.out.println("잘 들어오왔냐욥~:"+locatedList);
		System.out.println("그다음:"+locatedList.getCityAddr());
		System.out.println("그다음:"+locatedList.getCitys());
		return locatedList;
	}
	
}
