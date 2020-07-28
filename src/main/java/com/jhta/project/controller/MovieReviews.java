package com.jhta.project.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jhta.project.service.ReviewListService;
import com.jhta.project.vo.ReviewBoardVo;

//영화리뷰 컨트롤러
@Controller
public class MovieReviews {
	@Autowired
	private ReviewListService reviewService;

	@RequestMapping("/movie/showMovieReviews.do")
	@ResponseBody
	public List<ReviewBoardVo> showReviews(Model model, int filmNum, @RequestParam(value="pageNum", defaultValue = "1") int pageNum,@RequestParam(value="rowCount",defaultValue = "5")int rowCount) {
		System.out.println("영화리뷰con진입"+rowCount);

		HashMap<String, Object> map=new HashMap<String, Object>();
		map.put("filmNum", filmNum);
		map.put("rowCount",rowCount);
		
		int totalRowCount = reviewService.count(filmNum);
		List<ReviewBoardVo> reviewListVo=reviewService.showReviews(map);
		/*
		 * PageUtil pu = new PageUtil(pageNum, totalRowCount, 5, 1); HashMap<String,
		 * Object> map= new HashMap<String, Object>(); map.put("startRow",
		 * pu.getStartRow()); map.put("endRow", pu.getEndRow());
		 */
		
				
		System.out.println("ajax11111"+reviewListVo);
		System.out.println(reviewListVo.get(0).getMemName());
		System.out.println(reviewListVo.size());
		return reviewListVo;
	}
	
	//관람평 작성 클릭하면 여기로 진입
	@RequestMapping("/movie/writecomment.do")
	public int writecomment(String textarea, int starScore) {
		HashMap<String, Object> map=new HashMap<String, Object>();
		map.put("textarea", textarea);
		map.put("starScore",starScore);
		
		return 1;
	}
}
