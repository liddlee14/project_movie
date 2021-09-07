package com.koreait.movie.model.repository.client;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.koreait.movie.domain.Client;
import com.koreait.movie.exception.DMLException;
import com.koreait.movie.exception.MemberExistException;

@Repository
public class MybatisClientDAO implements ClientDAO{
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate; 
	
	
	@Override
	public Client login(Client client) throws MemberExistException{
		Client obj=sqlSessionTemplate.selectOne("Client.login", client);
		if(obj==null) {
			throw new MemberExistException("회원 정보가 올바르지 않습니다.");
		}
		
		return obj;
	}

	@Override
	public void regist(Client client) throws DMLException {
		int result=sqlSessionTemplate.insert("Client.insert",client);
		if(result==0) {
			throw new DMLException("회원가입에 실패하셨습니다.");
		}
	}

	@Override
	public void update(Client client) throws DMLException {
		int result=sqlSessionTemplate.update("Client.update",client);
		if(result==0) {
			throw new DMLException("수정에 실패하셨습니다.");
		}
	}


	@Override
	public void delete(int client_id) throws DMLException {
		int result=sqlSessionTemplate.delete("Client.delete",client_id);
		if(result==0) {
			throw new DMLException("삭제에 실패하셨습니다.");
		}
	}
	
	@Override
	public List selectAll() {
		
		return sqlSessionTemplate.selectList("Client.selectAll");
	}

	@Override
	public Client select(int client_id) {
		return sqlSessionTemplate.selectOne("Client.select",client_id);
	}

	@Override
	public Client passCheck(int client_id) {
		
		return sqlSessionTemplate.selectOne("Client.passCheck", client_id);
	}

	@Override
	public void updatePass(Client client) {
		sqlSessionTemplate.update("Client.updatePass", client);
		
	}

	


	

}