package com.jhta.project.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jhta.project.service.LocationService;
import com.jhta.project.vo.LocationListVo;
import com.jhta.project.vo.ProposalVo;

@Controller
public class LocationController {
	@Autowired
	private LocationService service;

	@RequestMapping("/show/showTimeList.do")
	public String showTime(@RequestParam(value = "cityAddr", defaultValue = "서울") String cityAddr,
			@RequestParam(value = "brName", defaultValue = "서울")String brName, 
			String regDates, 
			Model model,
			HttpSession session) throws ParseException {
		LocationListVo locatedList=service.locatedList(cityAddr);
		List<ProposalVo> list=service.list();
		SimpleDateFormat simdf=new SimpleDateFormat("yyyy-MM-dd");
		if(regDates==null) {
			regDates=simdf.format(new Date());
		}		
		if(regDates!=null) {
			Date clickDate=simdf.parse(regDates);
			List<String> weeklists=new ArrayList<String>();
			for(int i=0;i<7;i++) {
				String days=simdf.format(clickDate.getTime()+1000*60*60*24*i);
				weeklists.add(days);
				model.addAttribute("weeklists",weeklists);
			}
		}
		if(brName!=null) {
			model.addAttribute("branchName",brName);
		}
		HashMap<String, Object> map=new HashMap<String, Object>();
		map.put("brName", brName);
		map.put("regDates", regDates);
		List<LocationListVo> movlist=service.locMovieList(map);
		model.addAttribute("locatedList", locatedList);
		model.addAttribute("list",list);
		model.addAttribute("cityAddr",cityAddr);
		model.addAttribute("movlist",movlist);
		
		
		
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
	
	
	@RequestMapping("/show/showIdonknow.do")
	public List<String> weeks(String brName, String regDates, HttpServletRequest request) throws ParseException{
		HttpSession session=request.getSession();
		SimpleDateFormat simdf=new SimpleDateFormat("yyyy-MM-dd");
		Date clickDate=simdf.parse(regDates);
		List<String> weeklists=new ArrayList<String>();
		for(int i=0;i<7;i++) {
			String days=simdf.format(clickDate.getTime()+1000*60*60*24*i);
			weeklists.add(days);
		}
		return weeklists;
	}
	
	
	/*
	
	@RequestMapping("/show/showSchedulers.do")
	public LocationBranchListVo showScheduler(@RequestParam(value="서울")String brName,
			HttpServletRequest request,Model model) {
		System.out.println("지점명:"+brName);
		//오늘날짜(sysdate 지점명 조회)
		HttpSession session=request.getSession();
		SimpleDateFormat simdf=new SimpleDateFormat("yyyy-MM-dd");
		Date clickDate=new Date();
		List<String> weeklists=new ArrayList<String>();
		for(int i=0;i<7;i++) {
			String days=simdf.format(clickDate.getTime()+1000*60*60*24*i);
			weeklists.add(days);
		}
		model.addAttribute("weeklists",weeklists);
		return weeklists;
	
	}
	
	*/
}
