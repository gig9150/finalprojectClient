package com.jhta.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jhta.project.service.MovieListService;
import com.jhta.project.vo.AllMoviesVo;

@Controller
public class MovieList {
	@Autowired
	MovieListService movieListService;
	@RequestMapping("/movie/showAllMovies.do")
	public String showAllMovies(Model model){
		System.out.println("CONTROLLER┼║┤┘");
		List<AllMoviesVo> allMovieList=movieListService.showAllMovies();
		System.out.println(allMovieList.get(0).getFilmName()+"11111111");
		System.out.println(allMovieList.get(1).getFilmName()+"222222");
		model.addAttribute("allMovieList", allMovieList);
		return ".movie.showMovies";
	}
}
 