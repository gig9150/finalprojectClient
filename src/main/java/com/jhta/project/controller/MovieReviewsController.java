package com.jhta.project.controller;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.gson.Gson;
import com.jhta.project.service.RestService;
import com.jhta.project.vo.MReviewVo;
import com.jhta.project.vo.ReviewBoardVo;

//영화리뷰 컨트롤러
@Controller
public class MovieReviewsController {
	@Autowired
	private RestService service;

	/////////////////////////////////////////평점 및 관람평 클릭하면 ajax통신하는 함수////////////////////////////////////
	@RequestMapping(value="/movie/showMovieReviews.do",produces = {MediaType.APPLICATION_JSON_UTF8_VALUE,MediaType.APPLICATION_XML_VALUE})
	@ResponseBody
	public String showReviews(Model model, int filmNum, @RequestParam(value="pageNum", defaultValue = "1") int pageNum,@RequestParam(value="rowCount",defaultValue = "5")int rowCount) {
		Gson gson=new Gson();
		HashMap<String, Object> map=new HashMap<String, Object>();
		map.put("filmNum", filmNum);
		map.put("rowCount",rowCount);
		//객체를 제이슨형태로 변환. toJson
		String jsonString=gson.toJson(map);
		//제이슨 형태를 객체로 변하는게 FromJson
		String showReviewsUrl="http://localhost:9090/projectdb/movie/showReviews.do";
		String code=service.post(showReviewsUrl, jsonString).trim();
		return code;
	}
	
	///////////////////////////////////////관람평 작성 클릭하면 여기로 진입/////////////////////////////////
	@RequestMapping(value="/movie/writeComment.do",produces = {MediaType.APPLICATION_JSON_UTF8_VALUE,MediaType.APPLICATION_XML_VALUE})
	@ResponseBody
	public List<ReviewBoardVo> writeComment(int filmNum, int mScore, String rContent, int rowCount,HttpSession session) throws JsonMappingException, JsonProcessingException {
		int memNum=(int)session.getServletContext().getAttribute("memNum");
		Gson gson=new Gson();
		HashMap<String, Object> map=new HashMap<String, Object>();
		map.put("filmNum", filmNum);
		map.put("rowCount",rowCount);
		String chkReviewUrl="http://localhost:9090/projectdb/movie/chkReview.do?filmNum="+filmNum+"&memNum="+memNum;
		String code=service.get(chkReviewUrl).trim();
		// hashmap 가공하는 방법
		ObjectMapper mapper=new ObjectMapper();
		TypeReference<HashMap<String, BigDecimal>> typeRef = new TypeReference<HashMap<String, BigDecimal>>() {};
		HashMap<String, BigDecimal> chkMap=mapper.readValue(code, typeRef);
	
		int reviewCheck=chkMap.get("REVIEWCHEK").intValue();
		System.out.println("-----------여기는 관람평작성check번호"+reviewCheck);
		int buyCheck=chkMap.get("BUYCHECK").intValue();
		System.out.println("-----------여기는 결제ckeck번호"+buyCheck);
		int chargeNum=chkMap.get("CHARGENUM").intValue();
		System.out.println("-----------여기는 몇범check번호"+chargeNum);
		map.put("chargeNum",chargeNum);
		System.out.println(reviewCheck+"..........." + buyCheck);
		//리뷰등록
		if(reviewCheck==0 && buyCheck!=0) {
			String insertMReviewUrl="http://localhost:9090/projectdb/movie/insertMReview.do";
			MReviewVo vo=new MReviewVo(0, rContent, 0, mScore, memNum, filmNum, chargeNum, null);
			String jsonString=gson.toJson(vo);
			String scodeNum=service.post(insertMReviewUrl, jsonString).trim();
			int codeNum=Integer.parseInt(scodeNum);
			if(codeNum==1) {//리뷰테이블에 정상적으로 insert가 되었을 때
				System.out.println("인설트 잘됨");
				String showReviewsUrl="http://localhost:9090/projectdb/movie/showReviews.do";
				String mapJson=gson.toJson(map);
				String scode=service.post(showReviewsUrl, mapJson).trim();
				ReviewBoardVo[] array= gson.fromJson(scode, ReviewBoardVo[].class);
				List<ReviewBoardVo> ReviewBoardVoList=Arrays.asList(array); 
				return ReviewBoardVoList;
			}else {
				System.out.println("222222222222");
				//-1은 리뷰가 이미 작성 됐을때,
				//-2는 구매 안했을때, -3 인설트 실패.
				List<ReviewBoardVo> list=new ArrayList<ReviewBoardVo>();
				list.add(new ReviewBoardVo(null, -3, null, 0, null));
				System.out.println("인서트 실패했을 떄"+ list);
				return list;
			}
		}else if(reviewCheck==1){
			List<ReviewBoardVo> list=new ArrayList<ReviewBoardVo>();
			list.add(new ReviewBoardVo(null, -1, null, 0, null));
			//리뷰 작성하지 못하는 경우 예외처리 하는 곳 (결제내역이 있고, 리뷰내역이 없는 경우를 제외한 모든 경우)
			System.out.println("리뷰 이미 작성했을 때"+ list);
			return list;
		}else {
			List<ReviewBoardVo> list=new ArrayList<ReviewBoardVo>();
			list.add(new ReviewBoardVo(null, -2, null, 0, null));
			System.out.println("관람내역이 없을 때"+ list);
			return list;
		}
	}
}




