package com.jhta.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LogController {
	
	@RequestMapping("/log/signupstart.do")
	public String signupstart() {
		return ".log.signupstart";
	}
	
	@RequestMapping("/log/signup.do")
	public String signup() {
		return ".log.signup";
	}
	
	@RequestMapping("/log/login.do")
	public String log() {
		return ".log.login";
	}
}
