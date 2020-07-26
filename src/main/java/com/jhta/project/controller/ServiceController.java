package com.jhta.project.controller;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.gson.Gson;
import com.jhta.project.service.RestService;
import com.jhta.project.vo.ProposalVo;

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
	
	@RequestMapping("/service/questionBoard.do")
	public String goQuestionBoard() {
		return ".service.questionBoard";
	}
	
	@RequestMapping("/service/branchApplyBoard.do")
	public String goApplyBoard() {
		//세션에 담겨진 아이디정보로 id,이름,연락처 뽑아가기
		return ".service.branchApplyBoard";
	}
	
	@RequestMapping("/service/branchApplyInsert.do")
	public String branchApplyInsert(String cityAddr,String proStatus,String memberId,String proAddr,String proGoal,String proScale) throws JsonProcessingException {
		String url = "http://localhost:9090/projectdb/service/branchApplyInsert.do";
		ProposalVo vo = new ProposalVo(0,memberId,proAddr,proGoal,proScale,proStatus,null,cityAddr);
		ObjectMapper mapper=new ObjectMapper();
		String jsonString= mapper.writeValueAsString(vo);
		String code=service.post(url,jsonString).trim();
		return code;
	}
}
