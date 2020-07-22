package com.jhta.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.jhta.project.dao.MovieListDao;
import com.jhta.project.vo.AllByMRateVo;
import com.jhta.project.vo.AllByMReviewVo;
import com.jhta.project.vo.AllMoviesVo;
import com.jhta.project.vo.MovieDetailVo;

@Service
public class MovieListService {
	@Autowired
	MovieListDao mListDao;
	//예매율순으로 상영 영화 불러오기
	public List<AllMoviesVo> showAllMovies(){
		System.out.println("SERVICE진입");
		return mListDao.showAllMovies();
	}
	/*
	//평점순으로 상영 영화 불러오기
	public List<AllByMRateVo> moviesByMRate(int filmNum){
		System.out.println("평점순 상영영화 service");
		return mListDao.moviesByMRate(filmNum);
	}*/
	
	//관람평순으로 상영 영화 불러오기
	public List<AllByMReviewVo> moviesByMReview() {
		return mListDao.moviesByMReview();
	}
	
	//영화 상세정보 클릭 시 장르,감독,개봉일,출연진,줄거리 가져오기
	public MovieDetailVo showMovieDetailInfo(int filmNum) {
		return mListDao.showMovieDetailInfo(filmNum);
	}
}
