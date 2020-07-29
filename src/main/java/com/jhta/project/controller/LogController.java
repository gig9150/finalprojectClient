package com.jhta.project.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.jhta.project.service.RestService;
import com.jhta.project.vo.MembershipVo;
import com.jhta.project.vo.MileVo;

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
	
	//회원 정보 변경
	@RequestMapping("/log/memuser.do")
	public String memuser() {
		return ".log.memuser";
	}
	@RequestMapping("/log/memuserok.do")
	public String memuserok(MembershipVo vo) {
		String url= "http://localhost:9090/projectdb/log/memuserok.do";
		Gson gson = new Gson();
		String jsonString = gson.toJson(vo);
		System.out.println(jsonString);
		String code=service.post(url, jsonString).trim();
		if(code.equals("success")) {
			return ".main";
		}else {
			return "error";
		}
	}
	
	//비밀번호 변경
	@RequestMapping("/log/mempwd.do")
	public String mempwd() {
		return ".log.mempwd";
	}

	@RequestMapping("/log/mempwdok.do")
	public String mempwdok(String memPwd,HttpSession session) {
		String memId = (String)session.getServletContext().getAttribute("memId");
		MembershipVo vo = new MembershipVo();
		vo.setMemPwd(memPwd);
		vo.setMemId(memId);
		System.out.println("여기 비번바꿈"+memId);
		String url= "http://localhost:9090/projectdb/log/mempwdok.do";
		Gson gson = new Gson();
		String jsonString = gson.toJson(vo);
		System.out.println(jsonString);
		String code=service.post(url, jsonString).trim();
		if(code.equals("success")) {
			return ".main";
		}else {
			return "error";
		}
	}
	
	//회원 탈퇴
	@RequestMapping("/log/memsecession.do")
	public String memsecession() {
		return ".log.memsecession";
	}
	//로그아웃
	@RequestMapping("/log/logout.do")
	public String logout(HttpSession session) {
		session.getServletContext().removeAttribute("memNum");
		session.getServletContext().removeAttribute("memName");
		session.getServletContext().removeAttribute("memId");
		session.getServletContext().removeAttribute("memPwd");
		session.getServletContext().removeAttribute("memPhone");
		session.getServletContext().removeAttribute("birth");
		session.getServletContext().removeAttribute("email");
		session.getServletContext().removeAttribute("grade");
		session.getServletContext().removeAttribute("memRegdate");
		session.getServletContext().removeAttribute("mile");
		return ".main";
	}
	@RequestMapping("/log/memsecession2.do")
	public String memsecession2() {
		return ".log.memsecession2";
	}
	@RequestMapping("/log/memsecession3.do")
	public String memsecession3() {
		return ".log.memsecession3";
	}
	@RequestMapping("/log/memsecok.do")
	public String memsecok(HttpSession session) {
		String memId = (String)session.getServletContext().getAttribute("memId");
		String memPwd = (String)session.getServletContext().getAttribute("memPwd");
		MembershipVo vo = new MembershipVo();
		vo.setMemId(memId);
		System.out.println(memId);
		System.out.println(memPwd);
		String url="http://localhost:9090/projectdb/log/memsecok.do";
		Gson gson = new Gson();
		String jsonString = gson.toJson(vo);
		System.out.println("db 갔다옴" +vo);
		System.out.println(jsonString);
		String code=service.post(url, jsonString).trim();
		System.out.println("코드"+code);
		if(code.equals("success")) {
			session.getServletContext().removeAttribute("memId");
			session.getServletContext().removeAttribute("memPwd");
			return ".main";
		}else if(code.equals(null)) {
			return ".error";
		}
		else {
			return "error";
		}
	}
	
	
	
	
	@RequestMapping(value="/log/idcheck.do",produces={MediaType.APPLICATION_JSON_UTF8_VALUE,MediaType.APPLICATION_XML_VALUE})
	@ResponseBody
	public String idcheck(String memId) {
		System.out.println(memId);
		String url= "http://localhost:9090/projectdb/log/idcheck.do?memId="+memId;
		System.out.println(url);
		String code=service.get(url).trim();
		Gson gson = new Gson();
		return gson.toJson(code);
	}
	
	@RequestMapping(value="/log/signmake.do")
	public String signmake(MembershipVo vo) {
		String url= "http://localhost:9090/projectdb/log/signmake.do";
		Gson gson = new Gson();
		String jsonString = gson.toJson(vo);
		System.out.println("이거 제이슨 스트링 " +jsonString);
		String code=service.post(url, jsonString).trim();
		if(code.equals("success")) {
			return ".main";
		}else {
			return "error";
		}
	}
	@RequestMapping(value="/log/loging.do")
	public String loging(HttpSession session, String email, String pass,Model model) {
		String memId = email;
		String memPwd = pass;
		System.out.println("나 여기");
		System.out.println(memId);
		System.out.println(memPwd);
		String url= "http://localhost:9090/projectdb/log/loging.do?memId="+memId+"&memPwd="+memPwd;
		String code = service.get(url).trim();
		System.out.println("code[]:"+code);
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'").create();
		if(code.equals("")||code.equals(null)) {
			model.addAttribute("msg","탈퇴된 회원입니다");
			return "error";
		}else {
			MembershipVo vo =  gson.fromJson(code, MembershipVo.class);
			
			//마일리지 세션에 담기(성진 7/28)
			String mileUrl= "http://localhost:9090/projectdb/log/mlie.do?memId="+memId;
			String mileCode = service.get(mileUrl).trim();
			int mile = Integer.parseInt(mileCode);
			session.getServletContext().setAttribute("mile",mile);
			
			System.out.println(vo);
			session.getServletContext().setAttribute("memNum",vo.getMemNum());
			session.getServletContext().setAttribute("memName",vo.getMemName());
			session.getServletContext().setAttribute("memId",vo.getMemId());
			session.getServletContext().setAttribute("memPwd",vo.getMemPwd());
			session.getServletContext().setAttribute("memPhone",vo.getMemPhone());
			session.getServletContext().setAttribute("birth",vo.getBirth());
			session.getServletContext().setAttribute("email",vo.getEmail());
			session.getServletContext().setAttribute("grade",vo.getGrade());
			session.getServletContext().setAttribute("memRegdate",vo.getMemRegdate());
			System.out.println(vo.getMemName());
			return ".main";
		}
	}
	
	
}
