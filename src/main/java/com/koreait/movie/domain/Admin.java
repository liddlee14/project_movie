package com.koreait.movie.domain;

import lombok.Data;

@Data
public class Admin {
	   private int admin_id;
	   private String host_id;
	   private String name;
	   private String password;
	   private String birth;
	   private String email;
	   private String phone;
	}
