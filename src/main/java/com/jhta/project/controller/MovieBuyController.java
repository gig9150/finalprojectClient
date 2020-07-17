package com.jhta.project.controller;

import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.google.gson.Gson;
import com.jhta.project.service.RestService;
import com.jhta.project.vo.SeatVo;

@Controller
public class MovieBuyController {
	
	@Autowired
	private RestService service;
	
	@RequestMapping(value="/buy/screen/selected.do")
	public String search(@RequestParam(value="theatherNum",defaultValue="41")int theatherNum,Model model) {
		String url="http://localhost:9090/projectdb/room/seat/search.do?theatherNum="+theatherNum;
		String code=service.get(url).trim();
		Gson gson=new Gson();
		SeatVo[] array=gson.fromJson(code, SeatVo[].class);
		List<SeatVo> list=Arrays.asList(array);
		model.addAttribute("list",list);
		model.addAttribute("theatherNum",theatherNum);
		return ".buy.screen";
	}
}
