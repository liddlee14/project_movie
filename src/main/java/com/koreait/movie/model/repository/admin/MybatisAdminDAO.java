package com.koreait.movie.model.repository.admin;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.koreait.movie.domain.Admin;
import com.koreait.movie.exception.DMLException;
import com.koreait.movie.exception.MemberExistException;

@Repository
public class MybatisAdminDAO implements AdminDAO{
   
   @Autowired
   private SqlSessionTemplate sqlSessionTemplate;
   
   @Override
   public Admin login(Admin admin) throws MemberExistException {
      Admin obj=sqlSessionTemplate.selectOne("Admin.login",admin);
      if(obj==null) {
         throw new MemberExistException("관리자 정보가 올바르지 않습니다");
      }
      return obj;
   }
   
   @Override
   public void regist(Admin admin) throws DMLException {
      
      int result=sqlSessionTemplate.insert("Admin.insert",admin);
      if(result==0) {
         throw new DMLException("등록정보가 올바르지 않습니다");
      }
      
   }

   @Override
   public void update(Admin admin) throws DMLException {
      int result=sqlSessionTemplate.update("Admin.update",admin);
      if(result==0) {
         throw new DMLException("등록정보가 올바르지 않습니다");
      }
   }

   @Override
   public void delete(int admin_id) throws DMLException  {
      int result=sqlSessionTemplate.delete("Admin.delete",admin_id);
      
   }

   @Override
   public List selectAll() {
      
      return sqlSessionTemplate.selectList("Admin.selectAll");
   }

   @Override
   public Admin select(int admin_id) {
      
      return sqlSessionTemplate.selectOne("Admin.select", admin_id);
   }
   
}