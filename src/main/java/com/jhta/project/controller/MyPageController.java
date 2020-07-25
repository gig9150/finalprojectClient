package com.jhta.project.controller;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.jhta.project.service.RestService;
import com.jhta.project.vo.AskVo;
import com.jhta.project.vo.CuponVo;
import com.jhta.project.vo.MReviewVo;
import com.jhta.project.vo.MovieSawVo;
import com.jhta.project.vo.TicketingVo;
import com.jtha.util.PageUtil;

@Controller
public class MyPageController {
	@Autowired
	private RestService service;
	
	//결제 내역,예매 내역
	@RequestMapping("/mypage/payment.do")
	public String payment(Model model) {
		int memNum=1;
		String url = "http://localhost:9090/projectdb/mypage/payment.do?memNum="+memNum;
		String code=service.get(url).trim();
		Gson gson=new Gson();
		TicketingVo[] arrays=gson.fromJson(code, TicketingVo[].class);
		List<TicketingVo> list=Arrays.asList(arrays);
		model.addAttribute("list",list);
		return ".mypage.payment";
	}
	
	//쿠폰함
	@RequestMapping("/mypage/cupon.do")
	public String cupon(Model model) {
		int memNum=1;
		String url = "http://localhost:9090/projectdb/mypage/cupon.do?memNum="+memNum;
		String code=service.get(url).trim();
		Gson gson=new Gson();
		CuponVo[] arrays=gson.fromJson(code, CuponVo[].class);
		List<CuponVo> list=Arrays.asList(arrays);
		model.addAttribute("list",list);
		return ".mypage.cupon";
	}
	
	//내가 본 영화
	@RequestMapping("/mypage/moviesaw.do")
	public String moviesaw(Model model) {
		int memNum=1;
		String url = "http://localhost:9090/projectdb/mypage/moviesaw.do?memNum="+memNum;
		String code=service.get(url).trim();
		Gson gson=new Gson();
		MovieSawVo[] arrays=gson.fromJson(code, MovieSawVo[].class);
		List<MovieSawVo> list=Arrays.asList(arrays);
		model.addAttribute("list",list);
		
		String countUrl = "http://localhost:9090/projectdb/mypage/movieCount.do?memNum="+memNum;
		String countCode=service.get(countUrl).trim();
		int movieCount = Integer.parseInt(countCode);
		model.addAttribute("movieCount",movieCount);
		
		return ".mypage.moviesaw";
	}
	
	
	//1:1문의 리스트
	@RequestMapping("/mypage/inquiry.do")
	public String askList(@RequestParam(value="pageNum",defaultValue = "1")int pageNum,Model model) {
		int memNum=1;
		String countUrl = "http://localhost:9090/projectdb/mypage/askCount.do?memNum="+memNum;
		String countCode=service.get(countUrl).trim();
		int totalRowCount = Integer.parseInt(countCode);
		
		PageUtil pu=new PageUtil(pageNum, totalRowCount, 10, 5);
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("startRow", pu.getStartRow());
		map.put("endRow", pu.getEndRow());
		map.put("memNum", 1);//회원번호
		model.addAttribute("pu",pu);
		
		String url = "http://localhost:9090/projectdb/mypage/inquiry.do";
		Gson gson=new Gson();
		String jsonString=gson.toJson(map);
		String code=service.post(url,jsonString).trim();
		AskVo[] arrays=gson.fromJson(code, AskVo[].class);
		List<AskVo> list=Arrays.asList(arrays);
		
		model.addAttribute("list", list);
		return ".mypage.inquiry";
	}
	
	//1:1문의 상세보기
	@RequestMapping("/mypage/inquiryDatail.do")
	public String askgetInfo(int askNum,Model model) {
		
		String url = "http://localhost:9090/projectdb/mypage/inquiryDatail.do?askNum="+askNum;
		String code=service.get(url).trim();
		Gson gson=new Gson();
		AskVo vo=gson.fromJson(code, AskVo.class);
		model.addAttribute("vo",vo);
		return ".mypage.inquiryDetail";
	}
	
	//1:1문의하기
	@RequestMapping("/mypage/inquiryInsert.do")
	public String askInsert(Model model) {
		int memNum=1;
		
		String url = "http://localhost:9090/projectdb/mypage/inquiryInsert.do?memNum="+memNum;
		String code=service.get(url).trim();
		Gson gson=new Gson();
		AskVo vo=gson.fromJson(code, AskVo.class);
		model.addAttribute("vo",vo);
		return ".mypage.inquiryInsert";
	}
	
	//회원정보관리
	@RequestMapping("/mypage/memberInfo.do")
	public String memberInfo(){
		return ".mypage.memberInfo";
	}
	
	//평점/리뷰 작성
	@RequestMapping(value="/mypage/reviewInsert.do",produces = {MediaType.APPLICATION_JSON_UTF8_VALUE,MediaType.APPLICATION_XML_VALUE})
	@ResponseBody
	public String reviewInsert(String rContent,int mScore,int filmNum, int chargeNum) {
		 						//시퀀스     리뷰내용 좋아요수 평점  회원번호 영화번호        예약번호      작성일
		MReviewVo vo=new MReviewVo(0, rContent, 0, mScore, 1, filmNum, chargeNum, null);
		String url = "http://localhost:9090/projectdb/mypage/reviewInsert.do";
		Gson gson=new Gson();
		String jsonString=gson.toJson(vo);
		String code=service.post(url,jsonString).trim();
		int result=Integer.parseInt(code);
		if(result>0) {
			return "success";
		}else {
			return "fail";
		}
	}
	
	//평점/리뷰 수정
	@RequestMapping(value="/mypage/reviewUpdate.do",produces = {MediaType.APPLICATION_JSON_UTF8_VALUE,MediaType.APPLICATION_XML_VALUE})
	@ResponseBody
	public String reviewUpdate(String rContent,int mScore,int filmNum, int chargeNum) {
								 //시퀀스     리뷰내용 좋아요수 평점  회원번호 영화번호        예약번호      작성일
		MReviewVo vo=new MReviewVo(0, rContent, 0, mScore, 1, filmNum, chargeNum, null);
		String url = "http://localhost:9090/projectdb/mypage/reviewUpdate.do";
		Gson gson=new Gson();
		String jsonString=gson.toJson(vo);
		String code=service.post(url,jsonString).trim();
		int result=Integer.parseInt(code);
		if(result>0) {
			return "success";
		}else {
			return "error";
		}
	}
	
	
}












