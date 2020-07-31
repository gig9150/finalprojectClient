package com.jhta.project.controller;

import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.google.gson.Gson;
import com.jhta.project.service.RestService;
import com.jhta.project.vo.AllMoviesVo;
import com.jhta.project.vo.MovieDetailVo;

@Controller
public class MovieListController {
	@Autowired
	private RestService service;
	
	//영화 nav클릭했을 때 처음으로 터지는 함수(예매율순으로 상영 영화 불러오기)
	@RequestMapping("/movie/showAllMovies.do")
	public String showAllMovies(Model model){
		String url="http://localhost:9090/projectdb/movie/showAllMovies.do";
		String code=service.get(url).trim();
		Gson gson=new Gson();
		AllMoviesVo[] array= gson.fromJson(code, AllMoviesVo[].class);
		List<AllMoviesVo> allMovieList=Arrays.asList(array);
		model.addAttribute("allMovieList", allMovieList);
		return ".movie.showMovies";
	}
	
	//영화 평점순 클릭했을 때 함수(평점순으로 상영 영화 불러오기)
	@RequestMapping("/movie/showAllMoviesMRate.do")
	public String showAllMoviesMRate(Model model){
		String url="http://localhost:9090/projectdb/movie/showAllMoviesMRate.do";
		String code=service.get(url).trim();
		Gson gson=new Gson();
		AllMoviesVo[] array= gson.fromJson(code, AllMoviesVo[].class);
		List<AllMoviesVo> allMovieList=Arrays.asList(array);
		model.addAttribute("allMovieList", allMovieList);
		return ".movie.showMovies";
	}
	
	
	
	//영화 상세정보 클릭 시 장르,감독,개봉일,출연진,줄거리 가져오기
	@RequestMapping("/movie/movieDetailView.do")
	public String showMovieDetailInfo(Model model,int filmNum) {
		Gson gson=new Gson();
		//영화디테일정보vo
		String infoUrl="http://localhost:9090/projectdb/movie/detailInfo.do?filmNum="+filmNum;
		String sMovieDetailVo=service.get(infoUrl).trim();
		MovieDetailVo movieDetailVo=gson.fromJson(sMovieDetailVo, MovieDetailVo.class);
		
		//영화예매율디테일정보vo
		String movieDetailRateUrl="http://localhost:9090/projectdb/movie/movieDetailRate.do?filmNum="+filmNum;
		String smovieDetailRate=service.get(movieDetailRateUrl).trim();
		AllMoviesVo movieDetailRate=gson.fromJson(smovieDetailRate, AllMoviesVo.class);
		
		//총 관람평 갯수 
		String reveiwCountUrl="http://localhost:9090/projectdb/movie/reviewCount.do?filmNum="+filmNum;
		String sreviewCount=service.get(reveiwCountUrl).trim();
		int reviewCount=Integer.parseInt(sreviewCount);
		
		//영화 평점
		String movieGradeUrl="http://localhost:9090/projectdb/movie/movieGrade.do?filmNum="+filmNum;
		String smovieGrade = service.get(movieGradeUrl).trim();
		int movieGrade=Integer.parseInt(smovieGrade);
		
		model.addAttribute("movieDetailVo",movieDetailVo);
		model.addAttribute("movieDetailRate",movieDetailRate);
		model.addAttribute("reviewCount",reviewCount);
		model.addAttribute("movieGrade",movieGrade);
		return ".movie.movieDetailView";
	}
}
 