package com.jhta.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jhta.project.service.ReviewListService;
import com.jhta.project.vo.ReviewBoardVo;

//영화리뷰 컨트롤러
@Controller
public class MovieReviews {
	@Autowired
	private ReviewListService reviewService;
	@RequestMapping("/movie/showMovieReviews.do")
	public String showReviews(Model model) {
		System.out.println("con진입");
		List<ReviewBoardVo> reviewListVo=reviewService.showReviews();
		System.out.println(reviewListVo.get(0).getMemName()+"11111");
		
		System.out.println(reviewListVo.get(0).getrContent()+"22222");	
		model.addAttribute("reviewListVo",reviewListVo);
		return ".review.showReviews";
	}
}
