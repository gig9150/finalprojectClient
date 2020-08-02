package com.jhta.project.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.jhta.project.service.RestService;
import com.jhta.project.vo.AllMoviesVo;
import com.jhta.project.vo.BookVo;
import com.jhta.project.vo.MovieDetailVo;
import com.jhta.project.vo.SeatVo;
import com.jhta.project.vo.TicketingVo;

@Controller
public class MovieBuyController {
	
	@Autowired
	private RestService service;
	
	@RequestMapping(value="/buy/screen/selected.do")
	public String search(int theatherNum,int mscheduleNum,int filmNum,Model model) {
		String url="http://localhost:9090/projectdb/room/seat/buy.do?theatherNum="+theatherNum+"&mscheduleNum="+mscheduleNum;
		String code=service.get(url).trim();
		Gson gson=new Gson();
		SeatVo[] array=gson.fromJson(code, SeatVo[].class);
		List<SeatVo> list=Arrays.asList(array);
		model.addAttribute("list",list);
		model.addAttribute("theatherNum",theatherNum);
		model.addAttribute("mscheduleNum",mscheduleNum);
		model.addAttribute("filmNum",filmNum);
		return ".buy.screen";
	}
	
	@RequestMapping(value="/buy/screen/reservation.do")
	public String reservation(String[] seatName,int[] seatNum,int seatMoney,int mscheduleNum,int filmNum,Model model) {
		Gson gson=new Gson();
		//영화디테일정보vo
		String infoUrl="http://localhost:9090/projectdb/movie/detailInfo.do?filmNum="+filmNum;
		String sMovieDetailVo=service.get(infoUrl).trim();
		MovieDetailVo movieDetailVo=gson.fromJson(sMovieDetailVo, MovieDetailVo.class);
		
		//영화예매율디테일정보vo
		String movieDetailRateUrl="http://localhost:9090/projectdb/movie/movieDetailRate.do?filmNum="+filmNum;
		String smovieDetailRate=service.get(movieDetailRateUrl).trim();
		AllMoviesVo movieDetailRate=gson.fromJson(smovieDetailRate, AllMoviesVo.class);
		model.addAttribute("seatName",seatName);
		model.addAttribute("seatNum",seatNum);
		model.addAttribute("seatMoney",seatMoney);
		model.addAttribute("mscheduleNum",mscheduleNum);
		model.addAttribute("movieDetailVo",movieDetailVo);
		model.addAttribute("movieDetailRate",movieDetailRate);
		return ".buy.ticketing";
	}
	
	@RequestMapping("/payments/complete.do")
	@ResponseBody
	public String completa(String imp_uid) {
		System.out.println(imp_uid);
		return imp_uid;
	}
	
	@RequestMapping("/buy/screen/insert.do")
	public String completa(String[] seatName,int[] seatNum,int seatMoney,String msg,int mscheduleNum,Model model,HttpSession session) {
		int memNum=0;
		try {
			memNum=(int)session.getServletContext().getAttribute("memNum");
		}catch(NullPointerException np) {
			return ".log.login";
		}
		String url="http://localhost:9090/projectdb/buy/screen/insert.do?seatMoney="+seatMoney+"&memNum="+memNum+"&mscheduleNum="+mscheduleNum;
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
		String surl = "http://localhost:9090/projectdb/mypage/payment.do?memNum="+memNum;
		String scode=service.get(surl).trim();
		TicketingVo[] arrays=gson.fromJson(scode, TicketingVo[].class);
		List<TicketingVo> slist=Arrays.asList(arrays);
		model.addAttribute("list",slist);
		return ".mypage.payment";
	}
	
}
