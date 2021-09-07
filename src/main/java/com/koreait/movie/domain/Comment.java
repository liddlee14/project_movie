package com.koreait.movie.domain;

import lombok.Data;

@Data
public class Comment {
	private int comment_id;
	
	private String client_id;
	private String c_title;
	private String content;
	private String regdate;
	private String reply;
}
