package com.jhta.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jhta.project.service.RestService;

@Controller
public class StoreController {
	@Autowired
	private RestService service;
	
	@RequestMapping("/store/store.do")
	public String goStore() {
		return ".store.store";
	}
}
