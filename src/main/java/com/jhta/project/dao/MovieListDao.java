package com.jhta.project.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.jhta.project.vo.AllMoviesVo;


@Repository
public class MovieListDao {
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE="com.jhta.mybatis.mapper.film";
	public List<AllMoviesVo> showAllMovies(){
		System.out.println("DAOź��");
		return sqlSession.selectList(NAMESPACE+".showAllMovies");
	}
}
