package com.koreait.movie.model.service.Reserv;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.koreait.movie.domain.Reserv;
import com.koreait.movie.model.repository.reserv.ReservDAO;
@Service
public class ReservServiceImpl implements ReservService{
   @Autowired
   private ReservDAO reservDAO;
   
   @Override
   public void insert(Reserv reserv) {
      reservDAO.insert(reserv);
      
   }

   @Override
   public List selectAll() {
     
      return reservDAO.selectAll();
   }

   @Override
   public List select(int client_id) {
     
      return reservDAO.select(client_id);
   }

   @Override
   public void delete(int reserv_id) {
     reservDAO.delete(reserv_id);
      
   }

   @Override
   public void update(String seat) {
      reservDAO.update(seat);
      
   }

	@Override
	public void delete1(int client_id) {
		reservDAO.delete1(client_id);
		
	}

}