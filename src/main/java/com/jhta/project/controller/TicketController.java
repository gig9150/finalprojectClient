package com.jhta.project.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.google.gson.Gson;
import com.jhta.project.service.RestService;
import com.jhta.project.vo.BranchVo;
import com.jhta.project.vo.CityListVo;

@Controller
public class TicketController {
	@Autowired
	private RestService service;
	
	@RequestMapping("/buy/ticket.do")
	public String ticket(Model model,@RequestParam(value="cityaddr",defaultValue = "서울") String cityaddr,
			String regDate) throws ParseException {
		String url="http://localhost:9090/projectdb/buy/citylist.do";
		String code=service.get(url).trim();
		Gson gson=new Gson();
		CityListVo[] array=gson.fromJson(code, CityListVo[].class);
		List<CityListVo> list=Arrays.asList(array);
		
		String searchCityUrl="http://localhost:9090/projectdb/buy/searchCity.do?cityaddr="+cityaddr;
		String cityCode=service.get(searchCityUrl).trim();
		BranchVo[] cityArray=gson.fromJson(cityCode, BranchVo[].class);
		List<BranchVo> cityList=Arrays.asList(cityArray);
		
		String dateUrl="http://localhost:9090/projectdb/movie/deadline.do";
		String deadLine=service.get(dateUrl).trim();
		Date d=new SimpleDateFormat("yyyy-MM-dd").parse(deadLine);
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM");
		SimpleDateFormat sdf1=new SimpleDateFormat("E dd");
		String toDay="";
		if(regDate!=null) {
			toDay=new SimpleDateFormat("yyyy-MM-dd").format(regDate);
		}else {
			toDay=new SimpleDateFormat("yyyy-MM-dd").format(new Date());
		}
		Date date=new SimpleDateFormat("yyyy-MM-dd").parse(toDay);
		
		List<String> monthDay=new ArrayList<String>();
		String oneMonth="";
		for(long i=date.getTime();i<=d.getTime();i=i+1000*60*60*24) {
			if(!oneMonth.equals(sdf.format(i))){
				oneMonth=sdf.format(i);
				monthDay.add(oneMonth);
			}
			String oneDay=sdf1.format(i);
			monthDay.add(oneDay);
		}
		System.out.println(monthDay.toString());
		model.addAttribute("list",list);
		model.addAttribute("cityList",cityList);
		model.addAttribute("monthDay",monthDay);
		return ".buy.ticket";
	}
}
