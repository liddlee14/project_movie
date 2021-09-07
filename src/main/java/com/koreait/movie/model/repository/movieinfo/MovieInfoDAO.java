package com.koreait.movie.model.repository.movieinfo;

import java.util.List;


import com.koreait.movie.domain.MovieInfo;

public interface MovieInfoDAO {
	public void insert(MovieInfo movieinfo);
	public void update(MovieInfo movieinfo);
	public void deleteAll();
	public List selectAll();
	public MovieInfo select(String title);
}
