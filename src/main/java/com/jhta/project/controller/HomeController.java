package com.jhta.project.controller;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.google.gson.Gson;
import com.jhta.project.service.RestService;

@Controller
public class HomeController {
	@Autowired
	private RestService service;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(HttpSession session,Model model) {
		Gson gson = new Gson();
		
		//지점 정보 얻어오기
//		String newBranchUrl = "http://localhost:9090/projectdb/getNewBranch.do";
//		//String newBranch = service.get(newBranchUrl).trim();
//		//HashMap<String,Object>[] branchMap = gson.fromJson(newBranch,HashMap[].class);
//		//List<HashMap<String,Object>> branchList = Arrays.asList(branchMap);
//		//model.addAttribute("branchList",branchList);
		
		//오늘의 영화 얻어오기
//		String todayMovieUrl = "http://localhost:9090/projectdb/getTodayMoive.do";
//		String todayMoive = service.get(todayMovieUrl).trim();
//		HashMap<String,Object> movieMap = gson.fromJson(todayMovieUrl,HashMap.class);
//		model.addAttribute("movieMap",movieMap);
		
		
//		String thumbnailMovieUrl ="http://localhost:9090/projectdb/getThumbnailMovie.do";
//		String ThumbnailMovie = service.get(thumbnailMovieUrl).trim();
//		HashMap<String,Object>[] map = gson.fromJson(ThumbnailMovie, HashMap[].class);
//		List<HashMap<String,Object>> list=Arrays.asList(map);
//		model.addAttribute("list",list);
		String cp=session.getServletContext().getContextPath();
		session.getServletContext().setAttribute("cp",cp);
		return ".main";
	}
}
