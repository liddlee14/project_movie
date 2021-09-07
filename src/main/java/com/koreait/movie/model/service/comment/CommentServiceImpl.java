package com.koreait.movie.model.service.comment;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.koreait.movie.domain.Comment;
import com.koreait.movie.model.repository.comment.CommentDAO;

@Service
public class CommentServiceImpl implements CommentService {
	
	@Autowired
	private CommentDAO commentDAO;

	@Override
	public void regist(Comment comment) {
		
			
			commentDAO.regist(comment);
		
		
	}

	@Override
	public List selectAll() {
		// TODO Auto-generated method stub
		return commentDAO.selectAll();
	}



	


}
