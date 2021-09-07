package com.koreait.movie.model.service.moviechart;

import java.util.List;

import com.koreait.movie.domain.CgvChart;

public interface CgvChartService {
	public void insert();
	public void update(CgvChart moviechart);
	public void deleteAll();
	public List selectAll();
	public void deleteAllInfo();
}
