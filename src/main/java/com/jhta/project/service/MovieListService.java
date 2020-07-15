package com.jhta.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.jhta.project.dao.MovieListDao;
import com.jhta.project.vo.AllMoviesVo;

@Service
public class MovieListService {
	@Autowired
	MovieListDao mListDao;
	public List<AllMoviesVo> showAllMovies(){
		System.out.println("SERVICEÅº´Ù");
		return mListDao.showAllMovies();
	}
}
