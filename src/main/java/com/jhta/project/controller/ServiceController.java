package com.jhta.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ServiceController {
	
	@RequestMapping("/service/serviceBoard.do")
	public String goServiceBoard() {
		return ".service.serviceBoard";
	}
	
	@RequestMapping("/service/questionBoard.do")
	public String goQuestionBoard() {
		return ".service.questionBoard";
	}
}
