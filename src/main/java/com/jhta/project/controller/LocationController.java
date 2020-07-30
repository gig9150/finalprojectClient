package com.jhta.project.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.jhta.page.util.DateDeserializer;
import com.jhta.project.service.RestService;
import com.jhta.project.vo.LocationBranchListVo;
import com.jhta.project.vo.LocationListVo;


@Controller
public class LocationController {
	@Autowired
	private RestService service;

	@RequestMapping("/show/showTimeList.do")
	public String showTime(@RequestParam(value = "cityAddr", defaultValue = "서울") String cityAddr,
			String brName,
			String regDates,
			Model model,
			HttpSession session) throws ParseException, JsonMappingException, JsonProcessingException {
		String locatedlLstUrl="http://localhost:9090/projectdb/show/locatedList.do?cityAddr="+cityAddr;
		String slocatedList=service.get(locatedlLstUrl).trim();
		Gson gson=new Gson();
		LocationListVo locatedList=gson.fromJson(slocatedList, LocationListVo.class);
		
		String listUrl="http://localhost:9090/projectdb/show/list.do";
		String slist=service.get(listUrl).trim();
		String[] array=gson.fromJson(slist, String[].class);
		List<String> list=Arrays.asList(array);
		
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
		}else {
			brName=locatedList.getCitys().split(",")[0];
		}
		HashMap<String, Object> map=new HashMap<String, Object>();
		map.put("brName", brName);
		map.put("regDates", regDates);
		String jsonString=gson.toJson(map);
		String smovlistUrl="http://localhost:9090/projectdb/show/locMovieList.do";
		String smovlist=service.post(smovlistUrl, jsonString).trim();
		
		
		Gson son = new GsonBuilder()
                .setDateFormat("yyyy-MM-dd HH:mm:ss.SSS")
                .registerTypeAdapter(Date.class, new DateDeserializer())
                .create();


		LocationBranchListVo[] array1= son.fromJson(smovlist, LocationBranchListVo[].class);
		List<LocationBranchListVo> movlist=Arrays.asList(array1);
		
		
		int branchNum=1;
		if(movlist.size()!=0) {
			branchNum=movlist.get(0).getBranchNum();
		}
		String sCountUrl="http://localhost:9090/projectdb/show/scount.do?branchNum="+branchNum;
		String sscount = service.get(sCountUrl).trim();
		
		ObjectMapper mapper=new ObjectMapper();
		TypeReference<List<HashMap<String, Object>>> typeRef = new TypeReference<List<HashMap<String, Object>>>() {};
		List<HashMap<String, Object>> scount=mapper.readValue(sscount, typeRef);
		
		HashMap<String, Integer> map2=new HashMap<String, Integer>();
		for(LocationBranchListVo vo:movlist) {
			map2.put("theatherNum", vo.getTheatherNum());
			map2.put("mscheduleNum", vo.getmScheduleNum());
			String jsonMap=gson.toJson(map2);
			String leftUrl="http://localhost:9090/projectdb/show/left.do";
			String sc=service.post(leftUrl, jsonMap).trim();
			vo.setCnt(Integer.parseInt(sc));
		}
		model.addAttribute("leftseat",map2);
		model.addAttribute("locatedList", locatedList);
		model.addAttribute("list",list);
		model.addAttribute("cityAddr",cityAddr);
		model.addAttribute("movlist",movlist);
		model.addAttribute("scount", scount);		
		model.addAttribute("brName", brName);
		return ".show.showTimes";
	}
	
	@RequestMapping(value="/show/showTimers.do",produces="application/json;charset=utf-8")
	@ResponseBody
	public LocationListVo showTimers(String cityAddr){
		String locatedlLstUrl="http://localhost:9090/projectdb/show/locatedList.do?cityAddr="+cityAddr;
		String slocatedList=service.get(locatedlLstUrl).trim();
		Gson gson=new Gson();
		LocationListVo locatedList=gson.fromJson(slocatedList, LocationListVo.class);
		return locatedList;
	}
	
	
	@RequestMapping("/show/showIdonknow.do")
	public List<String> weeks(String brName, String regDates) throws ParseException{
		SimpleDateFormat simdf=new SimpleDateFormat("yyyy-MM-dd");
		Date clickDate=simdf.parse(regDates);
		List<String> weeklists=new ArrayList<String>();
		for(int i=0;i<7;i++) {
			String days=simdf.format(clickDate.getTime()+1000*60*60*24*i);
			weeklists.add(days);
		}
		return weeklists;
	}
	
}
