package com.koreait.movie.model.repository.premovie;

import java.util.List;


import com.koreait.movie.domain.Premovie;

public interface PremovieDAO {
	public void insert(Premovie premovie);
	public void deleteAll();
	public List selectAll();
	public void deleteAllInfo();
}
