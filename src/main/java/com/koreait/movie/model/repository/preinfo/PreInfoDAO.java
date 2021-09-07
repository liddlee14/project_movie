package com.koreait.movie.model.repository.preinfo;

import java.util.List;


import com.koreait.movie.domain.MovieInfo;
import com.koreait.movie.domain.PreInfo;

public interface PreInfoDAO {
	public void insert(PreInfo preinfo);
	public void update(PreInfo preinfo);
	public void deleteAll();
	public List selectAll();
	public PreInfo select(String p_title);
}
