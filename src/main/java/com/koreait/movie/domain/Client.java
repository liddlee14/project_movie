package com.koreait.movie.domain;

import lombok.Data;

@Data
public class Client {
   private int client_id;
   private String user_id;
   private String name;
   private String password;
   private String birth;
   private String email;
   private String phone;
}