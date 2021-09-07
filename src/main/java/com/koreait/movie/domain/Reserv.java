package com.koreait.movie.domain;

import lombok.Data;

@Data
public class Reserv {
	private int Reserv_id; 
	private int client_id;
	private String movie;
	private String theater;
	private String date;
	private String time;
	private String seat;
	private String area;
}
