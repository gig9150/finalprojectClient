package com.jhta.project.controller;

import java.util.Arrays;
import java.util.List;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.jhta.project.service.RestService;

@Controller
public class BranchController {
	
	@Autowired
	private RestService service;
	
	@RequestMapping(value="/service/question/region.do",produces="application/json;charset=UTF-8")
	@ResponseBody
	public String getBranchRegion() {
		String url = "http://localhost:9090/projectdb/service/region.do";
		Gson gson = new Gson();
		String region =service.get(url).trim();
		String[] array = gson.fromJson(region, String[].class);
		List<String> list = Arrays.asList(array);
		JSONArray jsonArray = new JSONArray();
		for(String data : list) {
			JSONObject object = new JSONObject();
			object.put("data", data);
			jsonArray.put(object);
		}
		return jsonArray.toString();
	}
	
	@RequestMapping(value="/service/question/branch.do",produces="application/json;charset=UTF-8")
	@ResponseBody
	public String getBranch(String cityAddr) {
		String url = "http://localhost:9090/projectdb/service/branch.do?cityAddr="+cityAddr;
		Gson gson = new Gson();
		String region =service.get(url).trim();
		String[] array = gson.fromJson(region, String[].class);
		List<String> list = Arrays.asList(array);
		JSONArray jsonArray = new JSONArray();
		for(String data : list) {
			JSONObject object = new JSONObject();
			object.put("data", data);
			jsonArray.put(object);
		}
		return jsonArray.toString();
	}
}
