package com.jhta.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jhta.project.dao.MovieSawDao;
import com.jhta.project.vo.MovieSawVo;

@Service
public class MovieSawService {
	@Autowired
	private MovieSawDao movieSawDao;

	public List<MovieSawVo> moviesawList(int memNum){
		return movieSawDao.moviesawList(memNum);
	}
	public int movieCount(){
		return movieSawDao.movieCount();
	}
	
}
