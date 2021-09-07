package com.koreait.movie.model.repository.reserv;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.koreait.movie.domain.Reserv;
@Repository
public class MybatisReservDAO implements ReservDAO{
   @Autowired
   private SqlSessionTemplate sqlSessionTemplate;
   
   @Override
   public void insert(Reserv reserv) {
      sqlSessionTemplate.insert("Reserv.insert",reserv);
      
   }

   @Override
   public List selectAll() {
      
      return sqlSessionTemplate.selectList("Reserv.selectAll");
   }

   @Override
   public List select(int client_id) {
     
      return sqlSessionTemplate.selectList("Reserv.select",client_id);
   }

   @Override
   public void delete(int reserv_id) {
	   sqlSessionTemplate.delete("Reserv.delete",reserv_id);
      
   }

   @Override
   public void update(String seat) {
      sqlSessionTemplate.update("Reserv.updateSeat", seat);
      
   }

	@Override
	public void delete1(int client_id) {
		sqlSessionTemplate.delete("Reserv.delete1",client_id);
		
	}

}