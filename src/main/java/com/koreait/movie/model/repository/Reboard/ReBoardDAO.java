package com.koreait.movie.model.repository.Reboard;

import java.util.List;

import com.koreait.movie.domain.Reboard;

public interface ReBoardDAO {
	public void insert(Reboard reboard);
	public List selectAll();
	public Reboard select(int reboard_id);
	public void update(Reboard reboard);
	public void delete(int reboard_id);
	

	public void reply(Reboard reboard);
	
	
}
