package com.koreait.movie.model.repository.board;

import java.util.List;

import com.koreait.movie.domain.Board;

public interface BoardDAO {
	public List selectAll();
	public Board select(int board_id);
	public void insert(Board board);
	public void update(Board board);
	public void delete(int board_id);
}