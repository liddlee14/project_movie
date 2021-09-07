package com.koreait.movie.model.service.Reserv;

import java.util.List;

import com.koreait.movie.domain.Reserv;

public interface ReservService {
   public void insert(Reserv reserv);
   public List selectAll();
   public List select(int client_id);
   public void delete(int reserv_id);
   public void update(String seat);
   public void delete1(int client_id);
}