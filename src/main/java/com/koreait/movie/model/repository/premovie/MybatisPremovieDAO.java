package com.koreait.movie.model.repository.premovie;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.koreait.movie.domain.Premovie;

@Repository
public class MybatisPremovieDAO implements PremovieDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public void insert(Premovie premovie) {
		sqlSessionTemplate.insert("Premovie.insert",premovie);
		
	}

	@Override
	public void deleteAll() {
		sqlSessionTemplate.delete("Premovie.deleteAll");
		
	}

	@Override
	public List selectAll() {
		return sqlSessionTemplate.selectList("Premovie.selectAll");
	}

	@Override
	public void deleteAllInfo() {
		sqlSessionTemplate.delete("Premovie.deleteAllInfo");
		
	}

}
