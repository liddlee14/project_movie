package com.koreait.movie.domain;

import lombok.Data;

@Data
public class CgvChart {

	private int chart_id;
	private String rank;
	private String img;
	private String title;
	private String date; // 개봉일

}