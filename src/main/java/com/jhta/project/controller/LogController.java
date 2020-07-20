package com.jhta.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.jhta.project.service.RestService;

@Controller
public class LogController {
	@Autowired
	private RestService service;
	
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
	
	@RequestMapping(value="/log/idcheck.do",produces={MediaType.APPLICATION_JSON_UTF8_VALUE,MediaType.APPLICATION_XML_VALUE})
	@ResponseBody
	public String idcheck(String memId) {
		System.out.println(memId);
		String url="http://localhost:9090/projectdb/log/idcheck.do?memId="+memId;
		String code=service.get(url).trim();
		Gson gson = new Gson();
		return gson.toJson(code);
	}
}
