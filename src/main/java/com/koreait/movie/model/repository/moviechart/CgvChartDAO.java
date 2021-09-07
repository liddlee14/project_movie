package com.koreait.movie.model.repository.moviechart;

import java.util.List;

import com.koreait.movie.domain.CgvChart;

public interface CgvChartDAO {
	public void insert(CgvChart cgvchart);
	public void update(CgvChart cgvchart);
	public void deleteAll();
	public List selectAll();
	public void deleteAllInfo();
}
