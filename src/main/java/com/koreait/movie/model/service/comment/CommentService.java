package com.koreait.movie.model.service.comment;

import java.util.List;

import com.koreait.movie.domain.Comment;

public interface CommentService {
	
		public void regist(Comment comment);
		public List selectAll();
}
