package com.jhta.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.jhta.project.service.LocationListService;
import com.jhta.project.vo.LocationListVo;
import com.jhta.project.vo.ProposalVo;

@Controller
public class LocationListController {
	@Autowired
	private LocationListService service;

	@RequestMapping("/show/showTimeList.do")
	public String showTime(@RequestParam(value = "cityAddr", defaultValue = "서울") String cityAddr, Model model) {
		System.out.println("지점명 받기:"+cityAddr);
		LocationListVo locatedList=service.locatedList(cityAddr);
		List<ProposalVo> list=service.list();
		System.out.println("잘 들어오왔냐욥~:"+locatedList);
		System.out.println("그다음:"+locatedList.getCityAddr());
		System.out.println("그다음:"+locatedList.getCitys());
		model.addAttribute("locatedList", locatedList);
		model.addAttribute("list",list);
		return ".show.showTimes";
	}

}
