package com.koreait.movie.model.service.premovie;

import java.util.List;

import com.koreait.movie.domain.Premovie;

public interface PremovieService {
	public void insert();
	public void deleteAll();
	public List selectAll();
	public void deleteAllInfo();
}
