package com.jhta.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
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
	public List<ReviewBoardVo> showReviews(Model model, int filmNum) {
		System.out.println("con진입");
		List<ReviewBoardVo> reviewListVo=reviewService.showReviews(filmNum);
		System.out.println("ajax11111"+reviewListVo);
		System.out.println(reviewListVo.get(0).getMemName());
		return reviewListVo;
	}
}
