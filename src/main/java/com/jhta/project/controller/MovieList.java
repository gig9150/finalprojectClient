package com.jhta.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jhta.project.service.MovieListService;
import com.jhta.project.vo.AllByMRateVo;
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
		List<AllByMRateVo> moviesByMRate=movieListService.moviesByMRate();
		System.out.println("여기까지오나??????????");
		model.addAttribute("allMovieList", allMovieList);
		model.addAttribute("moviesByMRate", moviesByMRate);
		System.out.println(moviesByMRate+"평점순 vo에 담겨있는 값");
		System.out.println(moviesByMRate.get(0).getmRate()+"3333333");
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
 