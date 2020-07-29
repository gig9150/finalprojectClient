package com.jhta.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.google.gson.Gson;
import com.jhta.project.service.MovieListService;
import com.jhta.project.vo.AllByMRateVo;
import com.jhta.project.vo.AllMoviesVo;
import com.jhta.project.vo.MovieDetailVo;

@Controller
public class MovieList {
	@Autowired
	MovieListService movieListService;
	
	//영화 nav클릭했을 때 처음으로 터지는 함수(예매율순으로 상영 영화 불러오기)
	@RequestMapping("/movie/showAllMovies.do")
	public String showAllMovies(Model model){
		System.out.println("CONTROLLERź��");
		List<AllMoviesVo> allMovieList=movieListService.showAllMovies();
		AllMoviesVo allMoviesVo= new AllMoviesVo();
		System.out.println("여기까지오나??????????");
		model.addAttribute("allMovieList", allMovieList);
		return ".movie.showMovies";
	}
	
	//영화 평점순 클릭했을 때 함수(평점순으로 상영 영화 불러오기)
	@RequestMapping("/movie/showAllMoviesMRate.do")
	public String showAllMoviesMRate(Model model){
		System.out.println("CONTROLLER평점순");
		List<AllMoviesVo> allMovieList=movieListService.moviesByMRate();
		AllMoviesVo allMoviesVo= new AllMoviesVo();
		System.out.println("여기까지오나??????????");
		model.addAttribute("allMovieList", allMovieList);
		return ".movie.showMovies";
	}
	
	
	/*
	//관람평순으로 상영 영화 불러오기
	public String moviesByMReview() {
		List<AllMoviesVo> allMovieList=movieListService.showAllMovies();
		return ".movie.showMovies";
	}*/
	
	//영화 상세정보 클릭 시 장르,감독,개봉일,출연진,줄거리 가져오기
	@RequestMapping("/movie/movieDetailView.do")
	public String showMovieDetailInfo(Model model,int filmNum) {
		//영화디테일정보vo
		MovieDetailVo movieDetailVo=movieListService.showMovieDetailInfo(filmNum);
		//영화예매율디테일정보vo
		AllMoviesVo movieDetailRate=movieListService.showMovieDetailRate(filmNum);
		Gson gson=new Gson();
		String test=gson.toJson(movieDetailVo);
		String test1=gson.toJson(movieDetailRate);
		System.out.println("movieDetailVo:"+test);
		System.out.println("movieDetailRate:"+test1);
		model.addAttribute("movieDetailVo",movieDetailVo);
		model.addAttribute("movieDetailRate",movieDetailRate);
		
		return ".movie.movieDetailView";
	}
}
 