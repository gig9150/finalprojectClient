package com.jhta.project.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jhta.project.service.AskService;
import com.jhta.project.service.CuponService;
import com.jhta.project.service.MReviewService;
import com.jhta.project.service.MovieSawService;
import com.jhta.project.vo.AskVo;
import com.jhta.project.vo.CuponVo;
import com.jhta.project.vo.MReviewVo;
import com.jhta.project.vo.MovieSawVo;
import com.jtha.util.PageUtil;

@Controller
public class MyPageController {
	@Autowired
	private AskService askService;
	@Autowired
	private MovieSawService movieSawService;
	@Autowired
	private CuponService cuponService;
	@Autowired
	private MReviewService mreviewServie;
	
	//결제 내역,예매 내역
	@RequestMapping("/mypage/payment.do")
	public String payment() {
		return ".mypage.payment";
	}
	
	//쿠폰함
	@RequestMapping("/mypage/cupon.do")
	public String cupon(Model model) {
		List<CuponVo> list=cuponService.cuponList();
		model.addAttribute("list",list);
		return ".mypage.cupon";
	}
	
	//내가 본 영화
	@RequestMapping("/mypage/moviesaw.do")
	public String moviesaw(Model model) {
		List<MovieSawVo> list=movieSawService.moviesawList(1);//memNum
		int movieCount=movieSawService.movieCount(1);//memNum
		model.addAttribute("list",list);
		model.addAttribute("movieCount",movieCount);
		return ".mypage.moviesaw";
	}
	
	//1:1문의
	@RequestMapping("/mypage/inquiry.do")
	public String askList(@RequestParam(value="pageNum",defaultValue = "1")int pageNum,Model model) {
		int totalRowCount=askService.count();
		PageUtil pu=new PageUtil(pageNum, totalRowCount, 5, 5);
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("startRow", pu.getStartRow());
		map.put("endRow", pu.getEndRow());
		List<AskVo> list=askService.askList(1); //memNum
		model.addAttribute("list", list);
		model.addAttribute("pu",pu);
		return ".mypage.inquiry";
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
		int n=mreviewServie.mreviewInsert(vo);
		if(n>0) {
			return "success";
		}else {
			return "error";
		}
	}
	//평점/리뷰 수정
	@RequestMapping(value="/mypage/reviewUpdate.do",produces = {MediaType.APPLICATION_JSON_UTF8_VALUE,MediaType.APPLICATION_XML_VALUE})
	@ResponseBody
	public String reviewUpdate(String rContent,int mScore,int filmNum, int chargeNum) {
								 //시퀀스     리뷰내용 좋아요수 평점  회원번호 영화번호        예약번호      작성일
		MReviewVo vo=new MReviewVo(0, rContent, 0, mScore, 1, filmNum, chargeNum, null);
		int n=mreviewServie.mreviewUpdate(vo);
		System.out.println(n+"ffffffffffffff");
		if(n>0) {
			return "success";
		}else {
			return "error";
		}
	}
	@RequestMapping(value="/mypage/reviewDelete.do",produces = {MediaType.APPLICATION_JSON_UTF8_VALUE,MediaType.APPLICATION_XML_VALUE})
	@ResponseBody
	public String reviewUpdate(int filmNum, int bookNum) {
								 //시퀀스     리뷰내용 좋아요수 평점  회원번호 영화번호        예약번호      작성일
		MReviewVo vo=new MReviewVo(0, null, 0, 0, 1, filmNum, bookNum, null);
		int n=mreviewServie.mreviewDelete(vo);
		if(n>0) {
			return "success";
		}else {
			return "error";
		}
	}
	
	
	
}











