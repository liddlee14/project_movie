package com.koreait.movie.model.repository.moviechart;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.koreait.movie.domain.CgvChart;


@Repository
public class MybatisCgvChartDAO implements CgvChartDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	public void update(CgvChart cgvchart) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteAll() {
		sqlSessionTemplate.delete("CgvChart.deleteAll");
		
	}

	@Override
	public List selectAll() {
		return sqlSessionTemplate.selectList("CgvChart.selectAll");
		
	}

	@Override
	public void insert(CgvChart cgvchart) {
		sqlSessionTemplate.insert("CgvChart.insert", cgvchart);
		
	}

	@Override
	public void deleteAllInfo() {
		sqlSessionTemplate.delete("CgvChart.deleteAllInfo");
		
	}

}
