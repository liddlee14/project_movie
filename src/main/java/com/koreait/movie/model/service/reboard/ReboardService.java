package com.koreait.movie.model.service.reboard;

import java.util.List;

import com.koreait.movie.domain.Reboard;

public interface ReboardService {
	public void insert(Reboard reboard);
	public List selectAll();
	public Reboard select(int reboard_id);
	public void update(Reboard reboard);
	public void delete(int reboard_id);
	

	public void reply(Reboard reboard);
}
