package com.jhta.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.jhta.project.dao.MovieListDao;
import com.jhta.project.vo.AllByMReviewVo;
import com.jhta.project.vo.AllMoviesVo;
import com.jhta.project.vo.MoviesInfoVo;

@Service
public class MovieListService {
	@Autowired
	MovieListDao mListDao;
	public List<AllMoviesVo> showAllMovies(){
		System.out.println("SERVICEź��");
		return mListDao.showAllMovies();
	}
	
	//관람평순으로 상영 영화 불러오기
	public List<AllByMReviewVo> moviesByMReview() {
		return mListDao.moviesByMReview();
	}
	
	//영화 상세정보 클릭 시 장르,감독,개봉일,출연진,줄거리 가져오기
	public List<MoviesInfoVo> moviesInfo(int filmNum) {
		return mListDao.moviesInfo(filmNum);
	}
}
