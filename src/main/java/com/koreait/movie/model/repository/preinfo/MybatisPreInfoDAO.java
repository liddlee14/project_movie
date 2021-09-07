package com.koreait.movie.model.repository.preinfo;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.koreait.movie.domain.MovieInfo;
import com.koreait.movie.domain.PreInfo;


@Repository
public class MybatisPreInfoDAO implements PreInfoDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;



	@Override
	public void deleteAll() {
		sqlSessionTemplate.delete("PreInfo.deleteAll");
		
	}

	@Override
	public List selectAll() {
		return sqlSessionTemplate.selectList("PreInfo.selectAll");
		
	}

	@Override
	public void insert(PreInfo preinfo) {
		sqlSessionTemplate.insert("PreInfo.insert", preinfo);
		
	}

	@Override
	public PreInfo select(String p_title) {
		return sqlSessionTemplate.selectOne("PreInfo.select",  p_title);
	}

	@Override
	public void update(PreInfo preinfo) {
		// TODO Auto-generated method stub
		
	}

}
