package com.koreait.movie.model.repository.movieinfo;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.koreait.movie.domain.CgvChart;
import com.koreait.movie.domain.MovieInfo;


@Repository
public class MybatisMovieInfoDAO implements MovieInfoDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	public void update(MovieInfo movieinfo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteAll() {
		sqlSessionTemplate.delete("MovieInfo.deleteAll");
		
	}

	@Override
	public List selectAll() {
		return sqlSessionTemplate.selectList("MovieInfo.selectAll");
		
	}

	@Override
	public void insert(MovieInfo movieinfo) {
		sqlSessionTemplate.insert("MovieInfo.insert", movieinfo);
		
	}

	@Override
	public MovieInfo select(String title) {
		return sqlSessionTemplate.selectOne("MovieInfo.select", title);
	}

}
