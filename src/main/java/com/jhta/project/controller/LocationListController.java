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
	public String showTime(@RequestParam(value = "cityAddr", defaultValue = "����") String cityAddr, Model model) {
		System.out.println("������ �ޱ�:"+cityAddr);
		LocationListVo locatedList=service.locatedList(cityAddr);
		List<ProposalVo> list=service.list();
		System.out.println("�� �����ԳĿ�~:"+locatedList);
		System.out.println("�״���:"+locatedList.getCityAddr());
		System.out.println("�״���:"+locatedList.getCitys());
		model.addAttribute("locatedList", locatedList);
		model.addAttribute("list",list);
		return ".show.showTimes";
	}

}
