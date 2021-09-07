package com.koreait.movie.domain;

import lombok.Data;

@Data
public class Reboard {
	private int reboard_id;
	private String title;
	private String writer;
	private String content;
	private String regdate;
	private int hit;
	private int team;
	private int step;
	private int depth;
	
	
}
