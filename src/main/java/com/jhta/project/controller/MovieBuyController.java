package com.jhta.project.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.jhta.project.service.RestService;
import com.jhta.project.vo.BookVo;
import com.jhta.project.vo.SeatVo;

@Controller
public class MovieBuyController {
	
	@Autowired
	private RestService service;
	
	@RequestMapping(value="/buy/screen/selected.do")
	public String search(int theatherNum,int mscheduleNum,int filmNum,Model model) {
		String url="http://localhost:9090/projectdb/room/seat/search.do?theatherNum="+theatherNum;
		String code=service.get(url).trim();
		Gson gson=new Gson();
		SeatVo[] array=gson.fromJson(code, SeatVo[].class);
		List<SeatVo> list=Arrays.asList(array);
		model.addAttribute("list",list);
		model.addAttribute("theatherNum",theatherNum);
		return ".buy.screen";
	}
	
	@RequestMapping(value="/buy/screen/reservation.do")
	public String reservation(String[] seatName,int[] seatNum,int seatMoney,Model model) {
		model.addAttribute("seatName",seatName);
		model.addAttribute("seatNum",seatNum);
		model.addAttribute("seatMoney",seatMoney);
		return ".buy.ticketing";
	}
	
	@RequestMapping("/payments/complete.do")
	@ResponseBody
	public String completa(String imp_uid) {
		System.out.println(imp_uid);
		return imp_uid;
	}
	
	@RequestMapping("/buy/screen/insert.do")
	public String completa(String[] seatName,int[] seatNum,int seatMoney,String msg,Model model,HttpSession session) {
		//int memNum=(int)session.getServletContext().getAttribute("memNum");
		System.out.println("결제 완료쪽 컨트롤러다..."+seatMoney);
		String url="http://localhost:9090/projectdb/buy/screen/insert.do?seatMoney="+seatMoney+"&memNum=1";//+memNum;
		Gson gson=new Gson();
		List<BookVo> list=new ArrayList<BookVo>();
		for(int i=0;i<seatName.length;i++) {
			list.add(new BookVo(0, "결제완료", seatNum[i], 1, 1));
		}
		String jsonString=gson.toJson(list);
		String code="error";
		try {
			code=service.post(url, jsonString).trim();
		}catch(Exception e) {
			return code;
		}
		model.addAttribute("code",code);
		return ".buy.checked";
	}
	
}
