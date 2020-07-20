package com.jhta.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jhta.project.service.MovieListService;
import com.jhta.project.vo.AllMoviesVo;
import com.jhta.project.vo.MoviesInfoVo;

@Controller
public class MovieList {
	@Autowired
	MovieListService movieListService;
	
	//영화 nav클릭했을 때 처음으로 터지는 함수(관객수순으로 상영중 영화 불러오기)
	@RequestMapping("/movie/showAllMovies.do")
	public String showAllMovies(Model model){
		System.out.println("CONTROLLERź��");
		List<AllMoviesVo> allMovieList=movieListService.showAllMovies();
		System.out.println(allMovieList.get(0).getFilmName()+"11111111");
		System.out.println(allMovieList.get(1).getFilmName()+"222222");
		model.addAttribute("allMovieList", allMovieList);
		return ".movie.showMovies";
	}
	
	//관람평순으로 상영 영화 불러오기
	public String moviesByMReview() {
		List<AllMoviesVo> allMovieList=movieListService.showAllMovies();
		return ".movie.showMovies";
	}
	
	//영화 상세정보 클릭 시 장르,감독,개봉일,출연진,줄거리 가져오기
	public String moviesInfo(int filmNum) {
		List<MoviesInfoVo> moviesInfoList=movieListService.moviesInfo(filmNum);
		return ".movie.moviesInfo";
	}
}
 