package com.koreait.movie.model.repository.comment;

import java.util.List;

import com.koreait.movie.domain.Comment;

public interface CommentDAO {
	public void regist(Comment comment);
	public List selectAll();
}
