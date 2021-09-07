package com.koreait.movie.model.repository.comment;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.koreait.movie.domain.Client;
import com.koreait.movie.domain.Comment;
import com.koreait.movie.exception.DMLException;

@Repository
public class MybatisCommentDAO implements CommentDAO{

	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
		public void regist(Comment comment) throws DMLException {
			int result=sqlSessionTemplate.insert("Comment.insert",comment);
			if(result==0) {
				throw new DMLException("회원가입에 실패하셨습니다.");
			}
		}

	@Override
	public List selectAll() {
		return sqlSessionTemplate.selectList("Comment.selectAll");
	}
		
	
	

}
