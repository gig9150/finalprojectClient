package com.jhta.project.controller;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.gson.Gson;
import com.jhta.page.util.PageUtil;
import com.jhta.project.service.RestService;
import com.jhta.project.vo.ProposalVo;
import com.jhta.project.vo.QnaVo;

@Controller
public class ServiceController {
	
	@Autowired
	private RestService service;
	
	@RequestMapping("/service/serviceBoard.do")
	public String goServiceBoard(Model model) {
		String url = "http://localhost:9090/projectdb/service/getRepeatedQna.do";
		Gson gson = new Gson();
		String jsonString = service.get(url).trim();
		HashMap<String,Object>[] qnaMap = gson.fromJson(jsonString, HashMap[].class);
		List<HashMap<String,Object>> qnaList =  Arrays.asList(qnaMap);
		model.addAttribute("qnaList",qnaList);
		return ".service.serviceBoard";
	}
	
	@RequestMapping("/service/repeatedQna.do")
	public String goRepeatedQna(@RequestParam(value="pageNum",defaultValue = "1")int pageNum,
			@RequestParam(value="qnaTitle",defaultValue = "")String qnaTitle,Model model) throws JsonProcessingException {
		String url = "http://localhost:9090/projectdb/service/qna/searchList.do";
		String countUrl = "http://localhost:9090/projectdb/service/qna/searchCount.do?qnaTitle="+qnaTitle;
		HashMap<String,Object> map = new HashMap<String,Object>();
		ObjectMapper mapper = new ObjectMapper();
		Gson gson = new Gson();
		String count = service.get(countUrl).trim();
		PageUtil pu = new PageUtil(pageNum,Integer.parseInt(count),10,5);
		map.put("startRow",pu.getStartRow());
		map.put("endRow",pu.getEndRow());
		map.put("qnaTitle",qnaTitle);
		String sMap = mapper.writeValueAsString(map);
		String json = service.post(url,sMap).trim();
		QnaVo[] vo = gson.fromJson(json, QnaVo[].class);
		List<QnaVo> list = Arrays.asList(vo);
		model.addAttribute("pu",pu);
		model.addAttribute("list",list);
		model.addAttribute("qnaTitle",qnaTitle);
		return ".service.repeatedQna";
	}
	
	@RequestMapping("/service/questionBoard.do")
	public String goQuestionBoard() {
		return ".service.questionBoard";
	}
	
	@RequestMapping("/service/questionInsert.do")
	public String QuestionInsert(String title,String content,int num,
			String name,Model model) {
		String url = "http://localhost:9090/projectdb/service/askInsert.do";
		HashMap<String,Object> map = new HashMap<String,Object>();
		map.put("title",title);
		map.put("content", content);
		map.put("num",num);
		Gson gson = new Gson();
		String sMap = gson.toJson(map);
		String code = service.post(url,sMap).trim();
		model.addAttribute("name",name);
		return ".service.success";
	}
	
	@RequestMapping("/service/branchApplyBoard.do")
	public String goApplyBoard() {
		return ".service.branchApplyBoard";
	}
	
	@RequestMapping("/service/noticeBoard.do")
	public String goNoticeBoard() {
		return ".service.notice";
	}
	
	@RequestMapping("/service/branchApplyInsert.do")
	public String branchApplyInsert(String cityAddr,String proStatus,String memberId,String proAddr,String proGoal,String proScale) throws JsonProcessingException {
		String url = "http://localhost:9090/projectdb/service/branchApplyInsert.do";
		System.out.println("444444444");
		ProposalVo vo = new ProposalVo(0,memberId,proAddr,proGoal,proScale,proStatus,null,cityAddr);
		ObjectMapper mapper=new ObjectMapper();
		String jsonString= mapper.writeValueAsString(vo);
		String code=service.post(url,jsonString).trim();
		if(code.equals("success")) {
			return ".main";
		}else {
			return code;
		}
	}
	
	//분실물 게시판 매핑
	@RequestMapping("/service/lostThingBoard.do")
	public String goLostThingBoard(Model model) {
		String url = "http://localhost:9090/projectdb/service/region.do";
		Gson gson = new Gson();
		String code = service.get(url).trim();
		String[] region = gson.fromJson(code,String[].class);
		List<String> list = Arrays.asList(region);
		model.addAttribute("list",list);
		return ".service.lostThingBoard";
	}

	@RequestMapping(value="/service/getBranch.do",produces = "application/json;charset=UTF-8")
	@ResponseBody
	public String regionBranch(String cityAddr){
		String url = "http://localhost:9090/projectdb/service/branch.do?cityAddr="+cityAddr;
		String code = service.get(url).trim();
		return code;
	}
}
