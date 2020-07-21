package com.jhta.project.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.jhta.project.service.AskService;
import com.jhta.project.vo.AskVo;
import com.jtha.util.PageUtil;

@Controller
public class MyPageController {
	@Autowired
	private AskService askService;

	//결제 내역,예매 내역
	@RequestMapping("/mypage/payment.do")
	public String payment() {
		return ".mypage.payment";
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
	

	
}





