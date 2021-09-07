package com.koreait.movie.model.service.movieinfo;

import java.util.List;

import com.koreait.movie.domain.MovieInfo;

public interface MovieInfoService {
	public void insert();
	public void update(MovieInfo movieinfo);
	public void deleteAll();
	public List selectAll();
	public MovieInfo select(String title);
}
